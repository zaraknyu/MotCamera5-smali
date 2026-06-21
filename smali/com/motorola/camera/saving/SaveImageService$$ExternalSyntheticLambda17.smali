.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

.field public final synthetic f$3:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lcom/motorola/camera/fsm/camera/FsmContext;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;ILcom/motorola/camera/fsm/camera/record/CaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;ZLcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$0:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$1:I

    iput-object p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$2:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iput-object p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$3:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iput-boolean p5, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$4:Z

    iput-object p6, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$5:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 28

    move-object/from16 v0, p0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object v2, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$2:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v3, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$3:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-boolean v4, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$4:Z

    iget-object v5, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$5:Lcom/motorola/camera/fsm/camera/FsmContext;

    const-string v6, "SaveImageService"

    iget v7, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$1:I

    int-to-float v7, v7

    iget-object v8, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$0:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    invoke-static {v8, v7, v0, v0}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZ)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v9, 0x0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-wide v10, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    const-string v12, ""

    const/4 v13, 0x0

    invoke-static {v7, v13, v10, v11, v12}, Lcom/motorola/camera/watermark/WatermarkEditor;->addWatermarkToBitmap(Landroid/graphics/Bitmap;IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v10, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v10}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v7, v9, v10, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v9}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v9

    if-nez v9, :cond_3

    const-string v0, "MediaFile is null"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    invoke-static {v11}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    :goto_1
    invoke-virtual {v5, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v9, v11

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v9, v11

    goto/16 :goto_2

    :cond_3
    :try_start_2
    iget-object v10, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v10}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v10

    const-string/jumbo v12, "w"

    invoke-static {v10, v12}, Lcom/motorola/camera/storage/MediaStoreClient;->openMediaItem(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    iget v13, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode(I)Z

    move-result v13

    invoke-static {v12, v2, v13, v4}, Lcom/motorola/camera/saving/SaveImageService;->correctExifInfo(Ljava/io/FileDescriptor;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;ZZ)V

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_4
    invoke-virtual {v9}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->finish()V

    iget-object v4, v9, Lcom/motorola/camera/storage/backend/MediaStoreFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    iget-object v9, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v9}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    new-instance v12, Lcom/motorola/camera/CameraData;

    iget-wide v13, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v4}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v15

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v4}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v16

    iget-wide v9, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v0, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v27, v0

    move-object/from16 v26, v4

    move-wide/from16 v18, v9

    invoke-direct/range {v12 .. v27}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIIILcom/motorola/camera/fsm/camera/record/SequenceIdentifier;I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v12, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v4, "IS_PRIMARY"

    const/4 v9, 0x1

    invoke-virtual {v0, v4, v9}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/motorola/camera/saving/SaveImageService;->commitTotalCaptureTimeKPI(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)V

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    :cond_7
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->isFinished()Z

    move-result v0

    invoke-static {v12, v0}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    invoke-static {v11}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto/16 :goto_1

    :cond_a
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Bitmap compress failed"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    :try_start_4
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    invoke-static {v9}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto/16 :goto_1

    :goto_3
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    invoke-static {v9}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v5, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    throw v0
.end method
