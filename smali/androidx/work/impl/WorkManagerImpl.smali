.class public final Landroidx/work/impl/WorkManagerImpl;
.super Landroidx/work/WorkManager;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static sDefaultInstance:Landroidx/work/impl/WorkManagerImpl;

.field public static sDelegatedInstance:Landroidx/work/impl/WorkManagerImpl;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public final mConfiguration:Landroidx/work/Configuration;

.field public final mContext:Landroid/content/Context;

.field public mForceStopRunnableCompleted:Z

.field public final mPreferenceUtils:Lcom/google/android/gms/tasks/zzad;

.field public final mProcessor:Landroidx/work/impl/Processor;

.field public volatile mRemoteWorkManager:Landroidx/work/multiprocess/RemoteWorkManager;

.field public mRescheduleReceiverResult:Landroid/content/BroadcastReceiver$PendingResult;

.field public final mSchedulers:Ljava/util/List;

.field public final mTrackers:Lcom/motorola/camera/AppFeatures;

.field public final mWorkDatabase:Landroidx/work/impl/WorkDatabase;

.field public final mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/WorkManagerImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Landroidx/work/impl/WorkManagerImpl;->sDelegatedInstance:Landroidx/work/impl/WorkManagerImpl;

    sput-object v0, Landroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Landroidx/work/impl/WorkManagerImpl;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/impl/WorkManagerImpl;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/transition/TransitionValuesMaps;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/Processor;Lcom/motorola/camera/AppFeatures;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/work/impl/WorkManagerImpl;->mForceStopRunnableCompleted:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Landroidx/work/Logger$LogcatLogger;

    iget v2, p2, Landroidx/work/Configuration;->minimumLoggingLevel:I

    invoke-direct {v1, v2}, Landroidx/work/Logger$LogcatLogger;-><init>(I)V

    sget-object v2, Landroidx/work/Logger$LogcatLogger;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroidx/work/Logger$LogcatLogger;->sLogger:Landroidx/work/Logger$LogcatLogger;

    if-nez v3, :cond_0

    sput-object v1, Landroidx/work/Logger$LogcatLogger;->sLogger:Landroidx/work/Logger$LogcatLogger;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Landroidx/work/impl/WorkManagerImpl;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iput-object p4, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iput-object p6, p0, Landroidx/work/impl/WorkManagerImpl;->mProcessor:Landroidx/work/impl/Processor;

    iput-object p7, p0, Landroidx/work/impl/WorkManagerImpl;->mTrackers:Lcom/motorola/camera/AppFeatures;

    iput-object p2, p0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iput-object p5, p0, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    iget-object p7, p3, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    check-cast p7, Lkotlinx/coroutines/CoroutineDispatcher;

    const-string/jumbo v1, "taskExecutor.taskCoroutineDispatcher"

    invoke-static {p7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p7}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p7

    new-instance v1, Lcom/google/android/gms/tasks/zzad;

    const/16 v2, 0x16

    invoke-direct {v1, v2, p4}, Lcom/google/android/gms/tasks/zzad;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->mPreferenceUtils:Lcom/google/android/gms/tasks/zzad;

    iget-object v1, p3, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast v1, Landroidx/room/TransactionExecutor;

    sget-object v2, Landroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    new-instance v2, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p5, p2, p4}, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;)V

    invoke-virtual {p6, v2}, Landroidx/work/impl/Processor;->addExecutionListener(Landroidx/work/impl/ExecutionListener;)V

    new-instance p5, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {p5, p1, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;)V

    invoke-virtual {p3, p5}, Landroidx/transition/TransitionValuesMaps;->executeOnTaskThread(Ljava/lang/Runnable;)V

    sget-object p0, Landroidx/work/impl/UnfinishedWorkListenerKt;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Landroidx/work/impl/utils/ProcessUtils;->isDefaultProcess(Landroid/content/Context;Landroidx/work/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p4}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    sget-object p3, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    invoke-static {v0, p2}, Landroidx/room/Room;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object p2

    iget-object p3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/work/impl/WorkDatabase_Impl;

    const-string/jumbo p4, "workspec"

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p4

    new-instance p5, Lcom/google/mlkit/vision/common/internal/zza;

    invoke-direct {p5, p0, p2}, Lcom/google/mlkit/vision/common/internal/zza;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    new-instance p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p0, p2, p5}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p5

    invoke-static {p4, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    const-string/jumbo p6, "tables"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p5, p5, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p6, "toLowerCase(...)"

    new-instance v1, Lkotlin/collections/builders/SetBuilder;

    invoke-direct {v1}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    array-length v2, p4

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p4, v3

    iget-object v5, p5, Landroidx/room/TriggerBasedInvalidationTracker;->viewTables:Ljava/util/HashMap;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-eqz v5, :cond_1

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v1, v5}, Lkotlin/collections/builders/SetBuilder;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v4}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/collections/SetsKt;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    move-result-object p4

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    array-length v1, p4

    new-array v2, v1, [I

    :goto_3
    if-ge v0, v1, :cond_4

    aget-object v3, p4, v0

    iget-object v4, p5, Landroidx/room/TriggerBasedInvalidationTracker;->tableIdLookup:Ljava/util/LinkedHashMap;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There is no table with name "

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p6, Lkotlin/Pair;

    invoke-direct {p6, p4, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p4, p6, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast p4, [Ljava/lang/String;

    iget-object p6, p6, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast p6, [I

    const-string/jumbo v0, "resolvedTableNames"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tableIds"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p5, p6, p4, v1}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;[I[Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p4, v0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    const/4 p5, -0x1

    invoke-static {p4, p5}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    new-instance p6, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;

    invoke-direct {p6, p4, p3, p0}, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/work/impl/WorkDatabase_Impl;Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;)V

    new-instance p0, Landroidx/work/impl/UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1;

    const/4 p3, 0x4

    invoke-direct {p0, p3, v1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;

    invoke-direct {p3, p6, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)V

    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance p2, Landroidx/work/impl/UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$2;

    invoke-direct {p2, p1, v1}, Landroidx/work/impl/UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$2;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;

    invoke-direct {p1, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__CollectKt$launchIn$1;

    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__CollectKt$launchIn$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {p7, v1, v1, p0, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_5
    return-void

    :goto_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;
    .locals 4

    sget-object v0, Landroidx/work/impl/WorkManagerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Landroidx/work/impl/WorkManagerImpl;->sDelegatedInstance:Landroidx/work/impl/WorkManagerImpl;

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    sget-object v1, Landroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Landroidx/work/impl/WorkManagerImpl;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-nez v1, :cond_2

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    instance-of v1, p0, Landroidx/work/Configuration$Provider;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroidx/work/Configuration$Provider;

    check-cast v1, Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/work/Data$Builder;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "processName"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v2, Landroidx/work/Data$Builder;->values:Ljava/lang/Object;

    new-instance v1, Landroidx/work/Configuration;

    invoke-direct {v1, v2}, Landroidx/work/Configuration;-><init>(Landroidx/work/Data$Builder;)V

    invoke-static {p0, v1}, Landroidx/work/impl/WorkManagerImpl;->initialize(Landroid/content/Context;Landroidx/work/Configuration;)V

    invoke-static {p0}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static initialize(Landroid/content/Context;Landroidx/work/Configuration;)V
    .locals 3

    sget-object v0, Landroidx/work/impl/WorkManagerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/work/impl/WorkManagerImpl;->sDelegatedInstance:Landroidx/work/impl/WorkManagerImpl;

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Landroidx/work/impl/WorkManagerImpl;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Landroidx/work/impl/WorkManagerImpl;

    if-nez v1, :cond_2

    invoke-static {p0, p1}, Landroidx/work/impl/WorkManagerImplExtKt;->createWorkManager(Landroid/content/Context;Landroidx/work/Configuration;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object p0

    sput-object p0, Landroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Landroidx/work/impl/WorkManagerImpl;

    :cond_2
    sget-object p0, Landroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Landroidx/work/impl/WorkManagerImpl;

    sput-object p0, Landroidx/work/impl/WorkManagerImpl;->sDelegatedInstance:Landroidx/work/impl/WorkManagerImpl;

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final cancelWorkById(Ljava/util/UUID;)Landroidx/work/Data$Builder;
    .locals 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object v0, v0, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast v1, Landroidx/room/TransactionExecutor;

    const-string/jumbo v2, "workManagerImpl.workTask\u2026ecutor.serialTaskExecutor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, p1}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string p0, "CancelWorkById"

    invoke-static {v0, p0, v1, v2}, Landroidx/work/OperationKt;->launchOperation(Landroidx/work/SystemClock;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Landroidx/work/Data$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final getWorkInfos(Landroidx/work/WorkQuery;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;
    .locals 3

    const-string v0, "<this>"

    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "querySpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/tinder/StateMachine$Matcher$predicates$1;

    const/16 v2, 0xb

    invoke-direct {v0, v2, p1}, Lcom/tinder/StateMachine$Matcher$predicates$1;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p0, Landroidx/room/TransactionExecutor;

    const-string p1, "executor.serialTaskExecutor"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    const/16 v2, 0x16

    invoke-direct {p1, v2, v0, v1}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "loadStatusFuture"

    invoke-static {p0, v0, p1}, Landroidx/work/ListenableFutureKt;->executeAsync(Ljava/util/concurrent/Executor;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object p0

    return-object p0
.end method

.method public final onForceStopRunnableCompleted()V
    .locals 2

    sget-object v0, Landroidx/work/impl/WorkManagerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/work/impl/WorkManagerImpl;->mForceStopRunnableCompleted:Z

    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->mRescheduleReceiverResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->mRescheduleReceiverResult:Landroid/content/BroadcastReceiver$PendingResult;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final rescheduleEligibleWork()V
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object v0, v0, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    const-string v1, "ReschedulingWork"

    new-instance v2, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 v3, 0x8

    invoke-direct {v2, v3, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    const-string p0, "<this>"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/tracing/TraceApi29Impl;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {v1}, Landroidx/tracing/Trace;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_2
    throw v0
.end method

.method public final tryInitializeMultiProcessSupport()V
    .locals 3

    :try_start_0
    const-class v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;

    sget-object v1, Landroidx/work/multiprocess/RemoteWorkManagerClient;->TAG:Ljava/lang/String;

    const-class v1, Landroid/content/Context;

    const-class v2, Landroidx/work/impl/WorkManagerImpl;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->mContext:Landroid/content/Context;

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/RemoteWorkManager;

    iput-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mRemoteWorkManager:Landroidx/work/multiprocess/RemoteWorkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/WorkManagerImpl;->TAG:Ljava/lang/String;

    iget v0, v0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    const-string v0, "Unable to initialize multi-process support"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
