.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/CameraKpi;Ljava/lang/Object;J)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;->f$1:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JLjava/lang/Object;I)V
    .locals 0

    .line 2
    iput p5, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;->f$1:J

    iput-object p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-wide v2, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;->f$1:J

    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    iget-object v5, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-wide v9, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;->f$1:J

    check-cast v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    :try_start_0
    instance-of v0, v5, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;

    if-eqz v0, :cond_0

    move-object v11, v5

    check-cast v11, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;

    iget-object v0, v11, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->mGesturePauseTime:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v6

    iget-wide v0, v11, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->mGestureStopTime:J

    const-wide/32 v2, 0xf4240

    div-long v7, v0, v2

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v12, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v6 .. v12}, Lcom/motorola/camera/saving/SaveImageService;->cutGestureAndSaveVideo(Ljava/util/List;JJLcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;Lcom/motorola/camera/storage/MediaFile;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->finish()V

    iget-object v0, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/motorola/camera/storage/backend/MediaStoreFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v8

    iget-object v0, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Landroid/util/Size;

    iget-object v1, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iget v1, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOrientation:I

    invoke-static {v0, v1}, Lcom/motorola/camera/utility/ColorUtil;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    new-instance v5, Lcom/motorola/camera/CameraData;

    iget-wide v6, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mUUID:J

    iget-object v1, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v1}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v9

    iget-wide v11, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mCaptureTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v16

    iget v0, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOrientation:I

    iget-object v1, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v2, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mCaptureMode:I

    const/16 v18, 0x1

    move/from16 v17, v0

    move-object/from16 v19, v1

    move/from16 v20, v2

    invoke-direct/range {v5 .. v20}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIIILcom/motorola/camera/fsm/camera/record/SequenceIdentifier;I)V

    iget-object v0, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    iget-boolean v0, v0, Lcom/motorola/camera/storage/backend/MediaStoreFile;->isFinished:Z

    invoke-static {v5, v0}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object v1, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    const-string v1, "SaveImageService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :pswitch_0
    check-cast v5, Lcom/motorola/camera/CameraKpi;

    iget-object v0, v5, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v5

    new-instance v6, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5, v4, v2, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    const/16 v2, 0x1a

    invoke-virtual {v1, v5, v2, v6}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-ne v1, v4, :cond_1

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1
    return-void

    :pswitch_1
    check-cast v5, Lcom/motorola/camera/saving/SaveImageService;

    check-cast v4, Ljava/lang/String;

    iget-object v0, v5, Lcom/motorola/camera/saving/SaveImageService;->mBgCaptureRecords:Lcom/google/android/gms/tasks/zzb;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda1;-><init>(JI)V

    const/4 v2, 0x1

    invoke-static {v0, v5, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    :cond_2
    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->delete(Ljava/io/File;)I

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
