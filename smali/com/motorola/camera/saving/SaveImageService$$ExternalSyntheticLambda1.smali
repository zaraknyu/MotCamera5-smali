.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/editor/DocJpegHolder;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/motorola/camera/CameraData;

.field public final synthetic f$3:Lcom/motorola/camera/editor/DocEditorActivity;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/editor/DocJpegHolder;ZLcom/motorola/camera/CameraData;Lcom/motorola/camera/editor/DocEditorActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/editor/DocJpegHolder;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$2:Lcom/motorola/camera/CameraData;

    iput-object p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$3:Lcom/motorola/camera/editor/DocEditorActivity;

    iput-object p5, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-boolean v2, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v3, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$2:Lcom/motorola/camera/CameraData;

    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$3:Lcom/motorola/camera/editor/DocEditorActivity;

    iget-object v5, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    const-string v6, "SaveImageService"

    const-string v0, "ImageLength"

    const-string v7, "ImageWidth"

    iget v8, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    sget-object v9, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mLookUp:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eq v9, v10, :cond_1

    if-eq v9, v11, :cond_0

    iget-object v9, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-object v9, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v9, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    :goto_0
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v13

    invoke-virtual {v9, v12, v13, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    :try_start_0
    iget-object v13, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v14, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    new-instance v13, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v13, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v13, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 p0, v11

    :try_start_1
    invoke-virtual {v13, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    invoke-virtual {v13, v7, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v0, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    invoke-static {v0}, Lcom/motorola/camera/Util;->getExifOrientation(F)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "Orientation"

    invoke-virtual {v13, v7, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/motorola/camera/utility/AndroidImageUtils;->createDocThumbnail([B)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailBytes([B)V

    iget-object v0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedPoints:[F

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOriginalPoints:[F

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    array-length v11, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x0

    :goto_2
    const-string v15, ";"

    if-ge v14, v11, :cond_3

    :try_start_2
    aget v12, v0, v14

    float-to-int v12, v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_POINTS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v13, v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v13, v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    const/4 v7, 0x0

    invoke-virtual {v13, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray(Z)[B

    move-result-object v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-static {v10}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5

    :catch_1
    move-exception v0

    move/from16 p0, v11

    :goto_4
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process failed to write exif of document: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_5
    if-eqz v2, :cond_4

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_7

    :cond_4
    new-instance v7, Lcom/motorola/camera/saving/XmpData;

    invoke-direct {v7}, Lcom/motorola/camera/saving/XmpData;-><init>()V

    iget-object v0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/MotUtil;->Base64Encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v8, "http://ns.google.com/photos/1.0/document/"

    iget-object v10, v7, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-nez v10, :cond_5

    sget-object v10, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Landroidx/media3/extractor/text/pgs/PgsParser;

    new-instance v10, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-direct {v10}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;-><init>()V

    iput-object v10, v7, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    :cond_5
    iget-object v10, v7, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    if-nez v10, :cond_6

    sget-object v10, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Landroidx/media3/extractor/text/pgs/PgsParser;

    new-instance v10, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-direct {v10}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;-><init>()V

    iput-object v10, v7, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    :cond_6
    iget-object v10, v7, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    iget-object v11, v7, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    :try_start_4
    const-string v12, "Data"

    const/4 v13, 0x0

    invoke-virtual {v11, v8, v12, v0, v13}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    const-string v0, "Mime"

    const-string v11, "image/jpeg"

    invoke-virtual {v10, v8, v0, v11, v13}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V
    :try_end_4
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v8, "XmpData"

    const-string v10, "can\'t embed document data"

    invoke-static {v8, v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    new-instance v16, Lcom/motorola/camera/AppFeatures;

    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    iget-object v0, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    const/16 v21, 0x0

    const/16 v22, 0x11

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v22}, Lcom/motorola/camera/AppFeatures;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/AppFeatures;)V

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_7
    if-eqz v2, :cond_7

    :try_start_5
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegUri:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;

    const/4 v7, 0x0

    invoke-direct {v1, v3, v7}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/CameraData;I)V

    const-wide/16 v7, 0x7d0

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_a

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_9

    :cond_7
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v2

    new-instance v7, Lcom/motorola/camera/saving/SaveImageService$1;

    sget-object v8, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v8, v8, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    invoke-direct {v7, v8, v4, v3}, Lcom/motorola/camera/saving/SaveImageService$1;-><init>(Landroid/os/Handler;Lcom/motorola/camera/editor/DocEditorActivity;Lcom/motorola/camera/CameraData;)V

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {v5}, Lcom/motorola/camera/storage/StorageUtils;->getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/storage/MediaFile$Memento;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v2, v7, v8, v9, v1}, Lcom/motorola/camera/storage/MediaFile$Memento;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;)V

    invoke-static {v2}, Lcom/motorola/camera/storage/MediaFile$Companion;->fromMemento(Lcom/motorola/camera/storage/MediaFile$Memento;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v1}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v7}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_display_name"

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->update(Landroid/content/ContentValues;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_a

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Save document jpeg failed, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    goto :goto_a

    :goto_9
    instance-of v1, v0, Landroid/app/RecoverableSecurityException;

    if-eqz v1, :cond_8

    check-cast v0, Landroid/app/RecoverableSecurityException;

    invoke-virtual {v0}, Landroid/app/RecoverableSecurityException;->getUserAction()Landroid/app/RemoteAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v6, 0x65

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_6
    invoke-virtual/range {v4 .. v11}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :goto_a
    return-void

    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_b
    invoke-static {v10}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method
