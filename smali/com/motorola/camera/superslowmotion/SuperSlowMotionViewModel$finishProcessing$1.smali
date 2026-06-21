.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$1;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionProcess:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    sget-object v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v5, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFile:Ljava/io/File;

    if-eqz v5, :cond_0

    iget-object v0, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->slowMotionData:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    iget-object v6, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    iget-object p1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v7

    sget-object p1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    new-instance v4, Lcom/motorola/camera/saving/FileName;

    sget-object v1, Lcom/motorola/camera/ShotType;->VIDEO_SLOW_MOTION:Lcom/motorola/camera/ShotType;

    iget-wide v2, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->targetVideoDate:J

    invoke-direct {v4, v1, v2, v3}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    new-instance v8, Lcom/motorola/camera/saving/FileName;

    iget-wide v2, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoDate:J

    invoke-direct {v8, v1, v2, v3}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    const-wide/32 v0, 0x4000000

    invoke-virtual {v8, v0, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    new-instance v3, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v3}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "saveSuperSlowMotion: tempFile is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    iget-object v0, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFile:Ljava/io/File;

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    iget-object p1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-virtual {p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->onProcessingError()V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "save: transcode process not complete: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    sget-object p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->SAVE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->processForAnalytics(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
