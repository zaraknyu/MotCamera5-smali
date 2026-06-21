.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    iget-object v0, v12, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    iget-object v2, v12, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->appContext:Landroid/content/Context;

    iget v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, v3

    const/4 v13, 0x0

    move v6, v13

    :goto_0
    if-ge v6, v5, :cond_0

    aget v7, v3, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v9, v7

    int-to-long v14, v1

    mul-long/2addr v9, v14

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toLongArray(Ljava/util/ArrayList;)[J

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    array-length v6, v4

    move v7, v13

    :goto_1
    if-ge v7, v6, :cond_1

    aget v8, v4, v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v10, v8

    int-to-long v14, v1

    mul-long/2addr v10, v14

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toLongArray(Ljava/util/ArrayList;)[J

    move-result-object v1

    move-object v4, v1

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    move-object v5, v3

    iget-object v3, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    move-object v7, v4

    move-object v6, v5

    aget-wide v4, v7, v13

    const/4 v14, 0x1

    aget-wide v7, v7, v14

    move-object v10, v6

    move-wide v6, v7

    aget-wide v8, v10, v13

    aget-wide v10, v10, v14

    invoke-direct/range {v1 .. v12}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;-><init>(Landroid/content/Context;Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;JJJJLcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V

    iput-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionProcess:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    sget-object v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    iget-object v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    sget-object v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-ne v0, v14, :cond_7

    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;->INITIALIZED:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    iput-object v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    new-instance v4, Lcom/motorola/camera/saving/FileName;

    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    iget-wide v5, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->targetVideoDate:J

    invoke-direct {v4, v0, v5, v6}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile$default(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFile:Ljava/io/File;

    const/high16 v6, 0x30000000

    invoke-static {v0, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_2

    const-string v0, "Cannot open file descriptor"

    invoke-virtual {v1, v0, v5}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setupTemporaryFile: cannot create temporary file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_2
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaExtractor:Landroid/media/MediaExtractor;

    iget-object v0, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v3, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v3, :cond_4

    iget-object v4, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    move v4, v13

    :goto_3
    if-ge v4, v0, :cond_4

    invoke-virtual {v3, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    const-string v7, "getTrackFormat(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "mime"

    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string/jumbo v8, "video"

    invoke-static {v7, v8, v13}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v7

    if-ne v7, v14, :cond_3

    invoke-virtual {v3, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    iput v4, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoTrack:I

    const-string/jumbo v0, "rotation-degrees"

    invoke-virtual {v6, v0, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->orientationHint:I

    const-string v0, "frame-rate"

    invoke-virtual {v6, v0, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->baseFrameRate:I

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "failed to read track data for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    iget v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoTrack:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    iget v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->baseFrameRate:I

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, v13}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;I)V

    iget-object v1, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_6
    :goto_5
    const-string v0, "failed to find proper track"

    invoke-virtual {v1, v0, v5}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6

    :cond_7
    iget-object v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "triggerProcessing: is not idle: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
