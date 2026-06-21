.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# instance fields
.field public final appContext:Landroid/content/Context;

.field public final cancelButtonVisible:Landroidx/lifecycle/MediatorLiveData;

.field public cancelRequestOngoing:Z

.field public final contentHidden:Landroidx/lifecycle/MutableLiveData;

.field public final currentFrame:Landroidx/lifecycle/MutableLiveData;

.field public currentFrameIndex:I

.field public final data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

.field public final defaultMinRange:I

.field public final duration:Landroidx/lifecycle/MutableLiveData;

.field public final editControlsVisible:Landroidx/lifecycle/MediatorLiveData;

.field public final maxRange:I

.field public final mediaRetriever:Landroid/media/MediaMetadataRetriever;

.field public mediaStoreUri:Landroid/net/Uri;

.field public final minRange:Landroidx/lifecycle/MutableLiveData;

.field public final playButtonSelected:Landroidx/lifecycle/MediatorLiveData;

.field public final playWhenReady:Landroidx/lifecycle/MutableLiveData;

.field public final previews:Landroidx/lifecycle/MutableLiveData;

.field public final processProgress:Landroidx/lifecycle/MutableLiveData;

.field public final processingDone:Landroidx/lifecycle/MediatorLiveData;

.field public final processingError:Landroidx/lifecycle/MediatorLiveData;

.field public final processingIndicatorVisible:Landroidx/lifecycle/MediatorLiveData;

.field public final processingPercentageVisible:Landroidx/lifecycle/MediatorLiveData;

.field public final processingPreview:Landroidx/lifecycle/MutableLiveData;

.field public final processingProgress:Landroidx/lifecycle/MediatorLiveData;

.field public final processingProgressPercentage:Landroidx/lifecycle/MediatorLiveData;

.field public final processingScope:Lkotlinx/coroutines/internal/ContextScope;

.field public final processingSlideshowVisible:Landroidx/lifecycle/MediatorLiveData;

.field public final processingStatus:Landroidx/lifecycle/MutableLiveData;

.field public final processingThumbnailUpdateInterval:J

.field public final rangeObserver:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;

.field public final selectedRange:Landroidx/lifecycle/MutableLiveData;

.field public final superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

.field public final thumbnailCount:I

.field public thumbnailTimer:Ljava/util/Timer;

.field public totalFrames:I

