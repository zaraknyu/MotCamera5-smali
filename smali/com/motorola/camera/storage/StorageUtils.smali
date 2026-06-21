.class public abstract Lcom/motorola/camera/storage/StorageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final deleteTemporaryFilesCoroutine:Lkotlinx/coroutines/StandaloneCoroutine;

.field public static tempFilesList:[Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    new-instance v2, Lcom/motorola/camera/storage/StorageUtils$deleteTemporaryFilesCoroutine$1;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    const/4 v3, 0x1

    invoke-static {v0, v4, v1, v2, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFilesCoroutine:Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public static final copyTemporaryFileToMediaFile(Ljava/io/File;Lcom/motorola/camera/storage/MediaFile;)Z
    .locals 9

    const-string v0, "Transferred "

    const-string/jumbo v1, "temporaryFile"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "mediaFile"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    filled-new-array {v2}, [Ljava/nio/file/OpenOption;

    move-result-object v2

    invoke-static {p0, v2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    const-wide/16 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v1

    cmp-long p0, v1, v7

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p0, 0x1

    :try_start_4
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    :try_start_5
    new-instance p0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " out of "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-static {v4, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final createFileDescriptorWithFallback(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/io/FileDescriptor;
    .locals 4

    const-string v0, "captureRecord"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v2}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->setFileName(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->createMediaFileWithFallback(Lcom/motorola/camera/storage/MediaFile;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static final createMediaFileWithFallback(Lcom/motorola/camera/storage/MediaFile;)Lcom/motorola/camera/storage/MediaFile;
    .locals 3

    const-string v0, "mediaFile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    invoke-interface {p0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/storage/backend/MediaStoreFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaFilePath;->getMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v1

    const-string v2, "mediaVolume"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->setCurrentStorage()V

    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getPrimaryMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/storage/MediaFilePath;->withMediaVolume(Lcom/motorola/camera/storage/MediaVolume;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object p0

    const-string v0, "mediaFilePath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-direct {v0, p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;-><init>(Lcom/motorola/camera/storage/MediaFilePath;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createMediaFileWithFallback: using fallback volume: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "StorageUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p0

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    throw p0

    :cond_1
    throw v0

    :cond_2
    throw v0
.end method

.method public static final createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;
    .locals 1

    .line 1
    const-string v0, "fileName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile$default(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final declared-synchronized createTemporaryFile(Lcom/motorola/camera/saving/FileName;Ljava/io/File;)Ljava/io/File;
    .locals 5

    const-string v0, "Failed to create temporary file: "

    const-class v1, Lcom/motorola/camera/storage/StorageUtils;

    monitor-enter v1

    :try_start_0
    const-string v2, "fileName"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "tempDir"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Lcom/motorola/camera/saving/FileName;

    invoke-direct {v2, p0}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    const-wide/16 v3, 0x2000

    .line 3
    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    .line 4
    invoke-virtual {v2}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    monitor-exit v1

    return-object v2

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static createTemporaryFile$default(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "getFilesDir(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final declared-synchronized createThumbnailFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;
    .locals 6

    const-string v0, "Failed to create thumbnail file: "

    const-class v1, Lcom/motorola/camera/storage/StorageUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getThumbnailDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/saving/FileName;

    invoke-direct {v3, p0}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    const-wide/32 v4, 0x20000000

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v3}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    return-object v3

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static final deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/motorola/camera/storage/MediaFile;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static final deleteTemporaryFile(Ljava/io/File;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Temporary file could not be deleted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StorageUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static final deleteThumbnailFile(Ljava/io/File;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thumbnail file could not be deleted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StorageUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static final getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;
    .locals 3

    const-string v0, "fileName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/storage/MediaFilePath;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getPrimaryMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->getMediaVolume(Z)Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->setCurrentStorage()V

    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getPrimaryMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v1

    :goto_1
    const-string v2, "DCIM/Camera"

    invoke-direct {v0, v1, v2, p0}, Lcom/motorola/camera/storage/MediaFilePath;-><init>(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getDumpDirectoryForFeature(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "Dump"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    move-object v2, v1

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_3

    :goto_1
    return-object v1

    :cond_3
    return-object v0
.end method

.method public static final getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaFilePath;->getMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/storage/MediaVolumesHolder;->clients:Landroid/util/ArraySet;

    const-string v3, "mediaVolume"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/storage"

    invoke-virtual {v2}, Lcom/motorola/camera/storage/MediaVolume;->getStorageVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaFilePath;->getRelativePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    :cond_1
    move-object p0, v0

    :cond_2
    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static final getMediaRecorderMaxFileSize()J
    .locals 7

    sget-boolean v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->isFreeBytesUpdated:Z

    const-wide v1, 0xfffffffffffffL

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->getMediaVolume(Z)Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)J

    move-result-wide v3

    goto :goto_2

    :cond_2
    move-wide v3, v1

    :goto_2
    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    invoke-virtual {v0}, Lcom/motorola/camera/ShotType;->getMinimumFreeBytes()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    :try_start_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v0}, Lmotorola/core_services/storage/MotoStorageManager;->getInstance(Landroid/content/Context;)Lmotorola/core_services/storage/MotoStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lmotorola/core_services/storage/MotoStorageManager;->getSdCardType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v5, "vfat"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide v5, 0xffffffffL

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_3
    const-wide/32 v5, 0x40000

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getMediaStoreUri(Lcom/motorola/camera/CameraData;)Landroid/net/Uri;
    .locals 3

    const-string v0, "cameraData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v0

    const-string v1, "image/*"

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "video/*"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    const-string/jumbo v0, "withAppendedId(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getMediaVolume(Z)Lcom/motorola/camera/storage/MediaVolume;
    .locals 3

    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumes:Ljava/util/Set;

    const-string v1, "mediaVolumes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/storage/MediaVolume;

    invoke-virtual {v2}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result v2

    if-ne v2, p0, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/motorola/camera/storage/MediaVolume;

    return-object v1
.end method

.method public static final getPrimaryMediaVolume()Lcom/motorola/camera/storage/MediaVolume;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->getMediaVolume(Z)Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/camera/storage/MediaVolume;->PRIMARY:Lcom/motorola/camera/storage/MediaVolume;

    return-object v0
.end method

.method public static getRequiredFreeBytes(Lcom/motorola/camera/ShotType;)J
    .locals 8

    invoke-virtual {p0}, Lcom/motorola/camera/ShotType;->getMinimumFreeBytes()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/motorola/camera/ShotType;->isVideo()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/VideoHelper;->ALLOWED_VIDEO_SIZES:Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/motorola/camera/VideoHelper;->getRecorderDataForMode(ILcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    move-result-object p0

    iget v2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioBitRate:I

    iget p0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    add-int/2addr v2, p0

    int-to-long v2, v2

    const-wide v4, 0x3ff199999999999aL    # 1.1

    const-wide/16 v6, 0x3c

    long-to-double v6, v6

    mul-double/2addr v6, v4

    long-to-double v2, v2

    mul-double/2addr v6, v2

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2

    :cond_0
    return-wide v0
.end method

.method public static final getThumbnailDirectory()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "getInstance(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "getFilesDir(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "thumbnail"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object v0
.end method

.method public static final isFreeBytesSufficient(Lcom/motorola/camera/ShotType;J)Z
    .locals 2

    const-string/jumbo v0, "shotType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->getRequiredFreeBytes(Lcom/motorola/camera/ShotType;)J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isFreeBytesSufficientWithFallback(Lcom/motorola/camera/ShotType;Landroidx/media3/exoplayer/WakeLockManager;)Z
    .locals 6

    const-string/jumbo v0, "shotType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->getRequiredFreeBytes(Lcom/motorola/camera/ShotType;)J

    move-result-wide v0

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getPrimaryMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->getMediaVolume(Z)Lcom/motorola/camera/storage/MediaVolume;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->setCurrentStorage()V

    if-eqz p1, :cond_3

    iput-boolean v3, p1, Landroidx/media3/exoplayer/WakeLockManager;->stayAwake:Z

    :cond_3
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getPrimaryMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-ltz v4, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    if-nez v4, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getPrimaryMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)J

    move-result-wide v4

    cmp-long p0, v4, v0

    if-ltz p0, :cond_5

    move v2, v3

    :cond_5
    if-eqz v2, :cond_6

    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->setCurrentStorage()V

    if-eqz p1, :cond_6

    iput-boolean v3, p1, Landroidx/media3/exoplayer/WakeLockManager;->stayAwake:Z

    :cond_6
    return v2

    :cond_7
    return v4
.end method

.method public static setCurrentStorage()V
    .locals 5

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "getInstance(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f12021b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f120171

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method
