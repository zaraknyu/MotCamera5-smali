.class public final Lcom/motorola/camera/adobe_scan/AdobeFileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADOBE_DIR_RELATIVE_PATH:Ljava/lang/String;

.field public static final ADOBE_SCAN_TEMP_DIR:Ljava/io/File;

.field public static final JPG_FILTER:Ljava/io/FilenameFilter;

.field public static final SAVED_STATE_FILE:Ljava/io/File;


# instance fields
.field public final _firstCameraData:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _pdfUri:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final captureListener:Lcom/motorola/camera/saving/ImageCaptureManager$AdobeScanCaptureListener;

.field public final firstCameraData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final formatter:Ljava/text/SimpleDateFormat;

.field public onCaptureAvailable:Lkotlin/jvm/functions/Function0;

.field public final pdfUri:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final photoMetadataList:Ljava/util/ArrayList;

.field public final saveListener:Lcom/motorola/camera/saving/SaveListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "getInstance(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "getFilesDir(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Adobe Scan"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->ADOBE_SCAN_TEMP_DIR:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "savedState.json"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->SAVED_STATE_FILE:Ljava/io/File;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Adobe Scan"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->ADOBE_DIR_RELATIVE_PATH:Ljava/lang/String;

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->JPG_FILTER:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->photoMetadataList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->_firstCameraData:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;)V

    iput-object v2, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->firstCameraData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->_pdfUri:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;)V

    iput-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->pdfUri:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lb/o$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lb/o$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->onCaptureAvailable:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/adobe_scan/AdobeFileManager$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeFileManager;)V

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->captureListener:Lcom/motorola/camera/saving/ImageCaptureManager$AdobeScanCaptureListener;

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveListener$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveListener$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeFileManager;)V

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->saveListener:Lcom/motorola/camera/saving/SaveListener;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmssSSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->formatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static deleteTemporaryDir()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->ADOBE_SCAN_TEMP_DIR:Ljava/io/File;

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error trying to delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdobeFileManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static hasAllExpectedTempImages(Ljava/util/List;)Z
    .locals 2

    const-string v0, "expectedImages"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->ADOBE_SCAN_TEMP_DIR:Ljava/io/File;

    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->JPG_FILTER:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    invoke-interface {v0, p0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "AdobeFileManager"

    const-string v0, "temp dir doesn\'t have all the expected images from saved state"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static saveScanCapturesFromAdobeScanApp(Lcom/adobe/scan/sdk/ScanAppConnection$Result$PDFCreated;Landroid/content/ContentResolver;)V
    .locals 4

    iget-object v0, p0, Lcom/adobe/scan/sdk/ScanAppConnection$Result$PDFCreated;->processedImageUris:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v2}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-static {v3}, La/l;->createCameraImageMediaData([B)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    iget-object p0, p0, Lcom/adobe/scan/sdk/ScanAppConnection$Result$PDFCreated;->processedImageUris:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    if-ltz v0, :cond_2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-static {v0, v2, p1}, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->updateMetadataAndSaveImages(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    move v0, v3

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    return-void
.end method

.method public static saveTemporaryFiles(Ljava/io/File;Ljava/io/File;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v1, Lh/A;

    const/4 v6, 0x0

    move-object v5, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lh/A;-><init>(Lh/C;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v1, p3}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    return-object p2
.end method

.method public static updateMetadataAndSaveImages(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 1

    const-string v0, "mediaData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0, p2}, La/l;->updateCaptureMetadataAttributes(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Ljava/io/ByteArrayInputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-static {p2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p2

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_1
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    return-void
.end method


# virtual methods
.method public final createMediaStoreDocumentFile()Lcom/motorola/camera/storage/backend/MediaStoreDocumentFile;
    .locals 5

    new-instance v0, Lcom/motorola/camera/storage/backend/MediaStoreDocumentFile;

    new-instance v1, Lcom/motorola/camera/storage/MediaFilePath;

    sget-object v2, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->getMediaVolume(Z)Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getPrimaryMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v2

    :cond_2
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SCAN_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".pdf"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->ADOBE_DIR_RELATIVE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p0}, Lcom/motorola/camera/storage/MediaFilePath;-><init>(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/motorola/camera/storage/backend/MediaStoreFile;-><init>(Lcom/motorola/camera/storage/MediaFilePath;)V

    const-class p0, Lcom/motorola/camera/storage/backend/MediaStoreDocumentFile;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, p0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-object v0
.end method

.method public final recreateImageDataList(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 6

    instance-of v0, p2, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$1;

    iget v1, v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$1;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeFileManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$1;->label:I

    iget-object v3, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->photoMetadataList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->_firstCameraData:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->_pdfUri:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p2, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    sget-object p2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v5, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$2;

    invoke-direct {v5, p1, p0, v2}, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$2;-><init>(Ljava/util/List;Lcom/motorola/camera/adobe_scan/AdobeFileManager;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager$recreateImageDataList$1;->label:I

    invoke-static {p2, v5, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object v3
.end method

.method public final savePdfToMediaStore(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->createMediaStoreDocumentFile()Lcom/motorola/camera/storage/backend/MediaStoreDocumentFile;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/storage/StorageUtils;->copyTemporaryFileToMediaFile(Ljava/io/File;Lcom/motorola/camera/storage/MediaFile;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->finish()V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getFileUri()Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->_pdfUri:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final saveScan(Landroid/content/Context;Lcom/adobe/scan/sdk/ScanAppConnection$Result$PDFCreated;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    const-string v0, "Exception while trying to save files: "

    instance-of v1, p3, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;

    iget v2, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;

    invoke-direct {v1, p0, p3}, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeFileManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;->result:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;->label:I

    const-string v4, "getContentResolver(...)"

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget-object p1, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;->L$2:Ljava/io/File;

    iget-object p2, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;->L$1:Ljava/io/File;

    iget-object v1, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;->L$0:Landroid/content/Context;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    move p3, v5

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    invoke-static {p3}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->processOnSaveAnalytics(Z)V

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->saveScanAppResultPdf(Lcom/adobe/scan/sdk/ScanAppConnection$Result$PDFCreated;Landroid/content/ContentResolver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->saveScanCapturesFromAdobeScanApp(Lcom/adobe/scan/sdk/ScanAppConnection$Result$PDFCreated;Landroid/content/ContentResolver;)V

    goto :goto_3

    :cond_4
    new-instance p2, Ljava/io/File;

    sget-object p3, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->ADOBE_SCAN_TEMP_DIR:Ljava/io/File;

    const-string v3, "temp.pdf"

    invoke-direct {p2, p3, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v6, "Images"

    invoke-direct {v3, p3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    iput-object p1, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;->L$0:Landroid/content/Context;

    iput-object p2, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;->L$1:Ljava/io/File;

    iput-object v3, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;->L$2:Ljava/io/File;

    iput v5, v1, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScan$1;->label:I

    invoke-static {v3, p2, p1, v1}, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->saveTemporaryFiles(Ljava/io/File;Ljava/io/File;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_5

    return-object v2

    :cond_5
    move-object v1, p1

    move-object p1, v3

    :goto_2
    invoke-virtual {p0, p2}, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->savePdfToMediaStore(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->saveScanCaptures(Ljava/io/File;Landroid/content/ContentResolver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    sput-boolean v5, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->clearSessionOnInit:Z

    goto :goto_5

    :goto_4
    :try_start_2
    const-string p1, "AdobeFileManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_6
    sput-boolean v5, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->clearSessionOnInit:Z

    throw p0
.end method

.method public final saveScanAppResultPdf(Lcom/adobe/scan/sdk/ScanAppConnection$Result$PDFCreated;Landroid/content/ContentResolver;)V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->createMediaStoreDocumentFile()Lcom/motorola/camera/storage/backend/MediaStoreDocumentFile;

    move-result-object v0

    iget-object p1, p1, Lcom/adobe/scan/sdk/ScanAppConnection$Result$PDFCreated;->uri:Landroid/net/Uri;

    const-string v1, "r"

    invoke-virtual {p2, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getFileUri()Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->_pdfUri:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->finish()V

    return-void
.end method

.method public final saveScanCaptures(Ljava/io/File;Landroid/content/ContentResolver;)V
    .locals 10

    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->JPG_FILTER:Ljava/io/FilenameFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeFileManager$saveScanCaptures$$inlined$sortedBy$1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/ArraysKt;->sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "AdobeFileManager"

    if-eqz v0, :cond_3

    invoke-static {v0, p2}, La/l;->createMediaDataListFromFileList(Ljava/util/List;Landroid/content/ContentResolver;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, ": "

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v4, 0x1

    if-ltz v4, :cond_1

    check-cast v5, Ljava/io/File;

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v9, p0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->photoMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/photometadata/PhotoMetadata;

    iput-object v9, v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v4, v8, p2}, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->updateMetadataAndSaveImages(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Save images "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v4, v7

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v1

    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error trying to delete "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_3
    const-string p0, "Image directory is empty"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
