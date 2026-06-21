.class public final Lcom/motorola/camera/saving/SaveImageService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBgCaptureRecords:Lcom/google/android/gms/tasks/zzb;

.field public mCaptureQueueListener:Lcom/motorola/camera/saving/SaveImageService$CaptureQueueListener;

.field public final mForegroundProcessingMediaDataMap:Ljava/util/Map;

.field public final mImageStyleProcessingExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mMaxAvailableMemory:J

.field public final mMediaLock:Ljava/lang/Object;

.field public mMemoryAvailableListener:Landroidx/compose/runtime/OffsetApplier;

.field public final mPortraitRecords:Ljava/util/Map;

.field public final mPostViewCaptureRecords:Ljava/util/Map;

.field public volatile mProcessingHandler:Landroid/os/Handler;

.field public final mProcessingRecords:Ljava/util/Map;

.field public final mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

.field public volatile mServiceHandler:Landroid/os/Handler;

.field public mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mPortraitRecords:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mBgCaptureRecords:Lcom/google/android/gms/tasks/zzb;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mForegroundProcessingMediaDataMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mPostViewCaptureRecords:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mMediaLock:Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mMaxAvailableMemory:J

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SaveImageService"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "processingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, v0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :cond_0
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mImageStyleProcessingExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static addBgRecord(Lcom/motorola/camera/CameraData;)V
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v2, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "SaveImageService"

    const-string v1, "CameraData uri is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v4, v3

    new-instance v3, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    move-object v6, v4

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v4

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v9

    iget v11, v9, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v9

    iget v12, v9, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v9

    iget v13, v9, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v9

    iget-wide v14, v9, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v9

    iget-wide v9, v9, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v0, "THUMB_PATH"

    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v0, "GLOBAL_UUID"

    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    move-wide/from16 v16, v9

    const-wide/16 v9, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v3 .. v27}, Lcom/motorola/camera/background/provider/BgCaptureRecord;-><init>(JLjava/lang/String;JJIIIJJIZLjava/lang/String;IIIILjava/lang/String;J)V

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addWatermarkToImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Z)V
    .locals 17

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    iget-object v3, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "SaveImageService"

    const-string v1, "Is RAW data, not support watermark!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v0, "SaveImageService"

    const-string v1, "Jpeg data is null, won\'t add watermark!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object v3, Lcom/motorola/camera/watermark/WatermarkEditor;->processedUris:Ljava/util/Set;

    const-class v3, Lcom/motorola/camera/watermark/WatermarkEditor;

    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v6}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v13

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_STYLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    sget-object v8, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;

    invoke-virtual {v8, v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Companion;->fromName(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    move-result-object v15

    invoke-static {v15}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getWatermarkOptionSnapshot(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    move-result-object v7

    invoke-static {v7, v15}, Lcom/motorola/camera/watermark/WatermarkEditor;->isSignatureEnabled(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setSignatureEnabled(Z)V

    iget-object v8, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v9, v8, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v10, v10, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget-object v8, v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    iget v9, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    invoke-static {v8, v9, v10}, Lcom/motorola/camera/watermark/WatermarkEditor;->getPhotoCaptureInfo(Lcom/motorola/camera/photometadata/PhotoMetadata;II)Ljava/lang/String;

    move-result-object v12

    iget-object v8, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v8, v8, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-wide v8, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-static {v8, v9}, Lcom/motorola/camera/watermark/WatermarkEditor;->getDateString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9}, Lcom/motorola/camera/watermark/WatermarkEditor;->getTimeString(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/motorola/camera/Util;->getProductDisplay()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/watermark/WatermarkEditor;->convertProductName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v7

    new-instance v7, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;

    move-object v14, v9

    invoke-static {}, Lcom/motorola/camera/watermark/WatermarkEditor;->getSignatureText()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v14

    const/4 v14, 0x1

    move-object/from16 v5, v16

    invoke-direct/range {v7 .. v14}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v8, Lcom/motorola/camera/watermark/WatermarkBuilder;

    invoke-direct {v8, v6}, Lcom/motorola/camera/watermark/WatermarkBuilder;-><init>(Landroid/content/Context;)V

    iput-object v15, v8, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkStyle:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;

    iget v6, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    iget v9, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    iget v10, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    iput v6, v8, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageWidth:I

    iput v9, v8, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageHeight:I

    iput v10, v8, Lcom/motorola/camera/watermark/WatermarkBuilder;->imageOrientation:I

    iput-object v7, v8, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkContent:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;

    iput-object v5, v8, Lcom/motorola/camera/watermark/WatermarkBuilder;->watermarkOptions:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    invoke-virtual {v8}, Lcom/motorola/camera/watermark/WatermarkBuilder;->build()[Landroid/graphics/Bitmap;

    move-result-object v5

    iget v6, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    if-eqz v6, :cond_5

    const/4 v7, 0x0

    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_5

    aget-object v8, v5, v7

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v8, v6}, Lcom/motorola/camera/watermark/WatermarkEditor;->rotateAndScaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eq v9, v8, :cond_4

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_4
    :goto_2
    aput-object v9, v5, v7

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    move/from16 v6, p1

    invoke-static {v0, v13, v5, v6}, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService;->embedWatermarksToJpeg(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Z[Landroid/graphics/Bitmap;Z)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/motorola/camera/watermark/WatermarkEditor;->releaseBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_9

    :goto_5
    :try_start_3
    const-string v5, "WatermarkEditor"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/motorola/camera/watermark/WatermarkEditor;->releaseBitmap(Landroid/graphics/Bitmap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :cond_7
    monitor-exit v3

    if-nez v5, :cond_8

    const-string v0, "SaveImageService"

    const-string v1, "Add watermark failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "SaveImageService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adding watermark to JPG image totally took: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_9
    return-void

    :goto_7
    :try_start_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/motorola/camera/watermark/WatermarkEditor;->releaseBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_8

    :cond_a
    throw v0

    :goto_9
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public static applyColorTone(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V
    .locals 12

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    iget-object v2, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExtraOutput:Landroid/net/Uri;

    if-nez v4, :cond_5

    if-eqz v3, :cond_5

    iget-object v4, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v5, "PANO_SAVE_OUTPUT_BY_ENGINE"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v4, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    if-nez v4, :cond_5

    :cond_1
    iget-boolean v4, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAIPersonalColorTone:Z

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget v6, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAIPersonalColorToneModuleType:I

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_AI_PERSONAL_COLOR_TONE_KEEP_FILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    invoke-static {p0, v3}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    goto :goto_0

    :cond_2
    move-object v7, v8

    :goto_0
    sget-object v9, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    :try_start_0
    sget-object v9, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    invoke-virtual {v9}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->getPhotosProviderCaller()Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    move-result-object v9

    invoke-static {v9, v6, v1, v3}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->applyColorTone(Lcom/motorola/camera/provider/photos/PhotosProviderCaller;ILcom/motorola/camera/saving/FileName;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v9, "AIPersonalColorToneManager"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    sget-object v9, Lcom/motorola/camera/CameraKpi$KPI;->AI_PERSONAL_COLOR_TONE_PROCESSING_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v5, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    monitor-enter v3

    :try_start_1
    invoke-virtual {v3, v9, v4, v4, v5}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;Ljava/lang/Long;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    sget-object v3, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v4, v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {v3, v4}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->removeFromProcessingList(I)V

    const-wide v3, 0x100000000L

    if-nez v8, :cond_3

    const-string v5, "SaveImageService"

    const-string v6, "AI Personal Color Tone failed, saving original jpeg"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x4

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v3, v4}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    iput v6, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mAIColorToneModuleType:I

    invoke-virtual {v0, v8}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    const/4 v5, 0x3

    :goto_2
    iget-object v6, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "ANALYTICS_AI_PERSONAL_COLOR_TONE_STATE"

    invoke-virtual {v6, v8, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_AI_PERSONAL_COLOR_TONE_KEEP_FILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v7, :cond_5

    new-instance v5, Lcom/motorola/camera/saving/FileName;

    invoke-direct {v5, v1}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    invoke-virtual {v5, v3, v4}, Lcom/motorola/camera/saving/FileName;->removeAttribute(J)Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v5}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/BurstShotFileUtils;->FORMAT_BURST_SUFFIX:Ljava/lang/String;

    const-string v3, "_BURST"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "alternate_shot_index_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->values()[Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/camera/BurstShotFileUtils;->generateBurstSuffix(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    :cond_4
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    check-cast v0, Lcom/motorola/camera/storage/backend/MediaStoreFile;

    invoke-virtual {v5}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/motorola/camera/storage/backend/MediaStoreFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->createMediaFileWithFallback(Lcom/motorola/camera/storage/MediaFile;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v0

    invoke-static {v7, v0, p0}, Lcom/motorola/camera/saving/SaveImageService;->writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_5
    :goto_3
    return-void
.end method

.method public static canSave(IILcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;)Z
    .locals 8

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    monitor-enter v1

    :try_start_0
    iget-wide v2, v0, Lcom/motorola/camera/saving/SaveImageService;->mMaxAvailableMemory:J

    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-wide v5, v4, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->mMemoryUsed:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v4

    sub-long/2addr v2, v5

    int-to-long v4, p0

    int-to-long v6, p1

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    new-instance v3, Landroidx/compose/runtime/OffsetApplier;

    invoke-direct {v3, p0, p1, p2}, Landroidx/compose/runtime/OffsetApplier;-><init>(IILcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;)V

    iput-object v3, v0, Lcom/motorola/camera/saving/SaveImageService;->mMemoryAvailableListener:Landroidx/compose/runtime/OffsetApplier;

    new-instance p0, Lcom/motorola/camera/saving/SaveImageService$CaptureQueueListener;

    invoke-direct {p0, p1}, Lcom/motorola/camera/saving/SaveImageService$CaptureQueueListener;-><init>(I)V

    iput-object p0, v0, Lcom/motorola/camera/saving/SaveImageService;->mCaptureQueueListener:Lcom/motorola/camera/saving/SaveImageService$CaptureQueueListener;

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->CAPTURE_QUEUE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static changeExpAndIso(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)V
    .locals 10

    iget-wide v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mLongExposureShutterTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mLongExposureStartTime:J

    sub-long/2addr v0, v4

    iget-wide v4, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mLongExposureShutterTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v8, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mLongExposureShutterTime:J

    cmp-long v5, v0, v8

    if-gez v5, :cond_1

    div-long/2addr v0, v6

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    const-string v1, "ExposureTime"

    invoke-virtual {v0, v1, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mLongExposureIso:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ISOSpeedRatings"

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray(Z)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "SaveImageService"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static checkFinishBackupImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z
    .locals 7

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    const-string v1, "SaveImageService"

    const/4 v2, 0x0

    if-nez v4, :cond_0

    const-string p0, "checkFinishBackupImage: MediaFile is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    move v3, v2

    invoke-interface {v4}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v2

    if-nez v2, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v3

    :try_start_0
    invoke-virtual {v2}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getPendingMediaUris()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "checkFinishBackupImage: saving backup image as final image for captureRecord "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v6, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    new-instance v0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;

    const/4 v5, 0x5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v5

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method

.method public static commitKpiRecord(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 6

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v1, "CAPTURE_TIMESTAMP"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/saving/CaptureHolder;

    iget-wide v4, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    iget-object p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p0, :cond_1

    iget-wide v4, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mTimeStamp:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :cond_1
    :goto_0
    cmp-long p0, v0, v2

    if-eqz p0, :cond_2

    cmp-long p0, v4, v2

    if-eqz p0, :cond_2

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_ALWAYS_LOG_SHUTTER_LAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sub-long/2addr v4, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SHUTTER_LAG_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)V

    :cond_2
    return-void
.end method

.method public static commitTotalCaptureTimeKPI(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v1, "ON_UP"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mTotalCaptureTime:J

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_CAPTURE_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;Ljava/lang/Long;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->onCaptureStopped(I)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public static correctExifInfo(Ljava/io/FileDescriptor;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;ZZ)V
    .locals 5

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy:MM:dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "kk/1,mm/1,ss/1"

    invoke-direct {v2, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy:MM:dd HH:mm:ss.SSS"

    invoke-direct {v3, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :try_start_0
    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v0, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/FileDescriptor;)V

    const-string p0, "DateTime"

    iget-wide v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p0, "DateTimeDigitized"

    iget-wide v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "DateTimeOriginal"

    iget-wide v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setLocationAttributes(Landroid/location/Location;)V

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->addDisplayP3App2ByteArray()V

    :cond_1
    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "exception when correctExifInfo "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SaveImageService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static createDng(Ljava/nio/ByteBuffer;Ljava/io/FileOutputStream;Landroid/hardware/camera2/TotalCaptureResult;Landroid/location/Location;ILjava/lang/String;II)V
    .locals 7

    invoke-static {p5}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p5

    new-instance v1, Landroid/hardware/camera2/DngCreator;

    invoke-direct {v1, p5, p2}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {v1, p3}, Landroid/hardware/camera2/DngCreator;->setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1, p4}, Landroid/hardware/camera2/DngCreator;->setOrientation(I)Landroid/hardware/camera2/DngCreator;

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, p6, p7}, Landroid/util/Size;-><init>(II)V

    const-wide/16 v5, 0x0

    move-object v4, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(Ljava/io/OutputStream;Landroid/util/Size;Ljava/nio/ByteBuffer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/hardware/camera2/DngCreator;->close()V

    return-void

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Landroid/hardware/camera2/DngCreator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public static cutGestureAndSaveVideo(Ljava/util/List;JJLcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;Lcom/motorola/camera/storage/MediaFile;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-wide/16 v0, 0x1388

    cmp-long v2, p3, v0

    if-lez v2, :cond_3

    const-wide/32 v2, 0xea60

    cmp-long p3, p3, v2

    if-gez p3, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result p3

    if-nez p3, :cond_3

    iget-wide p3, p5, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->mGestureStopTime:J

    const-wide/16 v2, 0x0

    cmp-long p3, p3, v2

    if-gtz p3, :cond_0

    iget-object p3, p5, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->mGesturePauseTime:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    :cond_0
    cmp-long p3, p1, v0

    if-gtz p3, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    :cond_1
    new-instance v0, Lcom/motorola/camera/CameraData;

    iget-wide v1, p5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    invoke-interface {p6}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v3

    iget-object p3, p5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {p3}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;I)V

    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance p4, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;

    const/4 p5, 0x1

    invoke-direct {p4, v0, p5}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/CameraData;I)V

    invoke-virtual {p3, p4}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    new-instance p3, Lcom/motorola/camera/saving/FileName;

    sget-object p4, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p3, p4, v0, v1}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    :try_start_0
    sget-object p4, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    invoke-static {p3}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile$default(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object p3

    invoke-interface {p6}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object p4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4, p0, p1}, Lcom/motorola/camera/saving/SaveImageService;->cutGestureInVideo(Ljava/io/File;Landroid/net/Uri;Ljava/util/List;Ljava/lang/Long;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p3, p6}, Lcom/motorola/camera/storage/StorageUtils;->copyTemporaryFileToMediaFile(Ljava/io/File;Lcom/motorola/camera/storage/MediaFile;)Z

    :cond_2
    invoke-static {p3}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    return-void
.end method

.method public static cutGestureInVideo(Ljava/io/File;Landroid/net/Uri;Ljava/util/List;Ljava/lang/Long;)Z
    .locals 19

    const-string v0, "SaveImageService"

    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v5, p1

    invoke-virtual {v1, v3, v5, v4}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string/jumbo v3, "video"

    invoke-static {v1, v3}, Lcom/motorola/camera/mediacodec/CodecUtil;->findTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v4, "audio"

    invoke-static {v1, v4}, Lcom/motorola/camera/mediacodec/CodecUtil;->findTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    const-wide/16 v9, 0xfa0

    const-wide/16 v11, 0x3e8

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long v9, v13, v9

    mul-long/2addr v9, v11

    invoke-virtual {v1, v9, v10, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    mul-long/2addr v13, v11

    invoke-virtual {v1, v13, v14, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    new-instance v11, Landroid/util/Pair;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v11, v9, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v13, 0x0

    cmp-long v6, v6, v13

    const-wide/16 v15, -0x1

    if-lez v6, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v9

    mul-long/2addr v6, v11

    new-instance v9, Landroid/util/Pair;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v9, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v2

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_4

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v12, v17, v10

    if-gtz v12, :cond_3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_2

    :cond_3
    new-instance v12, Landroid/util/Pair;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v12, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v5, 0x2

    invoke-virtual {v1, v13, v14, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    const-string v7, "durationUs"

    invoke-virtual {v5, v7, v13, v14}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v12, v17, v15

    if-eqz v12, :cond_5

    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    iget-object v11, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long v17, v17, v11

    add-long v17, v17, v13

    move-wide/from16 v13, v17

    goto :goto_3

    :cond_5
    iget-object v11, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long v11, v9, v11

    add-long/2addr v11, v13

    move-wide v13, v11

    goto :goto_3

    :cond_6
    sub-long/2addr v9, v13

    const-wide/32 v11, 0x7a120

    cmp-long v7, v9, v11

    if-lez v7, :cond_9

    const-string/jumbo v7, "rotation-degrees"

    invoke-virtual {v5, v7, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v7

    :try_start_1
    new-instance v9, Landroid/media/MediaMuxer;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v9, v7}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    invoke-virtual {v9, v5}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    if-lez v4, :cond_7

    invoke-virtual {v1, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    goto :goto_4

    :cond_7
    const/4 v2, -0x1

    :goto_4
    invoke-virtual {v9}, Landroid/media/MediaMuxer;->start()V

    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-static {v1, v9, v0, v6}, Lcom/motorola/camera/mediacodec/CodecUtil;->processTrack(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;ILjava/util/ArrayList;)V

    if-lez v2, :cond_8

    invoke-virtual {v1, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-static {v1, v9, v2, v6}, Lcom/motorola/camera/mediacodec/CodecUtil;->processTrack(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;ILjava/util/ArrayList;)V

    :cond_8
    invoke-virtual {v9}, Landroid/media/MediaMuxer;->stop()V

    invoke-virtual {v9}, Landroid/media/MediaMuxer;->release()V

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    return v8

    :catch_0
    const-string v3, "cutGestureInVideo: create muxer failed, $e"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    :cond_9
    :goto_5
    return v2

    :catch_1
    const-string v1, "cutGestureInVideo: setDataSource failed, $e"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static embedXmpData(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 32

    move-object/from16 v1, p0

    .line 12
    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 13
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 14
    check-cast v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    const/4 v2, 0x1

    const/16 v3, 0xb4

    .line 15
    sget-object v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;->DEPTH_RENDER_ORIGINAL:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "SaveImageService"

    if-eqz v0, :cond_8

    iget-object v8, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    .line 16
    sget-object v9, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 17
    sget-object v10, Lcom/motorola/camera/AppFeatures$Feature;->DYNAMIC_DEPTH_XMP:Lcom/motorola/camera/AppFeatures$Feature;

    .line 18
    iget-object v11, v9, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v11, Ljava/util/EnumSet;

    .line 19
    invoke-virtual {v11, v10}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 20
    sget-object v10, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_DEPTH_MAP:Lcom/motorola/camera/AppFeatures$Feature;

    .line 21
    iget-object v9, v9, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v9, Ljava/util/EnumSet;

    .line 22
    invoke-virtual {v9, v10}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v9

    if-nez v9, :cond_8

    .line 24
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 25
    const-string v9, "Orientation"

    sget-object v10, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v8, v10}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/mcf/McfAuxFrameData;

    .line 26
    iget-object v11, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    .line 27
    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    .line 28
    sget-object v12, Lcom/motorola/camera/mcf/McfAuxiliaryData;->IMAGING_MODEL:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    .line 29
    invoke-virtual {v8, v12}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    .line 30
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    if-eqz v11, :cond_0

    .line 31
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    goto :goto_0

    :cond_0
    move-object v11, v5

    .line 32
    :goto_0
    invoke-virtual {v10}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getData()[B

    move-result-object v10

    if-eqz v10, :cond_6

    if-eqz v11, :cond_6

    if-nez v8, :cond_1

    goto :goto_3

    .line 33
    :cond_1
    :try_start_0
    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    const/16 v13, 0x5a

    if-eq v0, v13, :cond_4

    if-eq v0, v3, :cond_3

    const/16 v13, 0x10e

    if-eq v0, v13, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    .line 34
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v13, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v13, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 36
    new-instance v10, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v10, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 37
    invoke-virtual {v13, v9, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v10, v9, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v13, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray(Z)[B

    move-result-object v0

    .line 40
    invoke-virtual {v10, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray(Z)[B

    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    invoke-static {v12, v9, v0, v8}, Lcom/motorola/camera/mcf/MotDynamicDepthUtil;->encodeDepthPhoto([B[B[BLcom/motorola/camera/mcf/McfImagingModelAuxData;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 42
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_4

    :cond_5
    :goto_2
    move-object v0, v5

    goto :goto_4

    :catch_0
    move-exception v0

    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "encodeDynamicDepthPhoto Failed to write exif orientation: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 44
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "Missing depth photo parameters depthJpeg="

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " originalJpeg="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " imagingModel="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_4
    if-eqz v0, :cond_7

    return-object v0

    .line 45
    :cond_7
    const-string v0, "Failed to encode dynamic depth photo, using gdepth instead!"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 47
    iget-object v8, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mXmpData:Lcom/motorola/camera/saving/XmpData;

    .line 48
    iget-object v9, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 49
    iget-object v10, v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iget-object v11, v9, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 50
    move-object v12, v11

    check-cast v12, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 51
    iget-object v13, v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mAlternateShotData:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const/4 v14, -0x1

    if-eqz v13, :cond_c

    .line 52
    iget-boolean v15, v13, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mMandatory:Z

    if-eqz v10, :cond_c

    move/from16 v16, v2

    .line 53
    iget v2, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mAIColorToneModuleType:I

    if-eq v2, v14, :cond_9

    move/from16 v2, v16

    goto :goto_5

    :cond_9
    move v2, v6

    .line 54
    :goto_5
    invoke-virtual {v10}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 55
    new-instance v18, Lcom/motorola/camera/AppFeatures;

    sget-object v10, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Composition:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 56
    iget-object v10, v10, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 57
    iget-object v13, v13, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    .line 58
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    iget-boolean v15, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 59
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/16 v24, 0x11

    move-object/from16 v19, v10

    move-object/from16 v20, v13

    invoke-direct/range {v18 .. v24}, Lcom/motorola/camera/AppFeatures;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v2, v18

    .line 60
    invoke-virtual {v8, v2}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/AppFeatures;)V

    goto :goto_6

    .line 61
    :cond_a
    invoke-virtual {v10}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 62
    new-instance v18, Lcom/motorola/camera/AppFeatures;

    sget-object v10, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->BestShotType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 63
    iget-object v10, v10, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 64
    iget-object v13, v13, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    .line 65
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    iget-boolean v15, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 66
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/16 v24, 0x11

    move-object/from16 v19, v10

    move-object/from16 v20, v13

    invoke-direct/range {v18 .. v24}, Lcom/motorola/camera/AppFeatures;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v2, v18

    .line 67
    invoke-virtual {v8, v2}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/AppFeatures;)V

    goto :goto_6

    .line 68
    :cond_b
    invoke-virtual {v10}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isDefault()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 69
    new-instance v17, Lcom/motorola/camera/AppFeatures;

    sget-object v10, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->OriginalType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 70
    iget-object v10, v10, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 71
    iget-object v13, v13, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    .line 72
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    iget-boolean v15, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 73
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    const/16 v23, 0x11

    move-object/from16 v18, v10

    move-object/from16 v19, v13

    invoke-direct/range {v17 .. v23}, Lcom/motorola/camera/AppFeatures;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v2, v17

    .line 74
    invoke-virtual {v8, v2}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/AppFeatures;)V

    goto :goto_6

    :cond_c
    move/from16 v16, v2

    .line 75
    :cond_d
    :goto_6
    iget-object v2, v12, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    iget-object v10, v12, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v13, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne v2, v13, :cond_f

    iget-boolean v2, v12, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-nez v2, :cond_f

    .line 76
    new-instance v17, Lcom/motorola/camera/AppFeatures;

    iget-object v2, v12, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v13, "UUID"

    invoke-virtual {v2, v13}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 77
    iget-object v2, v12, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_e

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v20, v2

    goto :goto_7

    :cond_e
    move-object/from16 v20, v5

    :goto_7
    const/16 v22, 0x0

    const/16 v23, 0x11

    const/16 v18, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v17 .. v23}, Lcom/motorola/camera/AppFeatures;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v2, v17

    .line 78
    invoke-virtual {v8, v2}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/AppFeatures;)V

    .line 79
    :cond_f
    iget-object v2, v11, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v13, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    if-ne v2, v13, :cond_18

    .line 80
    invoke-static {v5}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 82
    invoke-static {v5}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v13

    .line 83
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v13

    .line 84
    iget-object v15, v11, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v14, "PANO_IMAGE_HEIGHT"

    .line 85
    invoke-virtual {v15, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 86
    iget-object v15, v11, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v6, "PANO_IMAGE_WIDTH"

    .line 87
    invoke-virtual {v15, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 88
    iget v15, v11, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    .line 89
    iget-object v11, v11, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v5, "PANO_MAX_OUTPUT_SIZE"

    .line 90
    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v5

    if-nez v5, :cond_10

    goto/16 :goto_b

    :cond_10
    if-eqz v15, :cond_13

    if-ne v15, v3, :cond_11

    goto :goto_9

    :cond_11
    if-le v6, v2, :cond_12

    .line 91
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    :goto_8
    mul-int/lit8 v3, v2, 0x2

    goto :goto_a

    :cond_12
    if-le v14, v13, :cond_18

    .line 92
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_8

    :cond_13
    :goto_9
    if-le v6, v13, :cond_14

    .line 93
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_8

    :cond_14
    if-le v14, v2, :cond_18

    .line 94
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_8

    :goto_a
    sub-int v5, v3, v6

    .line 95
    div-int/lit8 v5, v5, 0x2

    sub-int v11, v2, v14

    .line 96
    div-int/lit8 v11, v11, 0x2

    if-gez v11, :cond_15

    mul-int/lit8 v3, v14, 0x2

    move v2, v14

    const/4 v11, 0x0

    :cond_15
    if-gez v5, :cond_16

    .line 97
    div-int/lit8 v2, v6, 0x2

    move v3, v6

    const/4 v5, 0x0

    .line 98
    :cond_16
    iget-object v13, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mXmpData:Lcom/motorola/camera/saving/XmpData;

    .line 99
    const-string v15, "http://ns.google.com/photos/1.0/panorama/"

    move/from16 v20, v2

    .line 100
    iget-object v2, v13, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-nez v2, :cond_17

    .line 101
    sget-object v2, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Landroidx/media3/extractor/text/pgs/PgsParser;

    .line 102
    new-instance v2, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-direct {v2}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;-><init>()V

    .line 103
    iput-object v2, v13, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    .line 104
    :cond_17
    iget-object v2, v13, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    .line 105
    :try_start_1
    const-string v13, "CroppedAreaImageHeightPixels"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v21, v3

    const/4 v3, 0x0

    .line 106
    invoke-virtual {v2, v15, v13, v14, v3}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 107
    const-string v13, "CroppedAreaImageWidthPixels"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 108
    invoke-virtual {v2, v15, v13, v6, v3}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 109
    const-string v6, "CroppedAreaLeftPixels"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 110
    invoke-virtual {v2, v15, v6, v5, v3}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 111
    const-string v5, "CroppedAreaTopPixels"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 112
    invoke-virtual {v2, v15, v5, v6, v3}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 113
    const-string v5, "FullPanoHeightPixels"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 114
    invoke-virtual {v2, v15, v5, v6, v3}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 115
    const-string v5, "FullPanoWidthPixels"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 116
    invoke-virtual {v2, v15, v5, v6, v3}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 117
    const-string v5, "ProjectionType"

    const-string v6, "equirectangular"

    .line 118
    invoke-virtual {v2, v15, v5, v6, v3}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 119
    const-string v5, "UsePanoramaViewer"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 120
    invoke-virtual {v2, v15, v5, v6, v3}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V
    :try_end_1
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    :catch_1
    :cond_18
    :goto_b
    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 122
    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_DEPTH_MAP:Lcom/motorola/camera/AppFeatures$Feature;

    .line 123
    iget-object v2, v2, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v2, Ljava/util/EnumSet;

    .line 124
    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 125
    invoke-static {v12}, Lcom/motorola/camera/saving/SaveImageService;->hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 126
    sget-object v2, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v10, v2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/mcf/McfAuxFrameData;

    .line 127
    sget-object v3, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v10, v3}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/mcf/McfDepthRender;

    .line 128
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getData()[B

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 129
    new-instance v5, Landroidx/room/concurrent/FileLock;

    const/16 v6, 0x19

    const/4 v7, 0x0

    .line 130
    invoke-direct {v5, v6, v7}, Landroidx/room/concurrent/FileLock;-><init>(IZ)V

    .line 131
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getData()[B

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/camera/mcf/MotUtil;->Base64Encode([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    const/4 v6, 0x0

    .line 132
    iput-object v6, v5, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    .line 133
    iget-object v6, v12, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    .line 134
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_1b

    .line 135
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    goto :goto_c

    .line 136
    :cond_19
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    .line 137
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v4, v6

    .line 138
    :goto_c
    iget-boolean v6, v12, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    if-eqz v6, :cond_1a

    .line 139
    new-instance v6, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-static {v4}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v4

    const-string v7, "Segmentation"

    invoke-direct {v6, v7, v4}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[B)V

    goto :goto_d

    .line 140
    :cond_1a
    new-instance v6, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-static {v4}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v4

    const/4 v7, 0x0

    .line 141
    invoke-direct {v6, v7, v4}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[B)V

    goto :goto_d

    :cond_1b
    const/4 v6, 0x0

    .line 142
    :goto_d
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiX()I

    move-result v7

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiY()I

    move-result v10

    .line 143
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiWidth()I

    move-result v11

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiHeight()I

    move-result v2

    invoke-direct {v4, v7, v10, v11, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v5, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    goto :goto_e

    .line 144
    :cond_1c
    const-string v2, "DepthMap Aux present, but data is null. Not embedding depth data"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_e
    if-eqz v3, :cond_1d

    .line 145
    new-instance v2, Landroidx/media3/extractor/AacUtil$Config;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfDepthRender;->getFocalPointX()I

    move-result v4

    .line 146
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfDepthRender;->getFocalPointY()I

    move-result v7

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfDepthRender;->getFocusType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v7, v3}, Landroidx/media3/extractor/AacUtil$Config;-><init>(IILjava/lang/String;)V

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    .line 147
    :goto_f
    const-string v3, "Data"

    const-string v4, "image/jpeg"

    const-string v7, "Mime"

    if-eqz v5, :cond_20

    .line 148
    const-string v10, "http://ns.google.com/photos/1.0/depthmap/"

    .line 149
    iget-object v11, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-nez v11, :cond_1e

    .line 150
    sget-object v11, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Landroidx/media3/extractor/text/pgs/PgsParser;

    .line 151
    new-instance v11, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-direct {v11}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;-><init>()V

    .line 152
    iput-object v11, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    .line 153
    :cond_1e
    iget-object v11, v8, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-nez v11, :cond_1f

    sget-object v11, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Landroidx/media3/extractor/text/pgs/PgsParser;

    .line 154
    new-instance v11, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-direct {v11}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;-><init>()V

    .line 155
    iput-object v11, v8, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    .line 156
    :cond_1f
    iget-object v11, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    .line 157
    iget-object v13, v8, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    .line 158
    :try_start_2
    const-string v14, "Far"

    const/16 v15, 0xff

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15
    :try_end_2
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v20, v9

    const/4 v9, 0x0

    .line 159
    :try_start_3
    invoke-virtual {v11, v10, v14, v15, v9}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 160
    const-string v14, "Format"

    const-string v15, "RangeLinear"

    .line 161
    invoke-virtual {v11, v10, v14, v15, v9}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 162
    invoke-virtual {v11, v10, v7, v4, v9}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 163
    const-string v14, "Near"
    :try_end_3
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v18, 0x0

    :try_start_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 164
    invoke-virtual {v11, v10, v14, v15, v9}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 165
    iget-object v14, v5, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 166
    invoke-virtual {v13, v10, v3, v14, v9}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 167
    iget-object v9, v5, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/Rect;

    if-eqz v9, :cond_21

    .line 168
    const-string v13, "RoiX"

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v14, 0x0

    .line 169
    invoke-virtual {v11, v10, v13, v9, v14}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 170
    const-string v9, "RoiY"

    iget-object v13, v5, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    .line 171
    invoke-virtual {v11, v10, v9, v13, v14}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 172
    const-string v9, "RoiWidth"

    iget-object v13, v5, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    .line 173
    invoke-virtual {v11, v10, v9, v13, v14}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 174
    const-string v9, "RoiHeight"

    iget-object v5, v5, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v14, 0x0

    .line 175
    invoke-virtual {v11, v10, v9, v5, v14}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V
    :try_end_4
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_10

    :catch_2
    :cond_20
    move-object/from16 v20, v9

    :catch_3
    const/16 v18, 0x0

    :catch_4
    :cond_21
    :goto_10
    if-eqz v6, :cond_24

    .line 176
    const-string v5, "http://ns.google.com/photos/1.0/image/"

    .line 177
    iget-object v9, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-nez v9, :cond_22

    .line 178
    sget-object v9, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Landroidx/media3/extractor/text/pgs/PgsParser;

    .line 179
    new-instance v9, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-direct {v9}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;-><init>()V

    .line 180
    iput-object v9, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    .line 181
    :cond_22
    iget-object v9, v8, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-nez v9, :cond_23

    sget-object v9, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Landroidx/media3/extractor/text/pgs/PgsParser;

    .line 182
    new-instance v9, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-direct {v9}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;-><init>()V

    .line 183
    iput-object v9, v8, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    .line 184
    :cond_23
    iget-object v9, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    .line 185
    iget-object v10, v8, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    .line 186
    :try_start_5
    iget-object v11, v6, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    const/4 v14, 0x0

    .line 187
    invoke-virtual {v10, v5, v3, v11, v14}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 188
    invoke-virtual {v9, v5, v7, v4, v14}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 189
    iget-object v3, v6, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_24

    .line 190
    const-string v4, "ItemSemantic"

    .line 191
    invoke-virtual {v9, v5, v4, v3, v14}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V
    :try_end_5
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_24
    if-eqz v2, :cond_26

    .line 192
    const-string v3, "http://ns.motorola.com/camera/1.0/depthfocus/"

    .line 193
    iget-object v4, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-nez v4, :cond_25

    .line 194
    sget-object v4, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Landroidx/media3/extractor/text/pgs/PgsParser;

    .line 195
    new-instance v4, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-direct {v4}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;-><init>()V

    .line 196
    iput-object v4, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    .line 197
    :cond_25
    iget-object v4, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    .line 198
    :try_start_6
    const-string v5, "FocalPointX"

    iget v6, v2, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x0

    .line 199
    invoke-virtual {v4, v3, v5, v6, v14}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 200
    const-string v5, "FocalPointY"

    iget v6, v2, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 201
    invoke-virtual {v4, v3, v5, v6, v14}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 202
    const-string v5, "FocalPointType"

    iget-object v2, v2, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 203
    invoke-virtual {v4, v3, v5, v2, v14}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V
    :try_end_6
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_6 .. :try_end_6} :catch_6

    .line 204
    :catch_6
    :cond_26
    new-instance v21, Lcom/motorola/camera/AppFeatures;

    iget-boolean v2, v12, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    if-eqz v2, :cond_27

    .line 205
    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Layer:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 206
    iget-object v2, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    :goto_11
    move-object/from16 v22, v2

    goto :goto_12

    .line 207
    :cond_27
    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Portrait:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 208
    iget-object v2, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    goto :goto_11

    .line 209
    :goto_12
    iget-boolean v2, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    .line 210
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    iget v2, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mAIColorToneModuleType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_28

    move/from16 v7, v16

    goto :goto_13

    :cond_28
    move/from16 v7, v18

    .line 211
    :goto_13
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    const/16 v27, 0x11

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v27}, Lcom/motorola/camera/AppFeatures;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v2, v21

    .line 212
    invoke-virtual {v8, v2}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/AppFeatures;)V

    move-object/from16 v2, v20

    goto :goto_14

    :cond_29
    const/16 v18, 0x0

    move-object v2, v9

    .line 213
    :goto_14
    iget-object v3, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mActiveVideo:Ljava/io/File;

    if-eqz v3, :cond_2d

    .line 214
    invoke-static {v8, v2}, Lcom/motorola/camera/saving/SaveImageService;->setGainMapXmp(Lcom/motorola/camera/saving/XmpData;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    .line 215
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v24

    .line 216
    iget-wide v3, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mActiveVideoPresentationOffsetUs:J

    .line 217
    const-string v5, "http://ns.google.com/photos/1.0/camera/"

    .line 218
    iget-object v6, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-nez v6, :cond_2b

    .line 219
    iget-object v6, v8, Lcom/motorola/camera/saving/XmpData;->mGainMapXmp:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-eqz v6, :cond_2a

    .line 220
    iput-object v6, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    goto :goto_15

    .line 221
    :cond_2a
    sget-object v6, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Landroidx/media3/extractor/text/pgs/PgsParser;

    .line 222
    new-instance v6, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-direct {v6}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;-><init>()V

    .line 223
    iput-object v6, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    :cond_2b
    move/from16 v16, v18

    .line 224
    :goto_15
    iget-object v6, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    .line 225
    :try_start_7
    const-string v7, "MotionPhoto"

    const/4 v14, 0x0

    .line 226
    invoke-virtual {v6, v5, v7, v0, v14}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 227
    const-string v7, "MotionPhotoVersion"

    .line 228
    invoke-virtual {v6, v5, v7, v0, v14}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 229
    const-string v0, "MotionPhotoPresentationTimestampUs"

    .line 230
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 231
    invoke-virtual {v6, v5, v0, v3, v14}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    .line 232
    invoke-static {v6}, Lcom/motorola/camera/saving/XmpData;->createActivePhotoItemDirectory(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;)V

    if-eqz v16, :cond_2c

    .line 233
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v21, "Container:Directory[3]/Container:Item"

    .line 234
    const-string v22, "MotionPhoto"

    const-string/jumbo v23, "video/mp4"

    move-object/from16 v20, v6

    invoke-static/range {v20 .. v25}, Lcom/motorola/camera/saving/XmpData;->embedActivePhotoItem(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_17

    :catch_7
    move-exception v0

    goto :goto_16

    :cond_2c
    move-object/from16 v20, v6

    .line 235
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v27, "Container:Directory[1]/Container:Item"

    .line 236
    const-string v28, "Primary"

    const-string v29, "image/jpeg"

    const-wide/16 v30, 0x0

    move-object/from16 v26, v20

    invoke-static/range {v26 .. v31}, Lcom/motorola/camera/saving/XmpData;->embedActivePhotoItem(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 237
    const-string v21, "Container:Directory[2]/Container:Item"

    .line 238
    const-string v22, "MotionPhoto"

    const-string/jumbo v23, "video/mp4"

    invoke-static/range {v20 .. v25}, Lcom/motorola/camera/saving/XmpData;->embedActivePhotoItem(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v20

    .line 239
    const-string v3, "SpecialTypeID"

    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->ActivePhoto:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const/4 v14, 0x0

    .line 240
    invoke-virtual {v0, v5, v3, v4, v14}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V
    :try_end_7
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_17

    .line 241
    :goto_16
    const-string v3, "XmpData"

    const-string v4, "can\'t embed active photo oem"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    :cond_2d
    :goto_17
    iget-object v0, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-nez v0, :cond_2e

    .line 243
    iget-boolean v0, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    if-eqz v0, :cond_2e

    .line 244
    new-instance v13, Lcom/motorola/camera/AppFeatures;

    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->AutoEnhance:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 245
    iget-object v14, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 246
    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v19, 0x11

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/AppFeatures;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 247
    invoke-virtual {v8, v13}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/AppFeatures;)V

    .line 248
    :cond_2e
    iget-object v0, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-nez v0, :cond_2f

    .line 249
    iget-boolean v0, v12, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAdobeScan:Z

    if-eqz v0, :cond_2f

    .line 250
    new-instance v13, Lcom/motorola/camera/AppFeatures;

    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->AdobeDoc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 251
    iget-object v14, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 252
    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v19, 0x11

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v18, v17

    invoke-direct/range {v13 .. v19}, Lcom/motorola/camera/AppFeatures;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 253
    invoke-virtual {v8, v13}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/AppFeatures;)V

    .line 254
    :cond_2f
    iget-object v0, v8, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-nez v0, :cond_30

    .line 255
    iget-boolean v0, v12, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAIPersonalColorTone:Z

    if-eqz v0, :cond_30

    .line 256
    invoke-static {v8, v2}, Lcom/motorola/camera/saving/SaveImageService;->setGainMapXmp(Lcom/motorola/camera/saving/XmpData;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    .line 257
    :cond_30
    iput-object v8, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mXmpData:Lcom/motorola/camera/saving/XmpData;

    move-object/from16 v1, p1

    .line 258
    invoke-static {v1, v8}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-static {v1, v2, p1}, Lcom/motorola/camera/saving/XmpUtil;->writeXmpMeta(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;Lcom/motorola/camera/saving/XmpData;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :cond_1
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 7
    :goto_0
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    :goto_1
    move-object v0, v1

    goto :goto_3

    :catch_0
    :goto_2
    move-object v0, v1

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-object v2, v0

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_3

    :catch_2
    move-object v2, v0

    goto :goto_4

    .line 8
    :goto_3
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 9
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 10
    throw p0

    .line 11
    :goto_4
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static finishVideoFile(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    :try_start_0
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SaveImageService"

    const-string v3, "finishVideoFile failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v3, 0x16

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->notifyVideoSaveComplete(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V

    return-void
.end method

.method public static getProcessingCameraData(J)Lcom/motorola/camera/CameraData;
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/CameraData;

    .line 4
    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v3

    cmp-long v3, v3, p0

    if-nez v3, :cond_0

    .line 5
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/CameraData;

    return-object p0
.end method

.method public static getProcessingPostView(Lcom/motorola/camera/CameraData;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v1, "THUMB_PATH"

    invoke-virtual {v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getThumbWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getThumbHeight()I

    move-result p0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v1}, Lcom/motorola/camera/Util;->readFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string v1, "Bitmap can`t be read. Thumbnail path: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveImageService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static mirrorGainMapToImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V
    .locals 12

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v4, v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-virtual {v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->isUltraHdr()Z

    move-result v10

    iget v4, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    const/4 v9, 0x0

    invoke-static {v4, v9}, Lcom/motorola/camera/mcf/MotUtil;->getWmFirstPosition(IZ)I

    move-result v7

    new-instance v8, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v10}, Lcom/motorola/camera/watermark/jpeg/JpegWatermarkService$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Z)V

    const/4 v6, 0x0

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Lcom/motorola/camera/mcf/MotUtil;->appendWatermarkToJpeg([BLjava/lang/Object;ILcom/motorola/camera/mcf/McfMetadataModificationCallable;ZZZ)[B

    move-result-object p0

    const-string v4, "SaveImageService"

    if-nez p0, :cond_3

    const-string p0, "JPEG mirror operation failed: new data is null"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "mirror image failed!"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    if-eqz v0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "mirror image to JPG image totally took: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, p0, v4}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static notifyFailedBgShot(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error_message"

    const-string v2, "Failed to create file"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "task_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    new-instance p1, Lcom/motorola/camera/CameraData;

    iget-wide v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, v2, p0, v0}, Lcom/motorola/camera/CameraData;-><init>(JLjava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    return-void
.end method

.method public static notifyProcessingUri(Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    sget-boolean p0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "[processing_api] notifying processing uri for mediaId "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", filename "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", is finish: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SaveImageService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "external"

    invoke-static {p1, v0, v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getProcessingUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(ZLjava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static notifyVideoSaveComplete(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v1, Lcom/motorola/camera/storage/backend/MediaStoreFile;->isFinished:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v3

    :goto_0
    move-object v7, v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    const-string v4, "SEQ_ID"

    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "DATE_TAKEN"

    iget-wide v5, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, v1, Lcom/motorola/camera/storage/backend/MediaStoreFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v3}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v1, Lcom/motorola/camera/storage/backend/MediaStoreFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-static {v1, v8}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/VideoFormat;

    iget-object v1, v1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    :goto_2
    iget v3, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    invoke-static {v1, v3}, Lcom/motorola/camera/utility/ColorUtil;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v1

    new-instance v4, Lcom/motorola/camera/CameraData;

    iget-wide v5, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-wide v10, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v15

    iget v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    const/16 v17, 0x1

    move/from16 v19, v0

    move/from16 v16, v1

    move-object/from16 v18, v3

    invoke-direct/range {v4 .. v19}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIIILcom/motorola/camera/fsm/camera/record/SequenceIdentifier;I)V

    invoke-static {v4, v2}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    return-void
.end method

.method public static removeExistingMediaStore(Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->deleteMediaItem(Landroid/net/Uri;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to delete in MediaStore: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SaveImageService"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->checkFinishBackupImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v0

    .line 2
    sget-object v1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 3
    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p0, v0, v3}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/saving/SaveImageService;->mPostViewCaptureRecords:Ljava/util/Map;

    iget v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->onCaptureStopped(I)V

    return v0
.end method

.method public static removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 3

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->commitKpiRecord(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    invoke-direct {v2, p0}, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;-><init>(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->offer(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    new-instance p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v1, 0x17

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static saveImageBeforeProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    .locals 9

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAdobeScan:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    sget-object v1, Lcom/motorola/camera/saving/SavingFileKeepAlive;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v2, Lcom/motorola/camera/saving/SavingFileKeepAlive$addSavingJob$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/saving/SavingFileKeepAlive$addSavingJob$1;-><init>(ILkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {v1, v3, v3, v2, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosProcessingSupported()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v1

    const-string v2, "SEQ_ID"

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v2, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    :cond_1
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DATE_TAKEN"

    iget-wide v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-virtual {v8, v1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v8, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v1}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v1, "PROCESSING_URI"

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "CAPTURE_MODE"

    iget v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    invoke-virtual {v8, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ORIENTATION"

    iget v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    invoke-virtual {v8, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Lcom/motorola/camera/CameraData;

    iget-wide v4, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget v4, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v5, v5, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLens:Z

    if-eqz v5, :cond_6

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitMode(I)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_FOCAL_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->values()[Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    move-result-object v5

    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_5

    if-eq v5, v2, :cond_4

    const/4 v2, 0x2

    if-eq v5, v2, :cond_3

    if-ne v5, v0, :cond_2

    const/16 v0, 0x55

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown FocalSegment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/16 v0, 0x32

    goto :goto_0

    :cond_4
    const/16 v0, 0x23

    goto :goto_0

    :cond_5
    const/16 v0, 0x18

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/motorola/camera/saving/SaveImageService;->mPortraitRecords:Ljava/util/Map;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v4, v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSavePostViewAsBackupImage:Z

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService;->mPostViewCaptureRecords:Ljava/util/Map;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    invoke-direct {v0, p0}, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    iget-object p0, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    new-instance v3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    invoke-direct {v3, v1, v0, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    iget-object p0, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_8
    :goto_1
    return-void
.end method

.method public static setGainMapXmp(Lcom/motorola/camera/saving/XmpData;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 4

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    iget-object p1, p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->mUHdrGContainerApp1:[B

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lt v0, v1, :cond_3

    aget-byte v2, p1, v0

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p1, v2

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_2

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    array-length v0, p1

    :goto_1
    const/16 v1, 0x17

    sub-int/2addr v0, v1

    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    invoke-static {v2}, Lcom/adobe/internal/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    move-result-object p1
    :try_end_0
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData;->mGainMapXmp:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    :cond_4
    :goto_3
    return-void
.end method

.method public static storeThumbnail(ZJJ[BLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 9

    new-instance v0, Lcom/motorola/camera/saving/FileName;

    sget-object v1, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-direct {v0, v1, p3, p4}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    const-string p3, "_CAPTURE_THUMB"

    invoke-virtual {v0, p3}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    sget-object v2, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p3, p5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {p3}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v5, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object p4, p3

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p4, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p3, v0

    move-object v8, p4

    move-object p4, p3

    move-object p3, v8

    goto :goto_1

    :catch_2
    move-exception v0

    move-object p3, v0

    move-object v1, p4

    move-object p4, p3

    move-object p3, v1

    :goto_1
    :try_start_3
    const-string p5, "FileUtility"

    const-string/jumbo v0, "write failed"

    invoke-static {p5, v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_2
    if-eqz p0, :cond_0

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;

    move-wide v3, p1

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;-><init>(Lcom/motorola/camera/saving/SaveImageService;JLjava/io/File;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_3
    invoke-static {p4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static stripAppSegments([B)[B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1, v2}, Lcom/motorola/camera/saving/XmpUtil;->stripAppSegments(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    :goto_1
    move-object v0, v1

    goto :goto_3

    :catch_0
    :goto_2
    move-object v0, v1

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-object v2, v0

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_3

    :catch_2
    move-object v2, v0

    goto :goto_4

    :goto_3
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :goto_4
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0
.end method

.method public static writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z
    .locals 26

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const-string v2, "null pending mediaStoreUri for "

    const-string v3, "[processing_api] writeToFile: exif backup image written to "

    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v5, v4, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v6, v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mActiveVideo:Ljava/io/File;

    instance-of v7, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    move-object v10, v5

    check-cast v10, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v10, v10, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    if-eqz v7, :cond_1

    move-object v7, v5

    check-cast v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v7, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSavePostViewAsBackupImage:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v9

    :goto_1
    const-string v11, "SaveImageService"

    const/4 v12, 0x0

    if-nez v10, :cond_3

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    const/16 v16, 0x1

    goto :goto_6

    :cond_3
    :goto_2
    :try_start_0
    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    :try_start_1
    sget v8, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v13, v14, v15, v8}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_3
    move-object v1, v0

    move-object v4, v12

    move-object/from16 v18, v4

    goto/16 :goto_19

    :goto_4
    move/from16 v25, v9

    move-object/from16 v17, v12

    move-object/from16 v18, v17

    goto/16 :goto_15

    :catch_0
    :goto_5
    :try_start_2
    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v8, v14, v15}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    :goto_6
    :try_start_4
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v4}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v13

    if-eqz v13, :cond_7

    move-object v13, v5

    check-cast v13, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v13, v13, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v14, v13, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v15, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v14, v15}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v14, :cond_4

    :try_start_6
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v4, v8

    :goto_7
    move-object/from16 v18, v12

    goto/16 :goto_19

    :catch_3
    move-exception v0

    move/from16 v25, v9

    move-object/from16 v17, v12

    move-object/from16 v18, v17

    move-object v12, v8

    goto/16 :goto_15

    :cond_4
    :try_start_7
    iget v14, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    :goto_8
    iput v14, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    iget-object v4, v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mImageDataHolder:Lcom/motorola/camera/saving/ImageDataHolder;

    if-nez v4, :cond_5

    move v15, v9

    goto :goto_9

    :cond_5
    iget v15, v4, Lcom/motorola/camera/saving/ImageDataHolder;->mWidth:I

    :goto_9
    if-nez v4, :cond_6

    move v4, v9

    goto :goto_a

    :cond_6
    iget v4, v4, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    :goto_a
    iput v15, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    iput v4, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    iget-object v13, v13, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move/from16 v25, v9

    :try_start_8
    iget-object v9, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    invoke-static {v14}, Lcom/motorola/camera/utility/ExifUtility;->toExifOrientation(I)I

    move-result v21

    iget-object v14, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v17, p0

    move/from16 v24, v4

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move-object/from16 v19, v13

    move-object/from16 v22, v14

    move/from16 v23, v15

    :try_start_9
    invoke-static/range {v17 .. v24}, Lcom/motorola/camera/saving/SaveImageService;->createDng(Ljava/nio/ByteBuffer;Ljava/io/FileOutputStream;Landroid/hardware/camera2/TotalCaptureResult;Landroid/location/Location;ILjava/lang/String;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v4, v18

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object/from16 v4, v18

    :goto_b
    move-object v1, v0

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v4, v18

    :goto_c
    move-object/from16 v17, v12

    move-object/from16 v18, v17

    :goto_d
    move-object v12, v4

    goto/16 :goto_15

    :catchall_3
    move-exception v0

    move-object v4, v8

    goto :goto_b

    :catch_5
    move-exception v0

    move-object v4, v8

    goto :goto_c

    :catch_6
    move-exception v0

    move-object v4, v8

    move/from16 v25, v9

    goto :goto_c

    :cond_7
    move-object v4, v8

    move/from16 v25, v9

    :try_start_a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V

    :goto_e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    array-length v8, v8

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v17
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v18
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v21

    invoke-virtual/range {v17 .. v22}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    goto :goto_10

    :catchall_4
    move-exception v0

    move-object v1, v0

    :goto_f
    move-object/from16 v12, v17

    goto/16 :goto_19

    :catch_7
    move-exception v0

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v12

    goto :goto_f

    :catch_8
    move-exception v0

    move-object/from16 v18, v12

    goto :goto_d

    :catchall_6
    move-exception v0

    goto :goto_b

    :catch_9
    move-exception v0

    goto :goto_c

    :cond_8
    move-object/from16 v17, v12

    move-object/from16 v18, v17

    :goto_10
    instance-of v8, v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    if-eqz v8, :cond_9

    move-object v8, v1

    check-cast v8, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    iget v0, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    iput v0, v8, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaOrientation:I

    :cond_9
    move-object v0, v5

    check-cast v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    if-eqz v10, :cond_e

    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v12

    :cond_a
    if-eqz v0, :cond_b

    sget-boolean v8, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v8, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_b
    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->finish()V

    :cond_c
    :goto_11
    if-eqz v12, :cond_d

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/motorola/camera/settings/SettingsHelper;->updatePendingMediaUris(Ljava/lang/String;Z)V

    goto :goto_12

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_e
    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->finish()V

    :goto_12
    if-eqz v7, :cond_f

    if-nez v0, :cond_f

    iget-object v0, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    sget-object v2, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v2, v2, Lcom/motorola/camera/saving/SaveImageService;->mPostViewCaptureRecords:Ljava/util/Map;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :cond_f
    if-eqz v17, :cond_10

    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_13
    if-eqz v18, :cond_11

    :try_start_e
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_14

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_14
    invoke-static {v4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->keepActivePhotoVideoFiles()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {v6}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    :cond_12
    return v16

    :goto_15
    :try_start_f
    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "No space left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v1, "writeToFile failed: Storage full"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_16

    :catchall_7
    move-exception v0

    move-object v1, v0

    move-object v4, v12

    goto/16 :goto_f

    :cond_13
    :goto_16
    if-eqz v17, :cond_14

    :try_start_10
    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    goto :goto_17

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_17
    if-eqz v18, :cond_15

    :try_start_11
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    goto :goto_18

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    :goto_18
    invoke-static {v12}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->keepActivePhotoVideoFiles()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {v6}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    :cond_16
    return v25

    :goto_19
    if-eqz v12, :cond_17

    :try_start_12
    invoke-virtual {v12}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    goto :goto_1a

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_1a
    if-eqz v18, :cond_18

    :try_start_13
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    goto :goto_1b

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    :goto_1b
    invoke-static {v4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->keepActivePhotoVideoFiles()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {v6}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    :cond_19
    throw v1
.end method


# virtual methods
.method public final addImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V
    .locals 19

    move-object/from16 v1, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v4, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    move-object v5, v4

    check-cast v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->processExif()V

    iget-object v6, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-eqz v6, :cond_2

    const-string v9, "ExposureMode"

    const/4 v10, -0x1

    invoke-virtual {v6, v10, v9}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mExposureMode:I

    const-string v9, "Orientation"

    invoke-virtual {v6, v7, v9}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/motorola/camera/utility/ExifUtility;->getOrientationFromExif(I)I

    move-result v9

    iput v9, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    sget-object v9, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    iget-object v10, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v10, "PANO_IMAGE_WIDTH"

    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "PANO_IMAGE_HEIGHT"

    invoke-virtual {v4, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    goto :goto_0

    :cond_1
    const-string v4, "ImageWidth"

    invoke-virtual {v6, v8, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    const-string v4, "ImageLength"

    invoke-virtual {v6, v8, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    :goto_0
    :try_start_0
    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ALTM_ATTEMPTED:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v6, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mAltmAttempted:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    iget-object v4, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v6, v4, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    check-cast v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v9, v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v10, v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iget-object v11, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->hasSuffix()Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v9, v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v9, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    iget-object v13, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11, v9}, Lcom/motorola/camera/saving/FileName;->setInstanceTypeAttributes(Lcom/motorola/camera/mcf/Mcf$InstanceType;)Lcom/motorola/camera/saving/FileName;

    iget v9, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mExposureMode:I

    if-ne v9, v7, :cond_4

    const-wide/16 v14, 0x8

    invoke-virtual {v11, v14, v15}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    :cond_4
    iget v9, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mAltmAttempted:I

    if-ne v9, v7, :cond_5

    const-wide/16 v14, 0x1

    invoke-virtual {v11, v14, v15}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    :cond_5
    iget v9, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitMode(I)Z

    move-result v9

    const-wide/16 v14, 0x2

    move/from16 v17, v9

    const-wide/32 v8, 0x20000

    if-eqz v17, :cond_8

    invoke-static {v6}, Lcom/motorola/camera/saving/SaveImageService;->hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual {v11, v14, v15}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    :cond_6
    iget-object v14, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v14}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMfnr()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v11, v8, v9}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    :cond_7
    iget-object v14, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v14}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result v14

    if-nez v14, :cond_9

    const-wide/16 v14, 0x200

    invoke-virtual {v11, v14, v15}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    goto :goto_2

    :cond_8
    iget-boolean v8, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    if-eqz v8, :cond_9

    invoke-static {v6}, Lcom/motorola/camera/saving/SaveImageService;->hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v11, v14, v15}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    const-wide/16 v8, 0x100

    invoke-virtual {v11, v8, v9}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    :cond_9
    :goto_2
    iget v8, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode(I)Z

    move-result v8

    if-eqz v8, :cond_a

    const-wide/32 v8, 0x2000000

    invoke-virtual {v11, v8, v9}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    :cond_a
    iget-object v8, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    sget-object v9, Lcom/motorola/camera/mcf/Mcf$InstanceType;->RAW_HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-wide/16 v14, 0x20

    if-ne v8, v9, :cond_b

    iget-object v8, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v9, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_NR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v8, v9, :cond_b

    invoke-virtual {v11, v14, v15}, Lcom/motorola/camera/saving/FileName;->removeAttribute(J)Lcom/motorola/camera/saving/FileName;

    const-wide/32 v8, 0x8000

    invoke-virtual {v11, v8, v9}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    :cond_b
    iget-object v8, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    invoke-virtual {v8}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->getAlgoMetadata()Lcom/motorola/camera/mcf/McfAuxMetadata;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Lcom/motorola/camera/mcf/McfAuxMetadata;->getHdrDetected()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v11, v14, v15}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    :cond_c
    iget-object v8, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v9, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne v8, v9, :cond_e

    iget-object v8, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v8, v8, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    sub-int/2addr v8, v7

    if-nez v8, :cond_d

    move v9, v7

    goto :goto_3

    :cond_d
    const/4 v9, 0x0

    :goto_3
    invoke-static {v8, v9}, Lcom/motorola/camera/BurstShotFileUtils;->generateBurstSuffix(IZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v8, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v9, "ALTERNATE_SHOT"

    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v14, "UUID"

    invoke-virtual {v8, v14}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v14, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v7, "alternate_shot_index_"

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_f

    const/4 v14, 0x1

    goto :goto_4

    :cond_f
    const/4 v14, 0x0

    :goto_4
    invoke-static {v7, v14}, Lcom/motorola/camera/BurstShotFileUtils;->generateBurstSuffix(IZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v7

    if-eqz v7, :cond_10

    sget-object v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->COMP_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_10
    invoke-virtual {v10}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v7

    if-eqz v7, :cond_11

    sget-object v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->BEST_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    :goto_5
    new-instance v7, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {v11}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>()V

    iput-object v8, v7, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    iput-boolean v14, v7, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mMandatory:Z

    iput-object v10, v7, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mDefault:Ljava/lang/String;

    iput-object v7, v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mAlternateShotData:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    :cond_12
    invoke-virtual {v4}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Lcom/motorola/camera/ShotType;->SINGLE_RAW:Lcom/motorola/camera/ShotType;

    invoke-virtual {v11, v4}, Lcom/motorola/camera/saving/FileName;->setType(Lcom/motorola/camera/ShotType;)Lcom/motorola/camera/saving/FileName;

    goto :goto_6

    :cond_13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v4, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-virtual {v11, v4}, Lcom/motorola/camera/saving/FileName;->setType(Lcom/motorola/camera/ShotType;)Lcom/motorola/camera/saving/FileName;

    :cond_14
    :goto_6
    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    const-string v7, "SaveImageService"

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1a

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v4, v8, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v4, :cond_19

    iget-object v4, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkMfnrCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_MFNR_BSSCOUNT_RESULT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v10, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    iget-object v13, v8, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v4, v10, v13}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_15

    const-wide/32 v13, 0x20000

    invoke-virtual {v11, v13, v14}, Lcom/motorola/camera/saving/FileName;->removeAttribute(J)Lcom/motorola/camera/saving/FileName;

    :cond_15
    iget-object v4, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    iget-object v10, v8, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v13, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_CAPTURE_RESULT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    if-eqz v13, :cond_16

    invoke-virtual {v13, v4, v10}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    :goto_7
    const/16 v18, 0x1

    goto :goto_8

    :cond_16
    const/4 v4, 0x0

    goto :goto_7

    :goto_8
    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v10, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkMfnrCamera(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    sget-object v10, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_MFNR_CAPTURE_RESULT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    iget-object v8, v8, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v10, v6, v8}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_17

    const/16 v8, 0xff

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v8, v6, :cond_17

    const/4 v6, 0x1

    goto :goto_9

    :cond_17
    const/4 v6, 0x0

    :goto_9
    if-nez v4, :cond_18

    if-eqz v6, :cond_1a

    :cond_18
    const-wide/32 v13, 0x20000

    invoke-virtual {v11, v13, v14}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    goto :goto_a

    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "appendSuffix, ignore MFNR check. mResult is null for "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1b

    invoke-virtual {v11, v4}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    :cond_1b
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v4

    if-eqz v4, :cond_22

    new-instance v4, Lcom/motorola/camera/instrumentreport/CalibrationData;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sget-boolean v6, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    if-eqz v6, :cond_1c

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v8, "com.motorola.camera_debug_report"

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    if-eqz v6, :cond_1c

    const-string v8, "CALIBRATION_BUILD_STRING"

    const-string v11, ""

    invoke-interface {v6, v8, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    sput-boolean v10, Lcom/motorola/camera/instrumentreport/CalibrationData;->mBuildUpdated:Z

    :cond_1c
    iget-object v6, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget v6, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    if-nez v6, :cond_1d

    const/4 v6, 0x1

    goto :goto_b

    :cond_1d
    const/4 v6, 0x0

    :goto_b
    sput-boolean v6, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    sget-boolean v6, Lcom/motorola/camera/instrumentreport/CalibrationData;->mBuildUpdated:Z

    if-eqz v6, :cond_1e

    const/16 v16, 0x0

    sput-boolean v16, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedBack:Z

    sput-boolean v16, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedFront:Z

    const/16 v18, 0x1

    sput-boolean v18, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    :cond_1e
    sget-boolean v6, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedBack:Z

    if-nez v6, :cond_20

    sget-boolean v6, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz v6, :cond_1f

    goto :goto_d

    :cond_1f
    :goto_c
    const/16 v18, 0x1

    goto :goto_e

    :cond_20
    :goto_d
    sget-boolean v6, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedFront:Z

    if-nez v6, :cond_21

    sget-boolean v6, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz v6, :cond_21

    goto :goto_c

    :goto_e
    sput-boolean v18, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    sget-boolean v6, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    if-eqz v6, :cond_23

    iget-object v6, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-eqz v6, :cond_23

    new-instance v8, Ljava/lang/Thread;

    new-instance v10, Lcom/motorola/camera/mcf/Mcf$8;

    const/16 v11, 0x18

    const/4 v12, 0x0

    invoke-direct {v10, v4, v6, v11, v12}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-direct {v8, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v4, "calibration"

    invoke-virtual {v8, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_f

    :cond_21
    const/16 v18, 0x1

    const/16 v16, 0x0

    sput-boolean v16, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    goto :goto_f

    :cond_22
    const/16 v18, 0x1

    :cond_23
    :goto_f
    :try_start_1
    iget-wide v10, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mLongExposureShutterTime:J

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-eqz v4, :cond_24

    invoke-static {v1, v5}, Lcom/motorola/camera/saving/SaveImageService;->changeExpAndIso(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)V

    goto :goto_10

    :catch_1
    move-exception v0

    goto/16 :goto_18

    :cond_24
    :goto_10
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->applyColorTone(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V

    iget-boolean v4, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v4, :cond_25

    iget-boolean v4, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    if-eqz v4, :cond_25

    move/from16 v4, v18

    goto :goto_11

    :cond_25
    const/4 v4, 0x0

    :goto_11
    if-nez v4, :cond_28

    iget-boolean v6, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsMirror:Z

    if-eqz v6, :cond_26

    iget-object v6, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-virtual {v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->isUltraHdr()Z

    move-result v6

    if-eqz v6, :cond_26

    move/from16 v6, v18

    goto :goto_12

    :cond_26
    const/4 v6, 0x0

    :goto_12
    iget-boolean v8, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->isWatermarkEnabled:Z

    if-eqz v8, :cond_27

    invoke-static {v1, v6}, Lcom/motorola/camera/saving/SaveImageService;->addWatermarkToImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Z)V

    goto :goto_13

    :cond_27
    iget-boolean v6, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsMirror:Z

    if-eqz v6, :cond_28

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->mirrorGainMapToImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V

    :cond_28
    :goto_13
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/saving/SaveImageService;->writeJpeg(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v6

    if-eqz v6, :cond_29

    sget-object v6, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v6, v6, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/saving/SaveListener;

    iget-object v10, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v10, v10, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v10, v10, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v10}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/motorola/camera/saving/SaveListener;->onReviewSaveComplete(Landroid/net/Uri;)V

    goto :goto_14

    :cond_29
    if-eqz v4, :cond_2a

    const/4 v4, 0x0

    iput-boolean v4, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_17

    :cond_2a
    sget-object v1, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    iget-object v4, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    if-eq v1, v4, :cond_2b

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v2

    const-string v4, "SAVE_TIME"

    invoke-virtual {v1, v4, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_2b
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Adding image totally took: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v1, v7}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2c
    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eq v1, v2, :cond_2d

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eq v1, v2, :cond_2d

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->BG_SERVICE:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne v1, v2, :cond_2e

    :cond_2d
    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v2, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    if-eq v1, v2, :cond_2e

    invoke-static {v5}, Lcom/motorola/camera/saving/SaveImageService;->commitTotalCaptureTimeKPI(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)V

    :cond_2e
    sget-object v1, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    iget-object v2, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    if-ne v1, v2, :cond_32

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v1

    if-nez v1, :cond_32

    iget-boolean v1, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    if-eqz v1, :cond_32

    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    if-eqz v1, :cond_30

    iget-object v2, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-nez v2, :cond_2f

    goto :goto_15

    :cond_2f
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isDefault()Z

    move-result v2

    if-eqz v1, :cond_31

    if-eqz v2, :cond_31

    goto :goto_16

    :cond_30
    :goto_15
    const-string v1, "Couldn\'t check if was the default alternate shot."

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    :cond_32
    :goto_16
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v0, :cond_33

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "End - addImage"

    invoke-static {v0}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    :cond_33
    :goto_17
    return-void

    :goto_18
    iget-object v2, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "error_message"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "task_id"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_34
    new-instance v0, Lcom/motorola/camera/CameraData;

    iget-wide v4, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-object v1, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v1}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v5, v1, v3}, Lcom/motorola/camera/CameraData;-><init>(JLjava/lang/String;Landroid/os/Bundle;)V

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    return-void
.end method

.method public final addSaveRunnable(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final notifyImageSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/storage/MediaFile;)V
    .locals 19

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v0, v2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    move-object v3, v0

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-interface/range {p2 .. p2}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-boolean v4, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    if-eqz v4, :cond_1

    goto/16 :goto_7

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "SEQ_ID"

    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v5, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iget-object v6, v2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v7, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v8, "ALTERNATE_SHOT"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iget-object v8, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "alternate_shot_index_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v5, :cond_2

    move v5, v9

    goto :goto_0

    :cond_2
    move v5, v8

    :goto_0
    if-eqz v7, :cond_4

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v8

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v9

    :goto_2
    const-string v7, "IS_PRIMARY"

    invoke-virtual {v4, v7, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v5, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eq v5, v7, :cond_5

    move v5, v9

    goto :goto_3

    :cond_5
    move v5, v8

    :goto_3
    const-string v7, "MCF"

    invoke-virtual {v4, v7, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v5, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "task_id"

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_6
    iget-boolean v5, v0, Lcom/motorola/camera/storage/backend/MediaStoreFile;->isFinished:Z

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v7

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    iget-object v10, v0, Lcom/motorola/camera/storage/backend/MediaStoreFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v10}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v10

    if-eqz v5, :cond_8

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, ".dng"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "PROCESSING_URI"

    invoke-virtual {v4, v11, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    const-string v11, "CAPTURE_MODE"

    iget v12, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    invoke-virtual {v4, v11, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v0, Lcom/motorola/camera/storage/backend/MediaStoreFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-static {v0, v10}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v6}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v6, "SaveImageService"

    const-string v12, "notifyImageSaveComplete: unable to determine if current media file is the original one."

    invoke-static {v6, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    invoke-virtual {v2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    sget-boolean v2, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->ENABLE_NEW_ENGINE:Z

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider;->sHandler:Landroid/os/Handler;

    new-instance v6, Lcom/motorola/camera/utility/BoostManager$$ExternalSyntheticLambda1;

    const/4 v12, 0x1

    invoke-direct {v6, v0, v12}, Lcom/motorola/camera/utility/BoostManager$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    :goto_6
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v2

    if-eqz v2, :cond_c

    if-eqz v8, :cond_b

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v6, p0

    iget-object v6, v6, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v14

    iget-object v0, v2, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v6, "THUMB_PATH"

    invoke-virtual {v0, v6}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget-object v13, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    new-instance v12, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;JLjava/lang/Object;I)V

    invoke-virtual {v13, v12}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v9}, Lcom/motorola/camera/saving/SaveImageService;->notifyProcessingUri(Landroid/net/Uri;Ljava/lang/String;Z)V

    :cond_c
    new-instance v0, Landroid/util/Size;

    iget v2, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    iget v6, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    invoke-direct {v0, v2, v6}, Landroid/util/Size;-><init>(II)V

    iget v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    invoke-static {v0, v2}, Lcom/motorola/camera/utility/ColorUtil;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    move v2, v5

    new-instance v5, Lcom/motorola/camera/CameraData;

    move-object v8, v7

    iget-wide v6, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-wide v12, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    move-object v9, v10

    move-object v10, v11

    move-wide v11, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v16

    iget v0, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    move/from16 v17, v0

    move-object/from16 v18, v4

    invoke-direct/range {v5 .. v18}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIILandroid/os/Bundle;)V

    invoke-static {v5, v2}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v1}, Lcom/motorola/camera/saving/FileName;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_CAPTURE_THUMB.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_d
    :goto_7
    return-void
.end method

.method public final removeImageProcessing(Lcom/motorola/camera/CameraData;Z)V
    .locals 6

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    .line 9
    sget-object v1, Lcom/motorola/camera/saving/SavingFileKeepAlive;->INSTANCE:Lcom/motorola/camera/saving/SavingFileKeepAlive;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/saving/SavingFileKeepAlive;->removeSavingJob(Ljava/lang/Integer;)V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->removeExistingMediaStore(Landroid/net/Uri;)Z

    :cond_0
    if-nez p2, :cond_1

    .line 12
    sget-object p0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mPortraitRecords:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v2

    .line 16
    iget-object p0, p1, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string p1, "THUMB_PATH"

    invoke-virtual {p0, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    sget-object v1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 18
    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;JLjava/lang/Object;I)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final writeJpeg(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v0, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    move-object v4, v0

    check-cast v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-virtual {v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExtraOutput:Landroid/net/Uri;

    const-string v0, ";"

    const-string v7, "ImageLength"

    const-string v8, "ImageWidth"

    iget-object v9, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v9, v9, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v11, "DOCUMENT_POINTS"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v12, 0x3

    const/4 v15, 0x0

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_4

    const/16 v16, 0x2

    iget-object v11, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v13, "DOCUMENT_WIDTH"

    invoke-virtual {v11, v13, v15}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v13

    const/16 v18, 0x1

    new-array v14, v13, [B

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v14, v15, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v14

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v19

    new-array v14, v12, [I

    const/16 v12, 0x8

    new-array v15, v12, [I

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    int-to-float v11, v11

    div-float/2addr v12, v11

    move-object/from16 v26, v5

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v11, v5, :cond_0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v12

    float-to-int v5, v5

    aput v5, v15, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    const/16 v24, 0x0

    move-object/from16 v23, v14

    move-object/from16 v22, v15

    invoke-static/range {v19 .. v24}, Lcom/motorola/camera/mcf/DocUtil;->cropRgb([BII[I[IZ)[B

    move-result-object v5

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    aget v10, v23, v18

    aget v11, v23, v16

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v12

    invoke-virtual {v10, v11, v12, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    :try_start_0
    new-instance v11, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    new-instance v12, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v12, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    iget v9, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    iput v9, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    invoke-virtual {v12, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    invoke-virtual {v12, v8, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v7, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/motorola/camera/utility/AndroidImageUtils;->createDocThumbnail([B)[B

    move-result-object v7

    invoke-virtual {v12, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailBytes([B)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/16 v9, 0x8

    :goto_1
    if-ge v8, v9, :cond_1

    aget v11, v22, v8

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    sget-object v8, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_POINTS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v12, v8, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    sget-object v7, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mLookUp:Ljava/util/HashMap;

    move/from16 v9, v18

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v7, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    const/4 v7, 0x0

    invoke-virtual {v12, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray(Z)[B

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-static {v5}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    :goto_3
    :try_start_1
    const-string v7, "SaveImageService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Process failed to write exif of document: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_4
    new-instance v5, Lcom/motorola/camera/saving/XmpData;

    invoke-direct {v5}, Lcom/motorola/camera/saving/XmpData;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/MotUtil;->Base64Encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v7, "http://ns.google.com/photos/1.0/document/"

    iget-object v8, v5, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-nez v8, :cond_2

    sget-object v8, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Landroidx/media3/extractor/text/pgs/PgsParser;

    new-instance v8, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-direct {v8}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;-><init>()V

    iput-object v8, v5, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    :cond_2
    iget-object v8, v5, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-nez v8, :cond_3

    sget-object v8, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Landroidx/media3/extractor/text/pgs/PgsParser;

    new-instance v8, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-direct {v8}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;-><init>()V

    iput-object v8, v5, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    :cond_3
    iget-object v8, v5, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    iget-object v9, v5, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    :try_start_2
    const-string v11, "Data"

    const/4 v12, 0x0

    invoke-virtual {v9, v7, v11, v0, v12}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    const-string v0, "Mime"

    const-string v9, "image/jpeg"

    invoke-virtual {v8, v7, v0, v9, v12}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V
    :try_end_2
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v7, "XmpData"

    const-string v8, "can\'t embed document data"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    new-instance v27, Lcom/motorola/camera/AppFeatures;

    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    iget-object v0, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    const/16 v32, 0x0

    const/16 v33, 0x11

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v33}, Lcom/motorola/camera/AppFeatures;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/AppFeatures;)V

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v12

    goto :goto_7

    :goto_6
    invoke-static {v5}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_4
    move-object/from16 v26, v5

    const/16 v16, 0x2

    const/4 v12, 0x0

    :goto_7
    if-eqz v12, :cond_5

    invoke-virtual {v3, v12}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    move-object v5, v12

    goto :goto_8

    :cond_5
    move-object/from16 v5, v26

    :goto_8
    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    iget-object v7, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    if-eqz v6, :cond_7

    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v5, v0, v2}, Lcom/motorola/camera/saving/SaveImageService;->writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    goto/16 :goto_24

    :cond_7
    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v6, "PANO_SAVE_OUTPUT_BY_ENGINE"

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->createFileDescriptorWithFallback(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/io/FileDescriptor;

    :cond_8
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const-wide/16 v5, 0x0

    :try_start_3
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v5, v6, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    iget v3, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    const/16 v7, 0x9

    const/16 v8, 0x10e

    const/16 v9, 0x5a

    if-ne v3, v7, :cond_b

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v12, 0x0

    invoke-static {v7, v12, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v10, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    if-eq v10, v9, :cond_a

    if-ne v10, v8, :cond_9

    goto :goto_a

    :cond_9
    filled-new-array {v7, v3}, [I

    move-result-object v3

    :goto_9
    const/16 v25, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    filled-new-array {v3, v7}, [I

    move-result-object v3

    goto :goto_9

    :goto_b
    aget v7, v3, v25

    iput v7, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    const/16 v18, 0x1

    aget v3, v3, v18

    iput v3, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    :try_start_4
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v5, v6, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    const/4 v7, 0x0

    goto :goto_f

    :cond_b
    iget-object v3, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v5, "PANO_IMAGE_WIDTH"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v6, "PANO_IMAGE_HEIGHT"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iget v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    if-eq v6, v9, :cond_d

    if-ne v6, v8, :cond_c

    goto :goto_d

    :cond_c
    filled-new-array {v3, v5}, [I

    move-result-object v3

    :goto_c
    const/4 v7, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    filled-new-array {v5, v3}, [I

    move-result-object v3

    goto :goto_c

    :goto_e
    aget v5, v3, v7

    iput v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    const/16 v18, 0x1

    aget v3, v3, v18

    iput v3, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    :goto_f
    iget v3, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentModeSupportP3(I)Z

    move-result v3

    iget-object v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    invoke-static {v0, v5, v7, v3}, Lcom/motorola/camera/saving/SaveImageService;->correctExifInfo(Ljava/io/FileDescriptor;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;ZZ)V

    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->finish()V

    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/saving/SaveImageService;->notifyImageSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/storage/MediaFile;)V

    goto/16 :goto_24

    :cond_e
    const/4 v12, 0x0

    if-nez v5, :cond_f

    const-string v0, "SaveImageService"

    const-string v1, "Jpeg is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    iget-boolean v0, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    if-eqz v0, :cond_11

    iget-boolean v0, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    if-nez v0, :cond_10

    goto :goto_10

    :cond_10
    const/4 v6, 0x0

    goto :goto_11

    :cond_11
    :goto_10
    const/4 v6, 0x1

    :goto_11
    const-wide/32 v7, 0x10000000

    if-eqz v6, :cond_15

    iget-boolean v0, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v0, v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->isUltraHdr()Z

    move-result v0

    if-eqz v0, :cond_12

    move/from16 v11, v16

    const/4 v9, 0x1

    goto :goto_16

    :cond_12
    invoke-static {v2, v5}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v11

    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    sget v13, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->BG_PROCESSING_LIMIT:I

    :try_start_5
    sget-object v13, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    monitor-enter v13
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    iget-object v14, v13, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    if-nez v14, :cond_13

    new-instance v14, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    sget-object v15, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    sget-object v12, Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;->TYPE_PHOTO:Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;

    invoke-direct {v14, v15, v12}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;-><init>(Landroid/content/Context;Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;)V

    iput-object v14, v13, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    goto :goto_12

    :catchall_1
    move-exception v0

    goto :goto_13

    :cond_13
    :goto_12
    iget-object v12, v13, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v13

    invoke-static {v12, v0, v5}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->applyEnhance(Lcom/motorola/camera/provider/photos/PhotosProviderCaller;Lcom/motorola/camera/saving/FileName;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v12
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_15

    :catch_4
    move-exception v0

    goto :goto_14

    :goto_13
    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_4

    :goto_14
    const-string v12, "AutoEnhanceManager"

    const-string v13, "autoEnhance: "

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v12, 0x0

    :goto_15
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v13

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->AUTO_ENHANCE_PROCESSING_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v9

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v10, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    monitor-enter v13

    :try_start_a
    invoke-virtual {v13, v0, v9, v9, v10}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;Ljava/lang/Long;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    monitor-exit v13

    if-nez v12, :cond_14

    const-string v0, "SaveImageService"

    const-string v9, "Auto Enhance failed, saving original jpeg"

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    move-object v12, v11

    const/4 v9, 0x1

    move v11, v0

    goto :goto_16

    :cond_14
    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v0, v7, v8}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    const/4 v9, 0x1

    iput-boolean v9, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    move-object v5, v12

    move-object v12, v11

    const/4 v11, 0x3

    :goto_16
    sget v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->BG_PROCESSING_LIMIT:I

    sget-object v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    iget-object v10, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v10, v10, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {v0, v10}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->removeFromProcessingList(I)V

    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v10, "ANALYTICS_AUTO_ENHANCE_STATE"

    invoke-virtual {v0, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_17

    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    :cond_15
    const/4 v9, 0x1

    const/4 v12, 0x0

    :goto_17
    invoke-static {v2, v5}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    array-length v10, v10

    iput v10, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mDataSize:I

    iget-object v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mActiveVideo:Ljava/io/File;

    if-nez v5, :cond_16

    move v5, v9

    goto :goto_18

    :cond_16
    const/4 v5, 0x0

    :goto_18
    iget-object v10, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz v10, :cond_18

    iget-object v10, v10, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v10, :cond_18

    invoke-virtual {v10}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v10

    if-eqz v5, :cond_18

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq v10, v5, :cond_17

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_DEPTH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq v10, v5, :cond_17

    move v5, v9

    goto :goto_19

    :cond_17
    const/4 v5, 0x0

    :cond_18
    :goto_19
    iget-object v10, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    if-eqz v10, :cond_1a

    sget-object v11, Lcom/motorola/camera/mcf/McfAuxiliaryData;->BINDATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v10, v11}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/mcf/McfAuxBinData;

    if-eqz v10, :cond_1a

    invoke-virtual {v10}, Lcom/motorola/camera/mcf/McfAuxBinData;->isAppXData()Z

    move-result v10

    if-eqz v10, :cond_1a

    if-eqz v5, :cond_1a

    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    invoke-virtual {v5, v11}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/mcf/McfAuxBinData;

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfAuxBinData;->isAppXData()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfAuxBinData;->getAppXId()I

    move-result v10

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfAuxBinData;->getPrimaryLength()I

    move-result v11

    if-lez v11, :cond_1a

    :try_start_c
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    array-length v14, v14

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfAuxBinData;->getPrimary()[B

    move-result-object v15

    array-length v15, v15

    add-int/2addr v14, v15

    invoke-direct {v13, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfAuxBinData;->getPrimary()[B

    move-result-object v5

    invoke-static {v10, v5, v11, v13}, Lcom/motorola/camera/saving/XmpUtil;->addAppXSegments(I[BLjava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_1a

    :catchall_3
    move-exception v0

    move-object/from16 v17, v13

    move-object v13, v11

    goto :goto_1d

    :catch_5
    move-object/from16 v17, v13

    move-object v13, v11

    goto :goto_1e

    :cond_19
    :goto_1a
    invoke-static {v11}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v13}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1f

    :catchall_4
    move-exception v0

    move-object v13, v11

    :goto_1b
    const/16 v17, 0x0

    goto :goto_1d

    :catch_6
    move-object v13, v11

    :goto_1c
    const/16 v17, 0x0

    goto :goto_1e

    :catchall_5
    move-exception v0

    const/4 v13, 0x0

    goto :goto_1b

    :catch_7
    const/4 v13, 0x0

    goto :goto_1c

    :goto_1d
    invoke-static {v13}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static/range {v17 .. v17}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :goto_1e
    invoke-static {v13}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static/range {v17 .. v17}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_1a
    :goto_1f
    iget-object v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v5}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v10, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v10}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v11

    if-eqz v11, :cond_1f

    iget-object v3, v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v13

    if-nez v13, :cond_1c

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_20

    :cond_1b
    const/4 v14, 0x0

    goto :goto_21

    :cond_1c
    :goto_20
    move v14, v9

    :goto_21
    iget-boolean v3, v11, Lcom/motorola/camera/storage/backend/MediaStoreFile;->isFinished:Z

    if-nez v3, :cond_1e

    if-eqz v14, :cond_1d

    goto :goto_22

    :cond_1d
    invoke-virtual {v11, v5}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->setFileName(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/motorola/camera/storage/StorageUtils;->createMediaFileWithFallback(Lcom/motorola/camera/storage/MediaFile;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v10

    iput-object v10, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    goto :goto_23

    :cond_1e
    :goto_22
    iget-object v3, v11, Lcom/motorola/camera/storage/backend/MediaStoreFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->createMediaFileWithFallback(Lcom/motorola/camera/storage/MediaFile;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v10

    :cond_1f
    :goto_23
    iget-boolean v3, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    if-eqz v3, :cond_21

    if-eqz v12, :cond_21

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_AUTO_ENHANCE_KEEP_FILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_21

    if-eqz v6, :cond_21

    new-instance v3, Lcom/motorola/camera/saving/FileName;

    iget-object v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-direct {v3, v5}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    invoke-virtual {v3, v7, v8}, Lcom/motorola/camera/saving/FileName;->removeAttribute(J)Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v3}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/BurstShotFileUtils;->FORMAT_BURST_SUFFIX:Ljava/lang/String;

    const-string v6, "_BURST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "alternate_shot_index_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->values()[Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/motorola/camera/BurstShotFileUtils;->generateBurstSuffix(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    :cond_20
    move-object v4, v10

    check-cast v4, Lcom/motorola/camera/storage/backend/MediaStoreFile;

    invoke-virtual {v3}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v4, Lcom/motorola/camera/storage/backend/MediaStoreFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->createMediaFileWithFallback(Lcom/motorola/camera/storage/MediaFile;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v3

    invoke-static {v12, v3, v2}, Lcom/motorola/camera/saving/SaveImageService;->writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    :cond_21
    iget-boolean v3, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    if-eqz v3, :cond_22

    const/4 v7, 0x0

    iput v7, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    :cond_22
    invoke-static {v0, v10, v2}, Lcom/motorola/camera/saving/SaveImageService;->writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {v1, v2, v10}, Lcom/motorola/camera/saving/SaveImageService;->notifyImageSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/storage/MediaFile;)V

    :cond_23
    :goto_24
    return-void
.end method
