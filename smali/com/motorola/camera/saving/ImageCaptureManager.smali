.class public final Lcom/motorola/camera/saving/ImageCaptureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mLastCaptureTimestamp:J

.field public static mMaxFallBackCapturesSystemProp:I

.field public static mMinShotIntervalSystemProp:I

.field public static sLastCleanup:J


# instance fields
.field public mActivePhotoDivert:Lcom/motorola/camera/mediacodec/ActivePhotoJpegDivert;

.field public mAdobeScanCaptureListener:Lcom/motorola/camera/saving/ImageCaptureManager$AdobeScanCaptureListener;

.field public final mCaptureHolderMap:Ljava/util/LinkedHashMap;

.field public final mCaptureListeners:Ljava/util/WeakHashMap;

.field public final mCaptureRecordMap:Ljava/util/LinkedHashMap;

.field public final mHandler:Landroid/os/Handler;

.field public mImageReceivedListener:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

.field public mImageReviewListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;

.field public mIsCanCapture:Z

.field public mIsSaveQueueFull:Z

.field public final mMaxConcurrentCapturesSystemProp:I

.field public final mPendingUriMediaData:Ljava/util/Map;

.field public mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

.field public mReprocCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

.field public final mReprocWriterMap:Ljava/util/HashMap;

.field public final mSwJpegImageReceivedListenerSet:Ljava/util/Set;

.field public final mUnprocessedImages:Ljava/util/HashMap;

.field public final mZslCaptureMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

.field public final mZslResultMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;


