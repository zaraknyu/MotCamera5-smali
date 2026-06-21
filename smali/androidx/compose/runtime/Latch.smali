.class public final Landroidx/compose/runtime/Latch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# static fields
.field public static mVirtualTeleEnabled:Z

.field public static sAppContext:Landroid/content/Context;

.field public static sInstance:Landroidx/compose/runtime/Latch;


# instance fields
.field public final synthetic $r8$classId:I

.field public _isOpen:Z

.field public awaiters:Ljava/lang/Object;

.field public lock:Ljava/lang/Object;

.field public spareList:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 42
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 43
    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    sparse-switch p1, :sswitch_data_0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    return-void

    .line 15
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    return-void

    .line 17
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    .line 18
    new-array p2, p1, [F

    iput-object p2, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 19
    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 20
    new-instance p1, Landroidx/media3/common/util/TimedValueQueue;

    invoke-direct {p1}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    return-void

    .line 21
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 24
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v0, 0xa

    iput v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tinder/StateMachine;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lcom/tinder/StateMachine;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 3
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 4
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 6
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/ActivityManager;

    .line 8
    iput-object p1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroidx/media3/common/util/SystemClock;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p5, p2, p1}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 38
    new-instance p2, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    .line 39
    invoke-virtual {p5, p3, p1}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;-><init>(Landroidx/compose/runtime/Latch;Landroidx/media3/common/util/SystemHandlerWrapper;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)V

    iput-object p2, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;)V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p1}, Landroidx/appcompat/app/ActionBar;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-static {p1}, Landroidx/media3/common/util/Util;->isTv(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v1}, Landroid/media/AudioManager;->getSpatializer()Landroid/media/Spatializer;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 52
    invoke-virtual {p1}, Landroid/media/Spatializer;->getImmersiveAudioLevel()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 53
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;)V

    iput-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 54
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 55
    new-instance p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, p0, v0}, Landroid/media/Spatializer;->addOnSpatializerStateChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    goto :goto_2

    .line 56
    :cond_3
    :goto_1
    iput-object v0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 57
    iput-boolean v2, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 58
    iput-object v0, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 59
    iput-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 33
    iput-object p2, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 34
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache$Entry;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 45
    iput-object p2, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 46
    iget-boolean p2, p2, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache$Entry;->readable:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;->valueCount:I

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 28
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 30
    iput-boolean p1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/util/EnumMap;Z)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 62
    iput-object p2, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 64
    iput-boolean p4, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    return-void
.end method

