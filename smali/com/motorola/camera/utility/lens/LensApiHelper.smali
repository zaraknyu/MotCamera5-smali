.class public final Lcom/motorola/camera/utility/lens/LensApiHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/utility/lens/LensApiHelper;

.field public static final googleLensCallbacks:Ljava/util/Set;

.field public static googleLensStatusChecked:Z

.field public static initJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public static isGoogleLensAvailable:Z

.field public static isInitialized:Z

.field public static lensApi:Lcom/motorola/camera/utility/lens/LensApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/utility/lens/LensApiHelper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->INSTANCE:Lcom/motorola/camera/utility/lens/LensApiHelper;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "synchronizedSet(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->googleLensCallbacks:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final declared-synchronized checkGoogleLensAvailability(Lcom/motorola/camera/utility/lens/LensApiHelper$StatusCheckCallback;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->googleLensStatusChecked:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/motorola/camera/utility/lens/LensApiHelper$StatusCheckCallback;->onStatusChecked()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->googleLensCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-boolean p1, Lcom/motorola/camera/utility/lens/LensApiHelper;->isInitialized:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/utility/lens/LensApiHelper;->initialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized initialize()V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v3, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;-><init>(JLkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {v2, v4, v4, v3, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->initJob:Lkotlinx/coroutines/StandaloneCoroutine;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->isInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized isGoogleLensAvailable()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->isInitialized:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/motorola/camera/utility/lens/LensApiHelper;->lensApi:Lcom/motorola/camera/utility/lens/LensApi;

    sget-object v2, Lcom/motorola/camera/utility/lens/LensApiHelper;->initJob:Lkotlinx/coroutines/StandaloneCoroutine;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sput-boolean v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->googleLensStatusChecked:Z

    sput-boolean v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable:Z

    sget-object v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->googleLensCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