# direct methods
.method public static -$$Nest$smonImage(Ljava/lang/String;Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V
    .locals 18

    move-object/from16 v0, p1

    const-class v1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v3, v0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    sget-boolean v5, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_JPEG_REQUEST:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_APP_BG_JOB_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_YUV_CAPTURE:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v5, v5, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    :goto_0
    invoke-static {v3, v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureSeqId(J)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatSupportedByCurrentMode()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    if-ne v7, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iget-object v7, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v15, v14, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v15, v15, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne v15, v5, :cond_3

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v17, v11

    const/16 v16, 0x0

    goto :goto_4

    :cond_3
    const/4 v15, 0x0

    goto :goto_3

    :goto_4
    iget-wide v10, v14, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    cmp-long v10, v10, v3

    if-nez v10, :cond_4

    const/4 v10, 0x1

    goto :goto_5

    :cond_4
    const/4 v10, 0x0

    :goto_5
    iget-object v11, v14, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    move-object/from16 v9, p0

    invoke-static {v11, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    if-nez v15, :cond_5

    if-eqz v10, :cond_e

    :cond_5
    if-eqz v6, :cond_8

    iget-object v11, v0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v11}, Landroid/media/Image;->getFormat()I

    move-result v11

    const/16 v8, 0x20

    if-ne v11, v8, :cond_6

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    if-nez v8, :cond_7

    iget-object v11, v14, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-eqz v11, :cond_9

    :cond_7
    if-eqz v8, :cond_e

    iget-object v8, v14, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-nez v8, :cond_e

    goto :goto_7

    :cond_8
    iget-object v8, v14, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-nez v8, :cond_e

    :cond_9
    :goto_7
    iget-boolean v8, v14, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    if-eqz v8, :cond_a

    if-eqz v10, :cond_a

    if-nez v15, :cond_b

    :cond_a
    if-nez v8, :cond_c

    if-eqz v10, :cond_c

    :cond_b
    move-object v11, v14

    goto :goto_8

    :cond_c
    if-nez v10, :cond_d

    if-eqz v15, :cond_e

    :cond_d
    move-object v12, v14

    :cond_e
    move-object/from16 v11, v17

    goto :goto_2

    :cond_f
    move-object/from16 v9, p0

    move-object/from16 v17, v11

    const/16 v16, 0x0

    :goto_8
    if-eqz v11, :cond_2

    goto :goto_9

    :cond_10
    move-object/from16 v17, v11

    const/16 v16, 0x0

    :goto_9
    if-nez v11, :cond_11

    if-eqz v12, :cond_11

    const/4 v5, 0x1

    goto :goto_a

    :cond_11
    const/4 v5, 0x0

    :goto_a
    if-eqz v5, :cond_12

    const/4 v6, 0x0

    iput-boolean v6, v12, Lcom/motorola/camera/saving/CaptureHolder;->mCanReleaseImage:Z

    move-object v11, v12

    :cond_12
    if-eqz v11, :cond_13

    invoke-static {v11, v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->processOnImage(Lcom/motorola/camera/saving/CaptureHolder;Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V

    invoke-static {v11}, Lcom/motorola/camera/saving/ImageCaptureManager;->notifyJpegOnlyImageReceiver(Lcom/motorola/camera/saving/CaptureHolder;)V

    :cond_13
    if-eqz v11, :cond_14

    if-eqz v5, :cond_16

    iget-boolean v5, v11, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    if-eqz v5, :cond_16

    :cond_14
    iget-object v5, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_15

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    :cond_15
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget-object v0, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReceivedListener:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_17

    iget-object v0, v0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/saving/ImageCaptureManager;->setImageReceivedListener(Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;)V

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_17
    monitor-exit v1

    return-void

    :goto_b
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureListeners:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/motorola/camera/saving/ImageCaptureManager$1;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/saving/ImageCaptureManager$1;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    new-instance v0, Lcom/motorola/camera/saving/ImageCaptureManager$1;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/saving/ImageCaptureManager$1;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslResultMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mAdobeScanCaptureListener:Lcom/motorola/camera/saving/ImageCaptureManager$AdobeScanCaptureListener;

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReceivedListener:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mSwJpegImageReceivedListenerSet:Ljava/util/Set;

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mActivePhotoDivert:Lcom/motorola/camera/mediacodec/ActivePhotoJpegDivert;

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReviewListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;

    iput-boolean v1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsCanCapture:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImageCaptureManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    const-string v0, "com.motorola.camera.max_concurrent_captures"

    invoke-static {v2, v0}, Lcom/motorola/camera/shared/SystemSetting;->getInt(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mMaxConcurrentCapturesSystemProp:I

    const-string p0, "com.motorola.camera.max_fall_back_captures"

    invoke-static {v2, p0}, Lcom/motorola/camera/shared/SystemSetting;->getInt(ILjava/lang/String;)I

    move-result p0

    sput p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mMaxFallBackCapturesSystemProp:I

    const-string p0, "com.motorola.camera.min_shot_interval"

    invoke-static {v2, p0}, Lcom/motorola/camera/shared/SystemSetting;->getInt(ILjava/lang/String;)I

    move-result p0

    sput p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mMinShotIntervalSystemProp:I

    return-void
.end method

.method public static declared-synchronized addCaptureRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    .locals 5

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mFrameTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->MCF_NEW_FRAME:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfCapture:Z

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mLastCaptureTimestamp:J

    :cond_1
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v3, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->saveImageBeforeProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    :cond_2
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CAPTURE_QUEUE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized canDoNextCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Z
    .locals 17

    const-string v0, "canDoNextCapture currMode="

    const-string v1, "canDoNextCapture capRecordCnt="

    const-class v2, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    monitor-exit v2

    return v4

    :cond_0
    :try_start_1
    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseAppShutterControl:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x23

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v15, v4

    goto/16 :goto_6

    :cond_2
    :goto_0
    invoke-static {}, Lcom/motorola/camera/saving/ImageCaptureManager;->getTotalCaptureCount()I

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v5

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v6

    move-object/from16 v7, p0

    invoke-static {v7, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->getMaxAllowedJobs(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/mcf/Mcf$SceneMode;)I

    move-result v8

    sget v9, Lcom/motorola/camera/saving/ImageCaptureManager;->mMaxFallBackCapturesSystemProp:I

    const/4 v10, 0x0

    if-lez v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v7}, Lcom/motorola/camera/saving/ImageCaptureManager;->isFallBackAllowed(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget v7, Lcom/motorola/camera/saving/ImageCaptureManager;->mMaxFallBackCapturesSystemProp:I

    if-nez v7, :cond_4

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getMaxFallBackCount(Lcom/motorola/camera/mcf/Mcf$SceneMode;)I

    move-result v9

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_4
    move v9, v10

    :goto_1
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/JsonConfig;->getSnapshotMinInterval(Ljava/lang/String;)I

    move-result v7

    sget v11, Lcom/motorola/camera/saving/ImageCaptureManager;->mMinShotIntervalSystemProp:I

    if-lez v11, :cond_5

    move v7, v11

    :cond_5
    sget-boolean v11, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v11, :cond_6

    const-string v12, "ImageCaptureManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxAllowedJobs="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxFallBackCount="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " minShotInterval="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-int/2addr v8, v9

    if-ge v3, v8, :cond_7

    move v1, v4

    goto :goto_2

    :cond_7
    move v1, v10

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sget-wide v12, Lcom/motorola/camera/saving/ImageCaptureManager;->mLastCaptureTimestamp:J

    sub-long/2addr v8, v12

    int-to-long v12, v7

    cmp-long v3, v8, v12

    if-gtz v3, :cond_9

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    iget-object v14, v14, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lez v14, :cond_8

    goto :goto_3

    :cond_8
    move v14, v10

    goto :goto_4

    :cond_9
    :goto_3
    move v14, v4

    :goto_4
    and-int/2addr v1, v14

    if-gez v3, :cond_a

    if-eqz p1, :cond_a

    sget-object v3, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v14, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER_BLOCKED_TIMEOUT:Lcom/motorola/camera/Notifier$TYPE;

    sub-long/2addr v12, v8

    move v15, v4

    move/from16 v16, v5

    const-wide/16 v4, 0xa

    add-long/2addr v12, v4

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object v3, v3, Lcom/motorola/camera/Notifier;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;

    const/4 v13, 0x0

    invoke-direct {v12, v14, v13, v10}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;I)V

    invoke-virtual {v3, v12, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_a
    move v15, v4

    move/from16 v16, v5

    :goto_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorToneShotLimit()Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    sget-object v3, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    invoke-virtual {v3}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->hasProcessingCapture()Z

    move-result v3

    xor-int/2addr v3, v15

    and-int/2addr v1, v3

    :cond_b
    if-eqz v11, :cond_c

    const-string v3, "ImageCaptureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " currScene="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " gap="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " threshold="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " canCapture="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iput-boolean v1, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsCanCapture:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v1

    :goto_6
    monitor-exit v2

    return v15

    :goto_7
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static canSaveSingleShot(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;)Z
    .locals 4

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    const/4 v1, 0x4

    div-int/2addr v0, v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-class v2, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v3, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    add-int/2addr v3, v1

    invoke-static {v0, v3, p0}, Lcom/motorola/camera/saving/SaveImageService;->canSave(IILcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized checkForProcessing(Lcom/motorola/camera/saving/CaptureHolder;)V
    .locals 7

    const-string v0, "checkForProcessing -> no record matching "

    const-class v1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRawOnly()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    const/4 v2, 0x1

    :try_start_1
    iget-object v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v3}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v3, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_3

    monitor-exit v1

    return-void

    :cond_3
    :try_start_3
    iget-boolean v3, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v3, :cond_8

    iget-boolean v3, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    if-eqz v3, :cond_6

    iput-object p0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegMakerNote:[B

    iput-object v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegMakerNote:[B

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegAppX:[B

    iput-object v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegAppX:[B

    iput-boolean v2, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/saving/CaptureHolder;

    iget-boolean v4, v4, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    if-nez v4, :cond_4

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpegReqSent:Z

    goto :goto_1

    :cond_6
    invoke-static {p0}, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->wrap(Lcom/motorola/camera/saving/CaptureHolder;)Lcom/motorola/camera/saving/SoftJpegCaptureHolder;

    move-result-object v2

    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    sget-object v3, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v3, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    iget-object v4, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_7

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegMakerNote:[B

    iput-object p0, v2, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegMakerNote:[B

    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegAppX:[B

    iput-object p0, v2, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegAppX:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-void

    :cond_8
    :goto_1
    :try_start_4
    sget-object v3, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    if-ne v3, v4, :cond_a

    new-instance v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v3, v0}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    sget-object v4, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-boolean v4, v4, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    if-nez v4, :cond_9

    iget v4, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMsCount:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMsCount:I

    goto :goto_2

    :cond_9
    iput-boolean v2, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFull:Z

    :goto_2
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v4, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMsCount:I

    invoke-static {v2, v4}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;I)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v2

    iput-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iput-object v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v3}, Lcom/motorola/camera/saving/ImageCaptureManager;->addCaptureRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    goto :goto_3

    :cond_a
    move-object v3, v0

    :goto_3
    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v4, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    if-eqz v4, :cond_b

    new-instance v5, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/16 v6, 0x1a

    invoke-direct {v5, v6, v2, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_b
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;

    iget-object v4, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;->onJpegImageReceived(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    goto :goto_4

    :cond_c
    iget-object p0, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne p0, v0, :cond_d

    invoke-static {v3, p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->processCapture(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_d
    monitor-exit v1

    return-void

    :cond_e
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No CaptureHolder found in map for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    const-string v3, "ImageCaptureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCanReleaseImage:Z

    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/saving/CaptureHolder;

    iput-boolean v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCanReleaseImage:Z

    invoke-static {v3}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    goto :goto_5

    :cond_f
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    iget-object p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v1

    return-void

    :goto_6
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public static checkSaveQueueIsFull(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/motorola/camera/saving/SaveImageService;->canSave(IILcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;)Z

    move-result p0

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v2, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iput-boolean v1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    :goto_0
    sget-object p0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized clearZslCaptureMap()V
    .locals 4

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-static {v3}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getCaptureHolderForSeqId(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/saving/CaptureHolder;
    .locals 5

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v4, v3, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v4, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    .locals 4

    const-string v0, "ImageCaptureRecord not found for "

    const-class v1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    return-object v2

    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/NoSuchElementException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getCaptureSeqId(J)Ljava/lang/Integer;
    .locals 5

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-wide v3, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureTimestamp:J

    cmp-long v3, v3, p0

    if-nez v3, :cond_0

    iget-object p0, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getExtraMetaForMcf(Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;
    .locals 6

    const-string v0, "ImageCaptureManager"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/motorola/camera/IqConfigManager;->getLuxStdForCaptureResult(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to add extra metadata for mcf capture result, exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareQCom()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_1
    move-object p1, v2

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraTotalResults()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->QTI_SENSOR_BPS_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    :goto_2
    if-eqz p1, :cond_5

    :try_start_1
    sget-object v3, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MOT_AUX_BPS_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to add Aux BPS Gain to extra meta, exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraTotalResults()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/TotalCaptureResult;

    if-nez p0, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareQCom()Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    sget-object p1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->QCOM_AEC_LINEAR_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, [F

    :goto_4
    if-eqz v2, :cond_c

    array-length p0, v2

    const/4 p1, 0x3

    if-ne p0, p1, :cond_c

    :try_start_2
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    array-length p1, v2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, p1, :cond_b

    aget v4, v2, v3

    float-to-double v4, v4

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_6

    :cond_b
    sget-object p1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MOT_AUX_LINEAR_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to add Aux Linear Gain to extra meta, exception: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getSequenceListForRoot(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Ljava/util/ArrayList;
    .locals 6

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v4, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget v5, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getTotalCaptureCount()I
    .locals 5

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v3, v2, Lcom/motorola/camera/saving/SaveImageService;->mForegroundProcessingMediaDataMap:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/util/HashSet;

    iget-object v2, v2, Lcom/motorola/camera/saving/SaveImageService;->mForegroundProcessingMediaDataMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE_SAME_PROCESS:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/jms/BgJobManager;->getPendingJobs()Ljava/util/HashSet;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public static declared-synchronized isFallBackAllowed(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 3

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;->activePhysicalCameraId:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraType(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFallBackISOThreshold:[F

    invoke-static {v1}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v1

    aget p0, p0, v1

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/JsonConfig;->isFallBackScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/IqConfigManager;->mLastIso:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v1, v1, p0

    if-ltz v1, :cond_1

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized notifyJpegOnlyImageReceiver(Lcom/motorola/camera/saving/CaptureHolder;)V
    .locals 4

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-boolean v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mSwJpegImageReceivedListenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda1;

    iget-object v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda1;->onSwJpegImageReceived(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 12

    const-string v0, "No capture record found for timestamp:"

    const-string v1, "No CaptureHolders for "

    const-class v2, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string p0, "ImageCaptureManager"

    const-string p1, "CaptureRequest tag is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v5

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :try_start_1
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_1

    const-string p0, "ImageCaptureManager"

    const-string p1, "CaptureResult timestamp is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v5

    :cond_1
    const/4 v7, 0x1

    :try_start_2
    invoke-static {v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfCapture:Z

    if-eqz v6, :cond_3

    iget-boolean v0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/saving/CaptureHolder;

    iput-object p2, v0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHoldersLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {p0, p1, p2, v4, v7}, Lcom/motorola/camera/saving/ImageCaptureManager;->sendMcfOnCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Z)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v2

    return v7

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :cond_3
    iget-object p0, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_4

    const-string p0, "ImageCaptureManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v2

    return v5

    :cond_4
    :try_start_7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz p1, :cond_5

    monitor-exit v2

    return v7

    :cond_5
    :try_start_8
    iget-boolean p1, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    if-nez p1, :cond_9

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x3b9aca00

    cmp-long p1, v8, v10

    if-ltz p1, :cond_6

    move p1, v7

    goto :goto_0

    :cond_6
    move p1, v5

    :goto_0
    if-eqz p1, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNotifyShutter:Z

    if-eqz p1, :cond_9

    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$InstanceType;->UNUSED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-ne p1, v1, :cond_9

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->notifyShutter()V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocServiceMode()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    iget-boolean p1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNotifyShutter:Z

    if-eqz p1, :cond_9

    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$InstanceType;->UNUSED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-ne p1, v1, :cond_9

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->notifyShutter()V

    :cond_9
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v0, p1, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-nez v0, :cond_a

    iput-object p2, p1, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    goto :goto_2

    :cond_b
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_c

    const-string p0, "ImageCaptureManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No CaptureHolder matching seqId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v2

    return v5

    :cond_c
    :try_start_9
    iget-object p0, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz p0, :cond_d

    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mLongPressed:Z

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mIsDragging:Z

    if-eqz p2, :cond_d

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_CAPTURE_RAW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_d
    invoke-static {p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->checkForProcessing(Lcom/motorola/camera/saving/CaptureHolder;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit v2

    return v7

    :catch_0
    :try_start_a
    const-string p0, "ImageCaptureManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit v2

    return v7

    :goto_3
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p0
.end method

.method public static declared-synchronized onCaptureStarted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;J)Z
    .locals 15

    move-wide/from16 v0, p2

    const-string v2, "No capture record found for timestamp:"

    const-string v3, "Skipping matching unprocessed image with timestamp "

    const-string v4, "No capture holders for "

    const-class v5, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v5

    :try_start_0
    sget-object v6, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const/4 v8, 0x0

    if-nez v7, :cond_0

    const-string p0, "ImageCaptureManager"

    const-string v0, "CaptureRequest tag is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return v8

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v11, Lcom/motorola/camera/AppFeatures$Feature;->AUTO_NV_SLOW_CAPTURE_UI:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v9, v9, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v9, Ljava/util/EnumSet;

    invoke-virtual {v9, v11}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->supportShutterAnimationUIForPortraitMode()Z

    move-result v9

    if-nez v9, :cond_2

    move v9, v10

    goto :goto_1

    :cond_2
    :goto_0
    move v9, v8

    :goto_1
    if-eqz v9, :cond_3

    invoke-static/range {p1 .. p3}, Lcom/motorola/camera/saving/ImageCaptureManager;->requestPostView(Landroid/hardware/camera2/CaptureRequest;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    invoke-static {v7}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v2
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v9, v7, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v9, :cond_4

    iget-boolean v9, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfCapture:Z

    if-eqz v9, :cond_4

    iget-boolean v9, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v9, :cond_4

    monitor-exit v5

    return v10

    :cond_4
    :try_start_4
    iget-boolean v9, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    const-wide/16 v11, 0x0

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/motorola/camera/saving/ImageCaptureManager;->pruneOldUnprocessedImages()V

    iget-object v9, v7, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v9, :cond_5

    iget-wide v13, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureTimestamp:J

    cmp-long v9, v13, v11

    if-nez v9, :cond_5

    iget-object v9, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v7, v9}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v7, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget v9, v9, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mRequestId:I

    iget-object v13, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v13, v13, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget v13, v13, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mRequestId:I

    if-ne v9, v13, :cond_5

    iput-wide v0, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureTimestamp:J

    :cond_5
    iget-object v9, v6, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_6

    const-string p0, "ImageCaptureManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v5

    return v8

    :cond_6
    :try_start_5
    iget-boolean v4, v6, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    if-nez v4, :cond_7

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->onCaptureStarted()V

    :cond_7
    new-instance v4, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-direct {v4}, Lcom/motorola/camera/saving/CaptureHolder;-><init>()V

    iput-object v7, v4, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-object/from16 v13, p1

    iput-object v13, v4, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iput-object p0, v4, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    iput-wide v0, v4, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v4, Lcom/motorola/camera/saving/CaptureHolder;->mCaptureTimestamp:J

    iget-object p0, v7, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object p0, v4, Lcom/motorola/camera/saving/CaptureHolder;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iget-boolean p0, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsStarTrail:Z

    iput-boolean p0, v4, Lcom/motorola/camera/saving/CaptureHolder;->mIsStarTrail:Z

    iget-boolean p0, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz p0, :cond_8

    iput-boolean v10, v4, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    :cond_8
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, v6, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    iget-wide v13, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureTimestamp:J

    cmp-long v9, v13, v11

    if-eqz v9, :cond_9

    cmp-long v9, v13, v0

    if-eqz v9, :cond_9

    iget-boolean v2, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v2, :cond_9

    const-string p0, "ImageCaptureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " with request "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v5

    return v10

    :cond_9
    :try_start_6
    invoke-interface {p0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a

    iget-object p0, v6, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-static {v4, v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->processOnImage(Lcom/motorola/camera/saving/CaptureHolder;Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V

    invoke-static {v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->notifyJpegOnlyImageReceiver(Lcom/motorola/camera/saving/CaptureHolder;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_b
    monitor-exit v5

    return v10

    :catch_0
    :try_start_7
    const-string p0, "ImageCaptureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v5

    return v10

    :goto_2
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public static declared-synchronized onZslImage(Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V
    .locals 5

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    new-instance v2, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-direct {v2}, Lcom/motorola/camera/saving/CaptureHolder;-><init>()V

    iput-object p0, v2, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    iget-object p0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslResultMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iput-object p0, v2, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    iget-wide v3, v2, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static processCapture(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v3, "REVIEW_REQUIRED"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v4, "REVIEW_ACCEPT"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v5, "REVIEW_ACCEPT"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/saving/CaptureHolder;

    iget-boolean v9, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-eqz v9, :cond_0

    invoke-virtual {v5, v8}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData(Z)Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object v9

    goto :goto_0

    :cond_0
    move-object v9, v7

    :goto_0
    iput-boolean v8, v5, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    goto/16 :goto_8

    :cond_1
    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-le v5, v8, :cond_e

    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->isDepthCaptureInstance()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    if-eqz v5, :cond_2

    sget-object v9, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v5, v9}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/mcf/McfDepthRender;

    goto :goto_1

    :cond_2
    move-object v5, v7

    :goto_1
    if-eqz v5, :cond_5

    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v7

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v12, v11, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v12, v12, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget v12, v12, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceTag:I

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfDepthRender;->getInstance()Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    move-result-object v13

    iget v13, v13, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceTag:I

    if-ne v12, v13, :cond_3

    move-object v10, v11

    goto :goto_3

    :cond_3
    invoke-virtual {v11}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData()Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/motorola/camera/saving/ImageDataHolder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/Buffer;->capacity()I

    move-result v13

    new-array v13, v13, [B

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    iget-object v13, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    sget-object v14, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;->DEPTH_RENDER_ORIGINAL:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iput-boolean v8, v11, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    goto :goto_2

    :cond_4
    move-object v5, v10

    goto :goto_7

    :cond_5
    iget-boolean v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v5, :cond_a

    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v9, v7

    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/saving/CaptureHolder;

    iget-boolean v11, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    if-eqz v11, :cond_7

    iget-boolean v11, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpegReqSent:Z

    if-nez v11, :cond_7

    iget-boolean v11, v10, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    if-eqz v11, :cond_7

    goto :goto_5

    :cond_7
    iget-boolean v11, v10, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    if-nez v11, :cond_8

    if-nez v9, :cond_8

    iget-object v11, v10, Lcom/motorola/camera/saving/CaptureHolder;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne v11, v0, :cond_8

    iput-boolean v8, v10, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    :goto_5
    move-object v9, v10

    :cond_8
    iget-boolean v11, v10, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    if-eqz v11, :cond_6

    iput-boolean v8, v10, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    goto :goto_4

    :cond_9
    :goto_6
    move-object v5, v9

    goto :goto_7

    :cond_a
    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v10, v9, Lcom/motorola/camera/saving/CaptureHolder;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne v10, v0, :cond_b

    iput-boolean v8, v9, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    goto :goto_6

    :cond_c
    move-object v5, v7

    :goto_7
    if-nez v5, :cond_d

    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/saving/CaptureHolder;

    iput-boolean v8, v9, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    :cond_d
    move-object v9, v7

    goto :goto_8

    :cond_e
    move-object v5, v7

    move-object v9, v5

    :goto_8
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData()Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object v10

    sget-object v11, Lcom/motorola/camera/analytics/AnalyticsHelper;->KPI_LIST:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-nez v5, :cond_f

    goto :goto_9

    :cond_f
    sget-object v11, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v11}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    if-eqz v5, :cond_11

    iget-object v11, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v12, "ANALYTICS_LENS_FOCUS_DISTANCE"

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v13, v5

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_9

    :cond_10
    move-object v10, v7

    :cond_11
    :goto_9
    iget-boolean v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    if-eqz v5, :cond_12

    iget-boolean v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v5, :cond_12

    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v10, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    invoke-virtual {v5, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v5, v5, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    iget-object v10, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-interface {v5, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    invoke-virtual {v5}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData()Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object v10

    :cond_12
    if-nez v10, :cond_13

    iget-boolean v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-eqz v5, :cond_13

    if-nez v9, :cond_13

    goto/16 :goto_14

    :cond_13
    iget-boolean v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    if-eqz v5, :cond_18

    if-nez v10, :cond_15

    if-eqz v9, :cond_14

    goto :goto_a

    :cond_14
    const-string v0, "ImageCaptureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BG-Process Job is cancelled.Both Data and raw data are empty for sequence ID ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Capture Record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/jms/BgJobManager;->cancelJob(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    :try_start_0
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f1200d3

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-boolean v8, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    invoke-static {v2, v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :cond_15
    move-object v9, v10

    :goto_a
    iput-boolean v6, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    iput-boolean v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    new-instance v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v2, v1, v0, v9}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V

    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_17

    iget-object v0, v0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v3, "ERROR_CASE"

    invoke-virtual {v0, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {v1, v2}, Lcom/motorola/camera/saving/SaveImageService;->notifyFailedBgShot(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    return-void

    :cond_16
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_17
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v2, v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->startBackgroundJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    return-void

    :cond_18
    if-nez v2, :cond_1e

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-eqz v2, :cond_19

    invoke-static {v1, v0, v9}, Lcom/motorola/camera/saving/ImageCaptureManager;->saveImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V

    :cond_19
    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    if-eqz v2, :cond_1a

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    if-eqz v2, :cond_1a

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpegReqSent:Z

    if-nez v2, :cond_1a

    move v2, v8

    goto :goto_b

    :cond_1a
    move v2, v6

    :goto_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRawOnly()Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-static {v1, v0, v10}, Lcom/motorola/camera/saving/ImageCaptureManager;->saveImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V

    :cond_1b
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    move v3, v8

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/saving/CaptureHolder;

    if-eqz v3, :cond_1c

    iget-boolean v3, v4, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    if-eqz v3, :cond_1c

    goto :goto_c

    :cond_1c
    move v3, v6

    goto :goto_d

    :cond_1d
    if-eqz v3, :cond_2b

    if-nez v2, :cond_2b

    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    return-void

    :cond_1e
    if-eqz v4, :cond_27

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance v2, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;

    invoke-direct {v2}, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;-><init>()V

    iput-boolean v8, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-direct {v0, v1, v3, v10}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExtraOutput:Landroid/net/Uri;

    const/4 v4, -0x1

    if-nez v3, :cond_23

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v5, v0

    invoke-static {v0, v6, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v5, :cond_22

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v5, v4, :cond_22

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v9, v4, :cond_1f

    goto :goto_f

    :cond_1f
    int-to-double v10, v5

    int-to-double v12, v9

    mul-double/2addr v10, v12

    const v5, 0xc800

    int-to-double v12, v5

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v5, v9

    const/16 v9, 0x8

    if-gt v5, v9, :cond_20

    :goto_e
    if-ge v8, v5, :cond_21

    shl-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_20
    add-int/lit8 v5, v5, 0x7

    div-int/2addr v5, v9

    mul-int/lit8 v8, v5, 0x8

    :cond_21
    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length v5, v0

    invoke-static {v0, v6, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    const-string v3, "MotoCameraUtil"

    const-string v5, "Got oom exception "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_f
    if-eqz v7, :cond_24

    sget-object v0, Lcom/motorola/camera/settings/CaptureIntent;->INTENT_INLINE:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    sget-object v3, Lcom/motorola/camera/settings/CaptureIntent;->INTENT_INLINE:Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v3, "data"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v2, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mIntent:Landroid/content/Intent;

    goto :goto_10

    :cond_23
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    :cond_24
    :goto_10
    iput v4, v2, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mResult:I

    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSetResultListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_26

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ACTIVITY_RESULT"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_11

    :cond_25
    invoke-static {v1, v0, v10}, Lcom/motorola/camera/saving/ImageCaptureManager;->saveImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-eqz v2, :cond_26

    invoke-static {v1, v0, v9}, Lcom/motorola/camera/saving/ImageCaptureManager;->saveImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V

    :cond_26
    :goto_11
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    return-void

    :cond_27
    if-eqz v3, :cond_28

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-direct {v0, v1, v2, v10}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->processExif()V

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    return-void

    :cond_28
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReviewListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;

    if-eqz v0, :cond_2b

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    monitor-enter v2

    :try_start_2
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v4

    invoke-static {v1, v0, v3, v4}, Lcom/motorola/camera/Util;->undoCorrectOrientationRelativeToSensor(IIIZ)I

    move-result v13

    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v3, v3, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_29

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    goto :goto_12

    :catchall_0
    move-exception v0

    goto :goto_13

    :cond_29
    :goto_12
    invoke-virtual {v10}, Lcom/motorola/camera/saving/ImageDataHolder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/high16 v3, 0x3e800000    # 0.25f

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v1, v0}, Lcom/motorola/camera/Util;->loadThumbnail(ILjava/nio/ByteBuffer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2a

    const-string v0, "PostCaptureReview"

    const-string v1, "Unable to obtain post capture frame from JPEG data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-void

    :cond_2a
    neg-int v1, v13

    int-to-float v1, v1

    :try_start_3
    invoke-static {v0, v1, v6, v6}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZ)Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v1, v3, v1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0, v11, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    iput v4, v2, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    invoke-virtual {v10}, Lcom/motorola/camera/saving/ImageDataHolder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v12

    iget-object v14, v2, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v15, v2, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iget-boolean v0, v2, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWmDrawRequired:Z

    move/from16 v16, v0

    invoke-static/range {v11 .. v16}, Lcom/motorola/camera/watermark/WatermarkEditor;->loadWatermarkBitmap(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;Z)Z

    move-result v0

    iput-boolean v0, v2, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWmDrawRequired:Z

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->checkState()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-void

    :goto_13
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2b
    :goto_14
    return-void
.end method

.method public static declared-synchronized processOnImage(Lcom/motorola/camera/saving/CaptureHolder;Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V
    .locals 5

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, p1, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaRawImageFormat()I

    move-result v4

    if-ne v2, v4, :cond_2

    iput-boolean v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mIsQcfa:Z

    iput-object p1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    iput-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_SHOT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mIsDragging:Z

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mLongPressed:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_CAPTURE_RAW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v4, 0x100

    if-ne v2, v4, :cond_4

    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_SHOT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_1

    :cond_3
    iput-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mIsDragging:Z

    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mLongPressed:Z

    if-eqz v2, :cond_4

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_CAPTURE_RAW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_4
    :goto_1
    iget-object v1, p1, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    iput-object p1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    goto :goto_2

    :cond_5
    iput-object p1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    :goto_2
    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->checkForProcessing(Lcom/motorola/camera/saving/CaptureHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static pruneOldUnprocessedImages()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    sget-wide v2, Lcom/motorola/camera/saving/ImageCaptureManager;->sLastCleanup:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    sput-wide v0, Lcom/motorola/camera/saving/ImageCaptureManager;->sLastCleanup:J

    :cond_0
    sget-wide v2, Lcom/motorola/camera/saving/ImageCaptureManager;->sLastCleanup:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x14

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long/2addr v4, v2

    cmp-long v2, v4, v0

    if-gez v2, :cond_4

    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-wide v6, Lcom/motorola/camera/saving/ImageCaptureManager;->sLastCleanup:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Pruning "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " images for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ImageCaptureManager"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-virtual {v5}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_3
    sput-wide v0, Lcom/motorola/camera/saving/ImageCaptureManager;->sLastCleanup:J

    :cond_4
    return-void
.end method

.method public static releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V
    .locals 3

    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCanReleaseImage:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V

    :cond_1
    iput-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V

    iput-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    :cond_3
    return-void
.end method

.method public static declared-synchronized removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    .locals 5

    const-string v0, "ImageCaptureRecord mCaptureRecordMap not found for "

    const-class v1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v3, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    if-eqz v3, :cond_3

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-static {v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v0, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-static {v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    goto :goto_1

    :cond_1
    iget-object v0, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CAPTURE_QUEUE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v3

    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageCaptureRecord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mCaptureHolderMap not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v2, Ljava/util/NoSuchElementException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static requestPostView(Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 6

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPostViewRequested:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPostViewRequested:Z

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    :cond_0
    move-wide v4, p1

    new-instance v0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p1, :cond_1

    iget v1, p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    iget v2, p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceType:I

    iget v3, p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/mcf/McfParameters;->requestPostView(IIIJ)V

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    shl-int/lit8 v1, p0, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/mcf/McfParameters;->requestPostView(IIIJ)V

    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->setEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    :cond_2
    return-void

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No capture record found for timestamp:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageCaptureManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static saveImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V
    .locals 8

    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    new-instance v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v1, p0, p1, p2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpegReqSent:Z

    if-nez p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iget-boolean v4, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v4, :cond_5

    if-nez p1, :cond_5

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    invoke-virtual {v4}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData()Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/saving/ImageDataHolder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v4

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-direct {v5, v6, v7, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    :try_start_0
    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Lcom/motorola/camera/saving/ImageDataHolder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    new-instance v6, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v6, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v5, v5, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegMakerNote:[B

    if-eqz v5, :cond_2

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteByteArray([B)V

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v5, v5, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegAppX:[B

    if-eqz v5, :cond_3

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setApp6ByteArray([B)V

    :cond_3
    iget v5, p2, Lcom/motorola/camera/saving/ImageDataHolder;->mWidth:I

    if-lez v5, :cond_4

    iget v6, p2, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    if-lez v6, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget p2, p2, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v6, "ImageWidth"

    invoke-virtual {v4, v6, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ImageLength"

    invoke-virtual {v4, v6, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "PixelXDimension"

    invoke-virtual {v4, v6, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "PixelYDimension"

    invoke-virtual {v4, v5, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v4, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray(Z)[B

    move-result-object p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const-string v2, "ImageCaptureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to add sw jpeg exif data "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    if-eqz p1, :cond_6

    iput-boolean v3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpegReqSent:Z

    :cond_6
    iget-boolean p2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAdobeScan:Z

    if-eqz p2, :cond_7

    sget-object p0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object p0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mAdobeScanCaptureListener:Lcom/motorola/camera/saving/ImageCaptureManager$AdobeScanCaptureListener;

    if-eqz p0, :cond_d

    invoke-interface {p0, v1}, Lcom/motorola/camera/saving/ImageCaptureManager$AdobeScanCaptureListener;->onJpegImageReceived(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    goto/16 :goto_9

    :cond_7
    iget-object p2, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mActivePhotoDivert:Lcom/motorola/camera/mediacodec/ActivePhotoJpegDivert;

    if-eqz p2, :cond_c

    if-nez p1, :cond_c

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    monitor-enter p2

    :try_start_1
    iget-object p1, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz p1, :cond_b

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    iget v0, v0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    iget-object v2, p2, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->LOADED:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoOn()Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_9
    :goto_5
    iget-object v2, p2, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSavedMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_VIDEO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_a

    monitor-exit p2

    goto :goto_8

    :cond_a
    :try_start_2
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;

    iget-object p0, p2, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSavedMap:Ljava/util/Map;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_JPEG"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->generateActivePhoto(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p2

    goto :goto_9

    :cond_b
    :goto_6
    :try_start_3
    const-string p1, "ActivePhotoComponent"

    const-string v0, "Unexpected image without seqId"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p2

    goto :goto_8

    :goto_7
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_c
    :goto_8
    sget-object p1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-boolean p1, p1, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    if-nez p1, :cond_d

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    if-nez p0, :cond_d

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    :cond_d
    :goto_9
    return-void
.end method

.method public static sendMcfOnCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Z)V
    .locals 6

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p3, :cond_0

    :goto_0
    move-object v3, p3

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->MAIN:Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->getPhysicalCameraType(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getExtraMetaForMcf(Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/motorola/camera/mcf/Mcf;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfInstanceIdentifier;Ljava/lang/String;Z)V

    move-object v0, p3

    invoke-static/range {v0 .. v5}, Lcom/motorola/camera/mcf/Mcf;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfInstanceIdentifier;Ljava/lang/String;Z)V

    return-void

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getExtraMetaForMcf(Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/motorola/camera/mcf/Mcf;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfInstanceIdentifier;Ljava/lang/String;Z)V

    return-void
.end method

.method public static declared-synchronized setImageReceivedListener(Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;)V
    .locals 2

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iput-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReceivedListener:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setImageReviewListener(Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;)V
    .locals 2

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iput-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReviewListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setupReprocSurfaceWriter(Landroid/view/Surface;Lcom/motorola/camera/settings/CameraType;Z)V
    .locals 10

    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    new-instance v1, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;

    invoke-direct {v1}, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;-><init>()V

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriterLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move p1, v5

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalDepthMode()Z

    move-result v9

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualStreamDepthMode(Z)Z

    move-result p2

    if-eqz v4, :cond_1

    if-eqz v7, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_4

    if-eqz v9, :cond_3

    if-eqz p2, :cond_2

    :goto_0
    const/4 p2, 0x4

    goto :goto_1

    :cond_2
    const/4 p2, 0x3

    goto :goto_1

    :cond_3
    move p2, v6

    goto :goto_1

    :cond_4
    move p2, v5

    :goto_1
    invoke-static {v6, p1, p2}, Lcom/motorola/camera/JsonConfig;->getBufferCnt(ILcom/motorola/camera/settings/CameraType;I)I

    move-result p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x7

    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p2

    iget-object v4, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;

    if-eqz p2, :cond_7

    iget-object v4, p2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriter:Landroid/media/ImageWriter;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/media/ImageWriter;->close()V

    const/4 v4, 0x0

    iput-object v4, p2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriter:Landroid/media/ImageWriter;

    :cond_7
    :goto_3
    invoke-static {p0, p1}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object p0

    iput-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriter:Landroid/media/ImageWriter;

    new-instance p1, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget-object p2, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object p0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/device/CameraStateManager;

    invoke-virtual {p0}, Lcom/motorola/camera/device/CameraStateManager;->allCameraSessionsOpened()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->openReprocess(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    invoke-static {v2}, Lcom/motorola/camera/mcf/Mcf;->openReprocess(Ljava/lang/String;)V

    :cond_9
    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/HashMap;

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static startBackgroundJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 6

    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mActivePhotoDivert:Lcom/motorola/camera/mediacodec/ActivePhotoJpegDivert;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->isActivePhotoJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->WAIT_MOTION_VIDEO:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    new-instance v2, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p0, p1}, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    iget-object p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget p1, p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSavedMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSavedMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_VIDEO_START_TIMESTAMP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSavedMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_VIDEO_STOP_TIMESTAMP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSavedMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_VIDEO"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->isActivePhotoJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)Z

    move-result v4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->addActiveVideoToMedia(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    invoke-virtual {v2}, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->onVideoReady()V

    return-void

    :cond_1
    if-eqz v4, :cond_2

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mVideoListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->onVideoReady()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    invoke-static {p0, p1}, Lcom/motorola/camera/jms/BgJobManager;->processBackgroundJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    return-void
.end method