.method public static computeRecenterMatrix([F[F)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 v1, 0xa

    aget v2, p1, v1

    mul-float/2addr v2, v2

    const/16 v3, 0x8

    aget v4, p1, v3

    mul-float/2addr v4, v4

    add-float/2addr v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    aget v4, p1, v1

    div-float/2addr v4, v2

    aput v4, p0, v0

    aget p1, p1, v3

    div-float v0, p1, v2

    const/4 v5, 0x2

    aput v0, p0, v5

    neg-float p1, p1

    div-float/2addr p1, v2

    aput p1, p0, v3

    aput v4, p0, v1

    return-void
.end method

.method public static declared-synchronized getInstance()Landroidx/compose/runtime/Latch;
    .locals 4

    const-class v0, Landroidx/compose/runtime/Latch;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/compose/runtime/Latch;->sInstance:Landroidx/compose/runtime/Latch;

    if-nez v1, :cond_1

    sget-object v1, Landroidx/compose/runtime/Latch;->sAppContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/runtime/Latch;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/compose/runtime/Latch;-><init>(IB)V

    sput-object v1, Landroidx/compose/runtime/Latch;->sInstance:Landroidx/compose/runtime/Latch;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Context is null. Have you called init?"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/Latch;->sInstance:Landroidx/compose/runtime/Latch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isPackageInstalled(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroidx/compose/runtime/Latch;->sAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public abort()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;->-$$Nest$mcompleteEdit(Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;Landroidx/compose/runtime/Latch;Z)V

    return-void
.end method

.method public varargs cacheVersionForPackage([Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Landroidx/compose/runtime/Latch;->sAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x80

    :try_start_0
    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v6, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v5, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public endTracks()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    iget-object v1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    iget-boolean p0, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->shouldSuppressParsingErrors:Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getActiveUnLimitedZoomEntityMap()Ljava/util/HashMap;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionCaptureOn()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/Util;->isSampleApk()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v5, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/utility/ZoomSegment;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    iget-boolean v4, v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    iget-boolean v4, v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mLimited:Z

    if-nez v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/utility/ZoomSegment;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getActiveZoomEntityMap()Ljava/util/HashMap;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/utility/ZoomSegment;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache$Entry;

    iget-object v2, v1, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache$Entry;->currentEditor:Landroidx/compose/runtime/Latch;

    if-ne v2, p0, :cond_1

    iget-boolean v2, v1, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache$Entry;->readable:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast v2, [Z

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, v1, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v1, v1, v3

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;

    iget-object p0, p0, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    monitor-exit v0

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getImagerTuningName()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "unknown"

    const-string v3, "PackageUtility"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const-string v0, "Error reading android version letter from Build.ID"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.motorola.imagertuning_"

    if-nez v1, :cond_1

    invoke-static {v2, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/Latch;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const/16 v0, 0x7a

    :goto_1
    const/16 v1, 0x75

    if-lt v0, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/Latch;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-object v1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_5

    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v0

    array-length v1, v0

    move v2, v4

    :goto_3
    if-ge v2, v1, :cond_5

    aget v5, v0, v2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->getMPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/runtime/Latch;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->getMPackageName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_6

    iput-boolean v4, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    const-string v0, "Imager Tuning not found on device installed applications."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getLongVersionForPackage(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/Latch;->cacheVersionForPackage([Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public getSegmentByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/utility/ZoomSegment;
    .locals 2

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/ZoomSegment;

    return-object p0

    :cond_1
    sget-object p0, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    return-object p0
.end method

.method public getZoomMaxX(Lcom/motorola/camera/utility/ZoomSegment;)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->getMaxZoomX()F

    move-result p0

    return p0
.end method

.method public getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->getMinZoomX()F

    move-result p0

    return p0
.end method

.method public isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isZoomLimited(Lcom/motorola/camera/utility/ZoomSegment;)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mLimited:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public refreshZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getDisableCameraTypesForActivePhoto()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->disableCameraTypeIfActivePhotoOn(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    :cond_0
    return-void
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    return-void
.end method

.method public setEnabled()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/SystemHandlerWrapper;

    iget-boolean v1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    return-void
.end method

.method public setVideoRecording(Z)V
    .locals 6

    iget-boolean v0, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    iget-object v1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    sget-boolean v2, Landroidx/compose/runtime/Latch;->mVirtualTeleEnabled:Z

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Latch;->shouldTeleUIMapToMainCamera(Z)Z

    move-result v3

    if-eq v2, v3, :cond_1

    sget-boolean v2, Landroidx/compose/runtime/Latch;->mVirtualTeleEnabled:Z

    xor-int/lit8 v3, v2, 0x1

    sput-boolean v3, Landroidx/compose/runtime/Latch;->mVirtualTeleEnabled:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ZoomVirtualTeleEntity;

    iget-object v4, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v3, v4, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ZoomTeleEntity;

    iget-object v4, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v3, v4, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showTeleExtra()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ZoomTeleExtraEntity;

    iget-object v4, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/settings/CameraType;

    sget-boolean v5, Landroidx/compose/runtime/Latch;->mVirtualTeleEnabled:Z

    invoke-direct {v3, v2, v4, v0, v5}, Lcom/motorola/camera/ui/widgets/gl/ZoomTeleExtraEntity;-><init>(Lcom/motorola/camera/utility/ZoomSegment;Lcom/motorola/camera/settings/CameraType;ZZ)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->setVideoRecording(Z)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;

    invoke-interface {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;->onVideoStateChanged(Z)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public setupZoomModel(Lcom/motorola/camera/settings/CameraType;)V
    .locals 8

    iget-boolean v0, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    iget-object v1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object p1, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/EnumMap;

    sget-object p1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    invoke-static {p1}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->PO:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ZoomPortraitEntity;

    iget-object v3, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v2, v3, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;

    invoke-static {p1}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ZoomPortraitEntity;

    iget-object v3, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v2, v3, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;

    invoke-static {p1}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ZoomPortraitEntity;

    iget-object v3, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v2, v3, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object p1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;

    invoke-static {p1}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ZoomPortraitEntity;

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v2, p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isBackCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/Latch;->shouldTeleUIMapToMainCamera(Z)Z

    move-result p1

    sput-boolean p1, Landroidx/compose/runtime/Latch;->mVirtualTeleEnabled:Z

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ZoomMacroEntity;

    iget-object v5, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v4, v5, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v1, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ZoomUWEntity;

    iget-object v5, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v4, v5, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v1, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ZoomMainEntity;

    iget-object v5, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v4, v5, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v1, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-boolean v4, Landroidx/compose/runtime/Latch;->mVirtualTeleEnabled:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ZoomVirtualTeleEntity;

    iget-object v6, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v5, v6, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ZoomTeleEntity;

    iget-object v6, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v5, v6, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showTeleExtra()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ZoomTeleExtraEntity;

    iget-object v6, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/settings/CameraType;

    sget-boolean v7, Landroidx/compose/runtime/Latch;->mVirtualTeleEnabled:Z

    invoke-direct {v5, v4, v6, v0, v7}, Lcom/motorola/camera/ui/widgets/gl/ZoomTeleExtraEntity;-><init>(Lcom/motorola/camera/utility/ZoomSegment;Lcom/motorola/camera/settings/CameraType;ZZ)V

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showTeleUltra()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->T_U:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ZoomTeleUltraEntity;

    iget-object v6, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v5, v6, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    iput-object p1, v5, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showTeleUltra()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionCaptureSupportedByBackTeleCamera()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    move v2, v3

    :goto_1
    iput-boolean v2, v5, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    sget p1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->ZOOM_TELE_ULTRA_RATIO:F

    iget-object v2, v5, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomXByBlendingCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    new-instance v3, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v3, p1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v3, v5, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showMain2x()Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ZoomMain2XEntity;

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v2, p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSelfieFovSwitchMode()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/FovSwitchZoomMainEntity;

    iget-object v3, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v2, v3, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/FovSwitchZoomUWEntity;

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v2, p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_b
    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ZoomMainEntity;

    iget-object v5, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v4, v5, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v1, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/Util;->isDesktopModeWithLidClosed()Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_c

    move p1, v2

    goto :goto_2

    :cond_c
    move p1, v3

    :goto_2
    sget-object v4, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    if-nez v4, :cond_e

    if-eqz p1, :cond_d

    goto :goto_3

    :cond_d
    return-void

    :cond_e
    :goto_3
    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ZoomUWEntity;

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/CameraType;

    if-nez v0, :cond_10

    if-eqz p1, :cond_f

    goto :goto_4

    :cond_f
    move v2, v3

    :cond_10
    :goto_4
    invoke-direct {v5, p0, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setupZoomModelForAudioLensSwitch(Lcom/motorola/camera/settings/CameraType;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ZoomMainEntity;

    iget-object v2, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/settings/CameraType;

    iget-boolean p0, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    invoke-direct {v1, v2, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Latch;->setupZoomModel(Lcom/motorola/camera/settings/CameraType;)V

    return-void
.end method

.method public shouldTeleUIMapToMainCamera(Z)Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-boolean p0, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomSupported(Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isMainCameraOnlyVideoModes()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showMain2x()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showTeleExtra()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingVideoMode()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimited()Z

    move-result p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldLimitZoomByVideoSize()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_5

    :cond_1
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isMainCameraOnlyVideoModes()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showMain2x()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showTeleExtra()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMainCamera()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackWideCamera()Z

    return v1

    :cond_4
    if-eqz p0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCaseWithTele()Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_1
    return v1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/zzv;

    invoke-direct {v1, p1, p2}, Lcom/google/mlkit/common/sdkinternal/zzv;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/Latch;->zzd(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZoomModel{mCurrentCameraType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mZoomEntityMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraMapping{sensorName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sensorNameOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", physicalRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    if-eqz p0, :cond_0

    const-string p0, ", isVirtualCamera=true"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    iget-object v1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/ExtractorOutput;

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    invoke-interface {v1, p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    new-instance v2, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

    invoke-interface {v1, p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p2

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v2, p2, p0}, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;-><init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2
.end method

.method public updateZoomX(FZ)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/settings/CameraType;

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-interface {v0, v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;->onZoomChanged(Lcom/motorola/camera/utility/ZoomSegment;FZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/Latch;->getActiveUnLimitedZoomEntityMap()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v6

    check-cast v2, Lcom/motorola/camera/utility/ZoomSegment;

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    iget-object v8, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/settings/CameraType;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSelfieFovSwitchMode()Z

    move-result v8

    if-nez v8, :cond_a

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    sget-boolean v8, Landroidx/compose/runtime/Latch;->mVirtualTeleEnabled:Z

    if-eqz v8, :cond_5

    :cond_4
    iget-object v8, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/settings/CameraType;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-nez v8, :cond_a

    :cond_5
    if-eqz v3, :cond_6

    iget-object v8, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/settings/CameraType;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/settings/CameraType;

    iget-object v9, v7, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    if-ne v8, v9, :cond_3

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->getMinZoomX()F

    move-result v8

    sub-float v8, p1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x3c75c28f    # 0.015f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->getMaxZoomX()F

    move-result v7

    sub-float v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v9

    if-gez v7, :cond_3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/utility/ZoomSegment;

    goto :goto_2

    :cond_7
    iget-object v8, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/settings/CameraType;

    iget-object v9, v7, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    if-ne v8, v9, :cond_3

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->getMinZoomX()F

    move-result v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_8

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->getMaxZoomX()F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_9

    :cond_8
    move p2, v6

    :cond_9
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/utility/ZoomSegment;

    goto :goto_2

    :cond_a
    :goto_1
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->getMinZoomX()F

    move-result v8

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_3

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->getMaxZoomX()F

    move-result v7

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/utility/ZoomSegment;

    goto :goto_2

    :cond_b
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateZoomX: not found the targetSegment, cameraType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", zoom:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ZoomModel"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->getMinZoomX()F

    move-result v1

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_d

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->getMaxZoomX()F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_c

    goto :goto_3

    :cond_c
    move v6, p2

    :cond_d
    :goto_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;

    invoke-interface {p2, v2, p1, v6}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;->onZoomChanged(Lcom/motorola/camera/utility/ZoomSegment;FZ)V

    goto :goto_4

    :cond_e
    :goto_5
    return-void
.end method

.method public zzc()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/common/sdkinternal/zzv;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/google/mlkit/common/sdkinternal/zzv;->zza:Ljava/util/concurrent/Executor;

    iget-object v1, v1, Lcom/google/mlkit/common/sdkinternal/zzv;->zzb:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v0}, Landroidx/compose/runtime/Latch;->zzd(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public zzd(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$8;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p0, p1}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Landroidx/compose/runtime/Latch;->zzc()V

    return-void
.end method
