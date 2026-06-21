.class public abstract Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENABLE_NEW_ENGINE:Z

.field public static final lock:Ljava/lang/Object;

.field public static final mLargeKindFiles:Ljava/util/Map;

.field public static final mProcessingFiles:Ljava/util/Map;

.field public static final sTemporarySnapshots:Ljava/util/Map;

.field public static final watermarkAppliedMap:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    sput-boolean v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->ENABLE_NEW_ENGINE:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->sTemporarySnapshots:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->mProcessingFiles:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->mLargeKindFiles:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->watermarkAppliedMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->lock:Ljava/lang/Object;

    return-void
.end method

.method public static applyDisplayP3(Ljava/io/File;Ljava/io/ByteArrayOutputStream;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p1, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {p1, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->addDisplayP3App2ByteArray()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray(Z)[B

    move-result-object p1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    :goto_1
    move-object v0, v1

    goto :goto_4

    :catch_0
    move-exception p0

    :goto_2
    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v2, v0

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v2, v0

    :goto_3
    :try_start_3
    const-string p1, "ThumbnailProvider"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_3
    move-exception p0

    :goto_4
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static getLargeKindThumbnail(Lcom/motorola/camera/CameraData;Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
    .locals 7

    const-string v0, "ThumbnailProvider"

    const-string v1, "Unable to delete file: "

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->getLargeKindThumbnailKey(Lcom/motorola/camera/CameraData;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->sTemporarySnapshots:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-eqz v3, :cond_1

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v5, :cond_0

    :try_start_0
    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v2, p1, p0, v4}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->updateLargeKindThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/motorola/camera/CameraData;Z)V

    iget-object p0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_1
    invoke-static {v2}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->getLargeKindThumbnailFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0, v4}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->getLargeKindThumbnailKey(Lcom/motorola/camera/CameraData;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->getLargeKindThumbnailFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "_processing_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->getLargeKindThumbnailFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    return-object v1

    :cond_3
    new-instance p0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {p0, v1, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0
.end method

.method public static getLargeKindThumbnailFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 8

    sget-object v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->mLargeKindFiles:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;

    const/high16 v1, 0x10000000

    const/4 v2, 0x0

    if-nez v0, :cond_5

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getThumbnailDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$FileSorter$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$FileSorter$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p0, v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;->mThumbnailFile:Ljava/io/File;

    invoke-static {p0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_6
    return-object v2
.end method

.method public static getLargeKindThumbnailKey(Lcom/motorola/camera/CameraData;Z)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getDateModified()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getParcelFileDescriptor(Lcom/motorola/camera/CameraData;)Landroid/os/ParcelFileDescriptor;
    .locals 14

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getThumbWidth()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getThumbHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getThumbWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getThumbHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v3

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/motorola/camera/thumbnail/MediaUtil;->getOverrideSize(IIII)Landroid/util/Size;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/thumbnail/ThumbnailKey;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v7

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getDateModified()J

    move-result-wide v10

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-direct/range {v2 .. v13}, Lcom/motorola/camera/thumbnail/ThumbnailKey;-><init>(Landroid/net/Uri;Ljava/lang/String;IIIJJZZ)V

    invoke-static {}, Landroidx/media3/extractor/text/pgs/PgsParser;->getInstance()Landroidx/media3/extractor/text/pgs/PgsParser;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/base/Splitter;

    invoke-virtual {p0, v2}, Lcom/google/common/base/Splitter;->get(Lcom/motorola/camera/thumbnail/ThumbnailKey;)Landroid/util/Pair;

    move-result-object p0

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    const/high16 v0, 0x10000000

    invoke-static {p0, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static declared-synchronized loadProcessingThumbnail(Landroid/content/Context;J)Landroid/os/ParcelFileDescriptor;
    .locals 37

    move-wide/from16 v1, p1

    const-string v0, "[processing_api] sending cached processing thumbnail for id "

    const-string v3, "[processing_api] created thumbnail from mediastore for id "

    const-class v4, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;

    monitor-enter v4

    :try_start_0
    sget-boolean v6, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->ENABLE_NEW_ENGINE:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    const/16 v7, 0x1f4

    if-eqz v6, :cond_5

    :try_start_1
    invoke-static {}, Lcom/motorola/camera/CameraApp;->waitForInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1, v2}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    const/16 v22, 0x0

    goto/16 :goto_12

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    const/16 v22, 0x0

    goto/16 :goto_11

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v10, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v0, "orientation"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const-string/jumbo v0, "width"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v8, "height"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v10, "orientation"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    sget-boolean v11, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    new-instance v11, Landroid/util/Size;

    invoke-direct {v11, v0, v8}, Landroid/util/Size;-><init>(II)V

    invoke-static {v11, v10}, Lcom/motorola/camera/utility/ColorUtil;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    new-instance v8, Lcom/motorola/camera/CameraData;

    move-object v11, v9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v9

    const-string v12, "_display_name"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "_data"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "datetaken"

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-string v5, "date_modified"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v18

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v19

    const/16 v21, 0x0

    invoke-direct/range {v8 .. v21}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    move-object v0, v8

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->getParcelFileDescriptor(Lcom/motorola/camera/CameraData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-boolean v5, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "ThumbnailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v4

    return-object v0

    :goto_2
    :try_start_3
    const-string v3, "ThumbnailProvider"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_c

    :cond_5
    :try_start_4
    sget-object v3, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->mProcessingFiles:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    const/high16 v5, 0x10000000

    if-eqz v3, :cond_7

    :try_start_5
    sget-boolean v6, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "ThumbnailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;->mThumbnailFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, v3, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;->mThumbnailFile:Ljava/io/File;

    invoke-static {v0, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v4

    return-object v0

    :cond_7
    :try_start_6
    sget-object v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->mLargeKindFiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    if-eqz v3, :cond_a

    :try_start_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->mLargeKindFiles:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;

    if-eqz v3, :cond_8

    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "ThumbnailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[processing_api] sending large kind thumbnail for id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;->mThumbnailFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, v3, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;->mThumbnailFile:Ljava/io/File;

    invoke-static {v0, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v4

    return-object v0

    :cond_a
    :try_start_8
    invoke-static {}, Lcom/motorola/camera/CameraApp;->waitForInstance()Z

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    if-eqz v0, :cond_b

    :try_start_9
    invoke-static {v1, v2}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingPostView(Lcom/motorola/camera/CameraData;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v13, v0

    move-object v8, v3

    goto :goto_3

    :cond_b
    const/4 v8, 0x0

    const/4 v13, 0x0

    :goto_3
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "_processing_"

    const-string v9, "TEMP_"

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v11, 0x1

    move-object v10, v13

    invoke-static/range {v6 .. v12}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->saveThumbnailToFile(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/motorola/camera/CameraData;ZLjava/lang/Boolean;)Ljava/io/File;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->mProcessingFiles:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;

    invoke-direct {v7, v0}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;-><init>(Ljava/io/File;)V

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v3, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "ThumbnailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[processing_api] created thumbnail from postView for id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-static {v0, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit v4

    return-object v0

    :cond_d
    if-nez v13, :cond_15

    :try_start_a
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v16, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->PROJECTION:[Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "orientation"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    const-string/jumbo v3, "width"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v6, "height"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v8, "orientation"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    sget-boolean v9, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    new-instance v9, Landroid/util/Size;

    invoke-direct {v9, v3, v6}, Landroid/util/Size;-><init>(II)V

    invoke-static {v9, v8}, Lcom/motorola/camera/utility/ColorUtil;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v3

    new-instance v23, Lcom/motorola/camera/CameraData;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v24

    const-string v6, "_display_name"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const-string v6, "_data"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const-string v6, "datetaken"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    const-string v6, "date_modified"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v33

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v34

    const/16 v36, 0x0

    move-object/from16 v26, v15

    invoke-direct/range {v23 .. v36}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    goto :goto_4

    :catchall_1
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_9

    :catch_2
    const/4 v8, 0x0

    goto/16 :goto_a

    :cond_e
    const/16 v23, 0x0

    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, v23

    goto :goto_5

    :cond_f
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v7, v7}, Landroid/util/Size;-><init>(II)V

    const/4 v8, 0x0

    invoke-virtual {v3, v15, v6, v8}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_6
    move-object/from16 v16, v3

    goto :goto_7

    :cond_10
    new-instance v3, Landroid/util/Size;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getThumbWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getThumbHeight()I

    move-result v8

    invoke-direct {v3, v6, v8}, Landroid/util/Size;-><init>(II)V

    invoke-static {v3}, Lcom/motorola/camera/utility/ColorUtil;->isSizeValid(Landroid/util/Size;)Z

    move-result v6

    if-eqz v6, :cond_11

    move-object/from16 v6, p0

    invoke-static {v6, v0, v3}, Lcom/motorola/camera/Util;->loadPostViewThumbnail(Landroid/content/Context;Lcom/motorola/camera/CameraData;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_6

    :cond_11
    move-object/from16 v6, p0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v7, v7}, Landroid/util/Size;-><init>(II)V

    const/4 v8, 0x0

    invoke-virtual {v3, v15, v6, v8}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    :goto_7
    :try_start_b
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v15, "_processing_"

    const-string v17, "TEMP_"

    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v19, 0x0

    move-object/from16 v18, v0

    invoke-static/range {v14 .. v20}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->saveThumbnailToFile(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/motorola/camera/CameraData;ZLjava/lang/Boolean;)Ljava/io/File;

    move-result-object v0

    sget-boolean v3, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v3, :cond_12

    const-string v3, "ThumbnailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[processing_api] created thumbnail from mediastore for id "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v8, v16

    goto :goto_9

    :catch_3
    move-object/from16 v8, v16

    goto :goto_a

    :cond_12
    :goto_8
    sget-object v3, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->mProcessingFiles:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v8, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;

    invoke-direct {v8, v0}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;-><init>(Ljava/io/File;)V

    invoke-interface {v3, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v16, :cond_13

    :try_start_c
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_13
    monitor-exit v4

    return-object v0

    :goto_9
    if-eqz v8, :cond_14

    :try_start_d
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_14
    throw v0

    :goto_a
    if-eqz v8, :cond_15

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_15
    :try_start_e
    sget-object v3, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->sTemporarySnapshots:Ljava/util/Map;

    monitor-enter v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    if-eqz v13, :cond_18

    :try_start_f
    invoke-virtual {v13}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v13}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v13}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    if-eqz v6, :cond_18

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v7

    check-cast v11, Landroid/graphics/Bitmap;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/io/File;

    if-nez v6, :cond_16

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "_processing_snapshot_"

    const-string v12, "TEMP_"

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v14, 0x1

    invoke-static/range {v9 .. v15}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->saveThumbnailToFile(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/motorola/camera/CameraData;ZLjava/lang/Boolean;)Ljava/io/File;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v7, Landroid/util/Pair;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    const/4 v8, 0x0

    :try_start_10
    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :catchall_3
    move-exception v0

    goto/16 :goto_10

    :catchall_4
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_10

    :cond_16
    const/4 v8, 0x0

    :goto_b
    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "ThumbnailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[processing_api] sending temporary snapshot for id "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    invoke-static {v6, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    monitor-exit v4

    return-object v0

    :cond_18
    const/4 v8, 0x0

    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :goto_c
    :try_start_12
    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_19

    const-string v0, "ThumbnailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[processing_api] we failed, sending a black preview for id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :catchall_5
    move-exception v0

    :goto_d
    move-object v5, v8

    move-object/from16 v22, v5

    goto/16 :goto_12

    :catch_4
    move-exception v0

    :goto_e
    move-object v5, v8

    move-object/from16 v22, v5

    goto :goto_11

    :cond_19
    :goto_f
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x1

    aget-object v3, v3, v6
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :try_start_14
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v0, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :try_start_15
    invoke-static {v3}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    monitor-exit v4

    return-object v5

    :catchall_6
    move-exception v0

    goto :goto_13

    :catchall_7
    move-exception v0

    move-object v5, v3

    move-object/from16 v22, v6

    goto :goto_12

    :catch_5
    move-exception v0

    move-object v5, v3

    move-object/from16 v22, v6

    goto :goto_11

    :catchall_8
    move-exception v0

    move-object v5, v3

    move-object/from16 v22, v8

    goto :goto_12

    :catch_6
    move-exception v0

    move-object v5, v3

    move-object/from16 v22, v8

    goto :goto_11

    :goto_10
    :try_start_16
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :try_start_17
    throw v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :catchall_9
    move-exception v0

    const/4 v8, 0x0

    goto :goto_d

    :catch_7
    move-exception v0

    const/4 v8, 0x0

    goto :goto_e

    :goto_11
    :try_start_18
    const-string v3, "ThumbnailProvider"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    :try_start_19
    invoke-static {v5}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static/range {v22 .. v22}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can load processing thumbnail with id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_a
    move-exception v0

    :goto_12
    invoke-static {v5}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static/range {v22 .. v22}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :goto_13
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    throw v0
.end method

.method public static declared-synchronized saveThumbnailToFile(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/motorola/camera/CameraData;ZLjava/lang/Boolean;)Ljava/io/File;
    .locals 7

    const-class v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p5, :cond_3

    :try_start_0
    invoke-static {p4}, Lcom/motorola/camera/watermark/WatermarkEditor;->shouldAddThumbnailWatermark(Lcom/motorola/camera/CameraData;)Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v2, "_"

    invoke-virtual {p5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "_"

    invoke-virtual {p5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    aget-object p5, p5, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_e

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    sget-object v2, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "TEMP_"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Lcom/motorola/camera/watermark/WatermarkEditor;->addWatermarkToThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    const-string v3, "THUMBNAIL_"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->watermarkAppliedMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, p5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    if-nez p5, :cond_2

    invoke-static {p2}, Lcom/motorola/camera/watermark/WatermarkEditor;->addWatermarkToThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_2
    :goto_1
    monitor-exit v2

    goto :goto_3

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_3
    const/4 p5, 0x0

    :try_start_3
    new-instance v2, Lcom/motorola/camera/saving/FileName;

    sget-object v3, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    const-string p0, "THUMBNAIL_"

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->createThumbnailFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object p0

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object p1, p5

    goto/16 :goto_d

    :catch_0
    move-exception p0

    move-object p1, p5

    move-object p4, p1

    goto/16 :goto_b

    :cond_4
    sget-object p0, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile$default(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_4
    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_7

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catch_1
    move-exception p1

    move-object p4, p5

    move-object p5, p0

    move-object p0, p1

    move-object p1, p4

    goto/16 :goto_b

    :cond_5
    :goto_5
    :try_start_5
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    sget-boolean p1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_7
    :try_start_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getThumbnailJpegQuality()I

    move-result p1

    if-nez p4, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p4}, Lcom/motorola/camera/CameraData;->getCaptureMode()I

    move-result v1

    :goto_6
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentModeSupportP3(I)Z

    move-result p4

    if-eqz p4, :cond_a

    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {p2}, Lcom/motorola/camera/Util;->isAvailableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v1, p1, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_7

    :catchall_3
    move-exception p0

    move-object p1, p4

    goto/16 :goto_d

    :catch_2
    move-exception p1

    move-object v6, p5

    move-object p5, p0

    move-object p0, p1

    move-object p1, p4

    move-object p4, v6

    goto :goto_b

    :cond_9
    :goto_7
    invoke-static {p0, p4}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->applyDisplayP3(Ljava/io/File;Ljava/io/ByteArrayOutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_a

    :cond_a
    :try_start_8
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-static {p2}, Lcom/motorola/camera/Util;->isAvailableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v1, p1, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception p0

    move-object p1, p5

    :goto_8
    move-object p5, p4

    goto :goto_d

    :catch_3
    move-exception p1

    move-object v6, p5

    move-object p5, p0

    move-object p0, p1

    move-object p1, v6

    goto :goto_b

    :cond_b
    :goto_9
    move-object v6, p5

    move-object p5, p4

    move-object p4, v6

    :goto_a
    :try_start_a
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    invoke-static {p5}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_b
    :try_start_b
    const-string v1, "ThumbnailProvider"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "THUMBNAIL_"

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-static {p5}, Lcom/motorola/camera/storage/StorageUtils;->deleteThumbnailFile(Ljava/io/File;)V

    goto :goto_c

    :catchall_5
    move-exception p0

    goto :goto_8

    :cond_d
    invoke-static {p5}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    :goto_c
    new-instance p3, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :goto_d
    :try_start_c
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_e

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_e

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    invoke-static {p5}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :goto_e
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw p0
.end method

.method public static updateLargeKindThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/motorola/camera/CameraData;Z)V
    .locals 11

    sget-object v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->mLargeKindFiles:Ljava/util/Map;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;

    if-eqz v5, :cond_1

    iget-object v5, v5, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;->mThumbnailFile:Ljava/io/File;

    invoke-static {v5}, Lcom/motorola/camera/storage/StorageUtils;->deleteThumbnailFile(Ljava/io/File;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getThumbnailDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    array-length v4, v1

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v5, v1, v2

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v3, v5

    goto :goto_2

    :cond_3
    invoke-static {v5}, Lcom/motorola/camera/storage/StorageUtils;->deleteThumbnailFile(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    const-string v5, "_processing_"

    const-string v7, "THUMBNAIL_"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v9, 0x1

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    invoke-static/range {v4 .. v10}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->saveThumbnailToFile(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/motorola/camera/CameraData;ZLjava/lang/Boolean;)Ljava/io/File;

    move-result-object v3

    goto :goto_3

    :cond_6
    move-object v4, p0

    :goto_3
    new-instance p0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;

    invoke-direct {p0, v3}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$ProcessingThumbnail;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "ThumbnailProvider"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_4
    return-void
.end method
