.class public final Landroidx/work/impl/Processor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/foreground/ForegroundProcessor;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAppContext:Landroid/content/Context;

.field public final mCancelledIds:Ljava/util/HashSet;

.field public final mConfiguration:Landroidx/work/Configuration;

.field public final mEnqueuedWorkMap:Ljava/util/HashMap;

.field public mForegroundLock:Landroid/os/PowerManager$WakeLock;

.field public final mForegroundWorkMap:Ljava/util/HashMap;

.field public final mLock:Ljava/lang/Object;

.field public final mOuterListeners:Ljava/util/ArrayList;

.field public final mWorkDatabase:Landroidx/work/impl/WorkDatabase;

.field public final mWorkRuns:Ljava/util/HashMap;

.field public final mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Processor"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/transition/TransitionValuesMaps;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/work/impl/Processor;->mConfiguration:Landroidx/work/Configuration;

    iput-object p3, p0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iput-object p4, p0, Landroidx/work/impl/Processor;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor;->mForegroundWorkMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor;->mCancelledIds:Ljava/util/HashSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/work/impl/Processor;->mForegroundLock:Landroid/os/PowerManager$WakeLock;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor;->mWorkRuns:Ljava/util/HashMap;

    return-void
.end method

.method public static interrupt(Ljava/lang/String;Landroidx/work/impl/WorkerWrapper;I)Z
    .locals 2

    sget-object v0, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/work/impl/WorkerWrapper;->workerJob:Lkotlinx/coroutines/JobImpl;

    new-instance v1, Landroidx/work/impl/WorkerStoppedException;

    invoke-direct {v1, p2}, Landroidx/work/impl/WorkerStoppedException;-><init>(I)V

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/JobSupport;->cancelInternal(Ljava/util/concurrent/CancellationException;)V

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "WorkerWrapper interrupted for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "WorkerWrapper could not be found for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addExecutionListener(Landroidx/work/impl/ExecutionListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final cleanUpWorkerUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/Processor;->mForegroundWorkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    :cond_1
    iget-object v2, p0, Landroidx/work/impl/Processor;->mWorkRuns:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object p1, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/Processor;->mForegroundWorkMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    sget-object v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_STOP_FOREGROUND"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    const-string v4, "Unable to stop foreground service"

    invoke-virtual {v2, v3, v4, v1}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v1, p0, Landroidx/work/impl/Processor;->mForegroundLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/work/impl/Processor;->mForegroundLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit p1

    goto :goto_4

    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_3
    :goto_4
    return-object v0
.end method

.method public final getWorkerWrapperUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/Processor;->mForegroundWorkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/work/impl/WorkerWrapper;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final isEnqueued(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/work/impl/Processor;->getWorkerWrapperUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeExecutionListener(Landroidx/work/impl/ExecutionListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startWork(Landroidx/work/impl/StartStopToken;Landroidx/core/view/MenuHostHelper;)Z
    .locals 12

    const-string v0, "Work "

    iget-object v1, p1, Landroidx/work/impl/StartStopToken;->id:Landroidx/work/impl/model/WorkGenerationalId;

    iget-object v2, v1, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroidx/work/impl/Processor;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    new-instance v4, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v10, v2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/Processor;Ljava/util/ArrayList;Ljava/lang/String;)V

    new-instance v5, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v4}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroidx/work/impl/model/WorkSpec;

    const/4 v3, 0x0

    if-nez v9, :cond_0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Didn\'t find WorkSpec for id "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/tasks/zzu;

    new-instance p2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0, v1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/zzu;->execute(Ljava/lang/Runnable;)V

    return v3

    :cond_0
    iget-object v11, p0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-virtual {p0, v2}, Landroidx/work/impl/Processor;->isEnqueued(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object p2, p0, Landroidx/work/impl/Processor;->mWorkRuns:Ljava/util/HashMap;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/StartStopToken;

    iget-object v2, v2, Landroidx/work/impl/StartStopToken;->id:Landroidx/work/impl/model/WorkGenerationalId;

    iget v2, v2, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    iget v4, v1, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    if-ne v2, v4, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    sget-object p1, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is already enqueued for processing"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/tasks/zzu;

    new-instance p2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0, v1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/zzu;->execute(Ljava/lang/Runnable;)V

    :goto_0
    monitor-exit v11

    return v3

    :cond_2
    iget v0, v9, Landroidx/work/impl/model/WorkSpec;->generation:I

    iget v4, v1, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    if-eq v0, v4, :cond_3

    iget-object p1, p0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/tasks/zzu;

    new-instance p2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0, v1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/zzu;->execute(Ljava/lang/Runnable;)V

    monitor-exit v11

    return v3

    :cond_3
    new-instance v3, Landroidx/compose/ui/node/NodeChain;

    iget-object v4, p0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    iget-object v5, p0, Landroidx/work/impl/Processor;->mConfiguration:Landroidx/work/Configuration;

    iget-object v6, p0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object v8, p0, Landroidx/work/impl/Processor;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    move-object v7, p0

    invoke-direct/range {v3 .. v10}, Landroidx/compose/ui/node/NodeChain;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/transition/TransitionValuesMaps;Landroidx/work/impl/Processor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Ljava/util/ArrayList;)V

    if-eqz p2, :cond_4

    iput-object p2, v3, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    :cond_4
    new-instance p0, Landroidx/work/impl/WorkerWrapper;

    invoke-direct {p0, v3}, Landroidx/work/impl/WorkerWrapper;-><init>(Landroidx/compose/ui/node/NodeChain;)V

    iget-object p2, p0, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object p2, p2, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    new-instance v0, Landroidx/work/impl/WorkerWrapper$launch$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Landroidx/work/impl/WorkerWrapper$launch$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/Continuation;)V

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    const-string v4, "context"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;

    invoke-direct {v4, p2, v3, v0}, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object p2

    new-instance v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/4 v3, 0x7

    invoke-direct {v0, v7, p2, p0, v3}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v3, v7, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/tasks/zzu;

    iget-object p2, p2, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    invoke-virtual {p2, v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p2, v7, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/HashMap;

    invoke-virtual {p2, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, v7, Landroidx/work/impl/Processor;->mWorkRuns:Ljava/util/HashMap;

    invoke-virtual {p1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    sget-object p1, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Processor: processing "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :goto_1
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
