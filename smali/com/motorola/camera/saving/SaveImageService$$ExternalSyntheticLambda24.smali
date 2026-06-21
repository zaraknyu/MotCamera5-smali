.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/saving/FileName;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lcom/motorola/camera/ui/widgets/gl/Matrices;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/saving/FileName;Ljava/util/concurrent/atomic/AtomicReference;JLcom/motorola/camera/ui/widgets/gl/Matrices;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda24;->f$0:Lcom/motorola/camera/saving/FileName;

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda24;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iput-wide p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda24;->f$2:J

    iput-object p5, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda24;->f$3:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->COLLAGE_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-wide v8, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda24;->f$2:J

    iget-object v2, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda24;->f$3:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget-object v3, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda24;->f$0:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v3}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v4

    iget-object v5, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda24;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v4, ""

    const/4 v10, 0x0

    invoke-static {v0, v10, v6, v7, v4}, Lcom/motorola/camera/watermark/WatermarkEditor;->addWatermarkToBitmap(Landroid/graphics/Bitmap;IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :try_start_1
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v7

    invoke-virtual {v0, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v0, :cond_1

    move-object v6, v5

    :try_start_2
    invoke-virtual {v3}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v0, v3, Lcom/motorola/camera/storage/backend/MediaStoreFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const-string v0, "CAPTURE_MODE"

    const/16 v10, 0x30

    invoke-virtual {v15, v0, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v10, v2

    :try_start_3
    new-instance v2, Lcom/motorola/camera/CameraData;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v11

    iget-object v0, v3, Lcom/motorola/camera/storage/backend/MediaStoreFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v13, v3

    move-object v14, v4

    move-wide v3, v11

    move-object v12, v10

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Bitmap;

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v18, v14

    const/4 v14, 0x0

    move-object/from16 v19, v1

    move-object v1, v12

    move/from16 v12, v16

    move-object/from16 v16, v6

    move-object v6, v0

    move-object v0, v13

    move/from16 v13, v17

    :try_start_5
    invoke-direct/range {v2 .. v15}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIILandroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->finish()V

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;

    const/16 v3, 0xe

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v3, v19

    :try_start_6
    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v0, v2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :goto_1
    move-object v2, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v3, v19

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v3, v1

    move-object/from16 v16, v6

    move-object v1, v12

    move-object/from16 v18, v14

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v3, v1

    move-object/from16 v18, v4

    move-object/from16 v16, v6

    move-object v1, v10

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    move-object/from16 v18, v4

    move-object/from16 v16, v6

    goto :goto_1

    :cond_1
    move-object v3, v1

    move-object v1, v2

    move-object/from16 v18, v4

    move-object/from16 v16, v5

    :try_start_8
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bitmap.compress() failed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_1

    :catchall_6
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    move-object/from16 v18, v4

    move-object/from16 v16, v5

    goto :goto_1

    :goto_2
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_3

    :catchall_7
    move-exception v0

    :try_start_a
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_8
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_4

    :catch_0
    move-object v3, v1

    move-object v1, v2

    move-object/from16 v16, v5

    :catch_1
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v0, "PhotoBoothComponent"

    const-string v2, "Collage failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v1, v2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
.end method
