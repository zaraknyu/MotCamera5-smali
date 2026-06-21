.class public final synthetic Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/io/Serializable;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    iput-object p3, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    check-cast p3, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput-object p3, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    iget-object v1, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    check-cast v1, Lkotlinx/coroutines/CoroutineStart;

    iget-object p0, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    sget-object v2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    new-instance v3, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v4, 0x13

    invoke-direct {v3, v4, v2}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-object v2, p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    if-eqz v2, :cond_0

    sget-object v4, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    invoke-virtual {v2, v3, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v2, Landroidx/work/ListenableFutureKt$launchFuture$1$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Landroidx/work/ListenableFutureKt$launchFuture$1$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x1

    invoke-static {v0, v3, v1, v2, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v3, Landroidx/work/WorkerKt$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    iget-object v4, p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    if-eqz v4, :cond_1

    sget-object v5, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    invoke-virtual {v4, v3, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    new-instance v3, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/4 v4, 0x6

    invoke-direct {v3, v2, p1, p0, v4}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public create(ILandroidx/media3/common/TrackGroup;[I)Lcom/google/common/collect/RegularImmutableList;
    .locals 9

    iget-object v0, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-object v0, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object p0, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    move-object v8, p0

    check-cast v8, Ljava/lang/String;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p0

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    iget v0, p2, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v4, v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    aget v6, p3, v4

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public onSurface(Landroid/view/Surface;)V
    .locals 5

    iget-object v0, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    check-cast v1, [Z

    iget-object p0, p0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/camera2/CaptureRequest;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    aget-boolean v0, v1, v2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/Util;->GET_TARGETS_MTD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move p0, v2

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    aput-boolean v3, v1, v2

    return-void
.end method