.field public totalProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getApplicationContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->appContext:Landroid/content/Context;

    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v5, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->mediaRetriever:Landroid/media/MediaMetadataRetriever;

    new-instance v5, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v5}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v5, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playWhenReady:Landroidx/lifecycle/MutableLiveData;

    new-instance v6, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v6}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v6, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    new-instance v7, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v7}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v7, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processProgress:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b007f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingThumbnailUpdateInterval:J

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b007e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailCount:I

    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    move-result-object v8

    sget-object v9, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v9, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    iget-object v9, v9, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {v8, v9}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v8

    invoke-static {v8}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v8

    iput-object v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v9, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v10, 0x8

    invoke-direct {v9, v10}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v6, v9}, Landroidx/lifecycle/LifecycleKt;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v9

    iput-object v9, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->editControlsVisible:Landroidx/lifecycle/MediatorLiveData;

    new-instance v9, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v10, 0xa

    invoke-direct {v9, v10}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v6, v9}, Landroidx/lifecycle/LifecycleKt;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v9

    iput-object v9, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingIndicatorVisible:Landroidx/lifecycle/MediatorLiveData;

    new-instance v9, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v10, 0xb

    invoke-direct {v9, v10}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v6, v9}, Landroidx/lifecycle/LifecycleKt;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v9

    iput-object v9, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingPercentageVisible:Landroidx/lifecycle/MediatorLiveData;

    new-instance v9, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda4;

    invoke-direct {v9, v0, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;I)V

    invoke-static {v7, v9}, Landroidx/lifecycle/LifecycleKt;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v9

    iput-object v9, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingProgress:Landroidx/lifecycle/MediatorLiveData;

    new-instance v9, Landroidx/lifecycle/MutableLiveData;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v9, v10}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    iput-object v9, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->contentHidden:Landroidx/lifecycle/MutableLiveData;

    new-instance v9, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda4;

    const/4 v11, 0x1

    invoke-direct {v9, v0, v11}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;I)V

    invoke-static {v7, v9}, Landroidx/lifecycle/LifecycleKt;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v9

    iput-object v9, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingProgressPercentage:Landroidx/lifecycle/MediatorLiveData;

    new-instance v9, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v12, 0xc

    invoke-direct {v9, v12}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v6, v9}, Landroidx/lifecycle/LifecycleKt;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v9

    iput-object v9, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingSlideshowVisible:Landroidx/lifecycle/MediatorLiveData;

    new-instance v9, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v12, 0xd

    invoke-direct {v9, v12}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v6, v9}, Landroidx/lifecycle/LifecycleKt;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v9

    iput-object v9, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelButtonVisible:Landroidx/lifecycle/MediatorLiveData;

    new-instance v9, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v12, 0xe

    invoke-direct {v9, v12}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v6, v9}, Landroidx/lifecycle/LifecycleKt;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v9

    iput-object v9, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingDone:Landroidx/lifecycle/MediatorLiveData;

    new-instance v9, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda4;

    const/4 v12, 0x2

    invoke-direct {v9, v0, v12}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;I)V

    invoke-static {v6, v9}, Landroidx/lifecycle/LifecycleKt;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v9

    new-instance v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iput-boolean v11, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v14, v9, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    sget-object v15, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-eq v14, v15, :cond_0

    iput-boolean v2, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v14, Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v14, v15}, Landroidx/lifecycle/MediatorLiveData;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v14, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v14}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    :goto_0
    new-instance v15, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;

    invoke-direct {v15, v11, v14, v13}, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v13, v15, v2}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v14, v9, v13}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;)V

    iput-object v14, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingError:Landroidx/lifecycle/MediatorLiveData;

    new-instance v9, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v13, 0x9

    invoke-direct {v9, v13}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v5, v9}, Landroidx/lifecycle/LifecycleKt;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v9

    iput-object v9, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playButtonSelected:Landroidx/lifecycle/MediatorLiveData;

    new-instance v9, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v9}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v9, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->previews:Landroidx/lifecycle/MutableLiveData;

    new-instance v13, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v13}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v13, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingPreview:Landroidx/lifecycle/MutableLiveData;

    new-instance v14, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v14}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v14, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->duration:Landroidx/lifecycle/MutableLiveData;

    new-instance v15, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v15}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v15, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    new-instance v12, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v12}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v12, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrame:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v2, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->minRange:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v16, v11

    const v11, 0x7f0b007c

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->defaultMinRange:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x7f0b0079

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move-object/from16 v17, v8

    const v8, 0x7f0b007a

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->maxRange:I

    sget-object v8, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->INITIALIZING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {v6, v8}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v7, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    move/from16 v8, v16

    const/4 v7, 0x0

    filled-new-array {v7, v8}, [I

    move-result-object v8

    invoke-virtual {v15, v8}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    new-instance v7, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    invoke-direct {v7, v1, v2, v0, v4}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;ILcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Landroid/content/Context;)V

    iput-object v7, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    invoke-virtual {v5, v10}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v12, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$1;

    invoke-direct {v2, v0, v6}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v3, v17

    const/4 v4, 0x2

    invoke-static {v3, v1, v6, v2, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;

    const/4 v7, 0x0

    invoke-direct {v1, v7, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->rangeObserver:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;

    invoke-virtual {v15, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperSlowMotionViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final finishProcessing(Lcom/motorola/camera/superslowmotion/ProcessingStatus;)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingScope:Lkotlinx/coroutines/internal/ContextScope;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$1;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, p1, v2, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :cond_1
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$2;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$2;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, p1, v2, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onCleared()V
    .locals 5

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->DONE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->ERROR:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v0, v3}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/MutationInterruptedException;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->stopInternal(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    new-instance v1, Landroidx/media3/common/text/CueGroup;

    sget-object v2, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-direct {v1, v2}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->release()V

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->rangeObserver:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_3
    return-void
.end method

.method public final onProcessingError()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->ERROR:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->FAILED:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->processForAnalytics(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;)V

    return-void
.end method

.method public final setPlayWhenReady(Z)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playWhenReady:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v1

    iget v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->updatePlaybackSpeed(J)V

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;->PLAY:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->editActions:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setSelectingRange(Z)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    if-eqz p1, :cond_0

    iget-object p0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    return-void

    :cond_0
    iget-object p1, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playWhenReady:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_1
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    invoke-virtual {v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->resetVideoPosition()V

    return-void
.end method

.method public final startProcessing()V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setPlayWhenReady(Z)V

    iget v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->totalFrames:I

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    iget-object v2, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->last([I)I

    move-result v2

    iget-object v3, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->first([I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    iget v3, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->last([I)I

    move-result v3

    iget-object v4, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->first([I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->getRecordingDuration()J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sub-int/2addr v0, v2

    iget v1, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->slowMotionProgressFactor:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    iput v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->totalProgress:I

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->SETTING_UP:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v1, Ljava/util/Timer;

    const-string v0, "Super slow motion thumbnail timer"

    invoke-direct {v1, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailTimer:Ljava/util/Timer;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$2;

    const/4 v0, 0x2

    invoke-direct {v2, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$2;-><init>(ILjava/lang/Object;)V

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingThumbnailUpdateInterval:J

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v1, v3, v2, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final updateProcessingPreview()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->previews:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrameIndex:I

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-lt v1, v3, :cond_3

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrameIndex:I

    :cond_4
    :goto_1
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrameIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingPreview:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
