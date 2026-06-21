.class public final synthetic Landroidx/work/OperationKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p6, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object v1, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/saving/FileName;

    check-cast v4, Ljava/io/File;

    check-cast v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    check-cast v2, Lcom/motorola/camera/storage/backend/MediaStoreFile;

    check-cast v1, Lcom/motorola/camera/saving/FileName;

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/motorola/camera/storage/StorageUtils;->copyTemporaryFileToMediaFile(Ljava/io/File;Lcom/motorola/camera/storage/MediaFile;)Z

    move-result v5

    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    if-nez v5, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saveSuperSlowMotion: cannot copy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SaveImageService"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    invoke-virtual {v3}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->onProcessingError()V

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SUPER_SLOW_MOTION_KEEP_FILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {v1}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->rename(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    :catch_0
    :goto_0
    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iput-object p0, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->mediaStoreUri:Landroid/net/Uri;

    iget-object p0, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->DONE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingScope:Lkotlinx/coroutines/internal/ContextScope;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/MutationInterruptedException;)V

    :goto_1
    return-void

    :pswitch_0
    check-cast p0, Landroidx/work/SystemClock;

    check-cast v4, Ljava/lang/String;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast v2, Landroidx/lifecycle/MutableLiveData;

    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/tracing/TraceApi29Impl;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    :try_start_1
    const-string v0, "label"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Landroidx/tracing/Trace;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    :try_start_2
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Landroidx/work/Data$Builder;->SUCCESS:Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    new-instance v3, Landroidx/work/Operation$State$FAILURE;

    invoke-direct {v3, v0}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz p0, :cond_3

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_3
    return-void

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_4

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_4
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
