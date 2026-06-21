.class public final Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;
.implements Landroidx/work/impl/utils/WorkTimer$TimeLimitExceededListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCoroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public mCurrentState:I

.field public final mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

.field public mHasConstraints:Z

.field public volatile mJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final mLock:Ljava/lang/Object;

.field public final mMainThreadExecutor:Lcom/google/android/gms/tasks/zzu;

.field public final mSerialExecutor:Landroidx/room/TransactionExecutor;

.field public final mStartId:I

.field public final mToken:Landroidx/work/impl/StartStopToken;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWorkConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

.field public final mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;


# direct methods
.method public static $r8$lambda$82vXfMh9MXtN-tLNgTa3KWbb4VE(Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;)V
    .locals 10

    iget v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mStartId:I

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mMainThreadExecutor:Lcom/google/android/gms/tasks/zzu;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    iget-object v5, v4, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    iget v6, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCurrentState:I

    sget-object v7, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    const/4 v8, 0x2

    if-ge v6, v8, :cond_1

    iput v8, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCurrentState:I

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Stopping work for WorkSpec "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const-class v6, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {p0, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "ACTION_STOP_WORK"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v4}, Landroidx/work/impl/background/systemalarm/CommandHandler;->writeWorkGenerationalId(Landroid/content/Intent;Landroidx/work/impl/model/WorkGenerationalId;)V

    new-instance v8, Lcom/motorola/camera/mcf/Mcf$9;

    const/4 v9, 0x2

    invoke-direct {v8, v0, v9, v3, p0}, Lcom/motorola/camera/mcf/Mcf$9;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Lcom/google/android/gms/tasks/zzu;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v3, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mProcessor:Landroidx/work/impl/Processor;

    iget-object v8, v4, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    invoke-virtual {p0, v8}, Landroidx/work/impl/Processor;->isEnqueued(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "WorkSpec "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " needs to be rescheduled"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v7, v5}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ACTION_SCHEDULE_WORK"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v4}, Landroidx/work/impl/background/systemalarm/CommandHandler;->writeWorkGenerationalId(Landroid/content/Intent;Landroidx/work/impl/model/WorkGenerationalId;)V

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$9;

    const/4 v4, 0x2

    invoke-direct {v2, v0, v4, v3, p0}, Lcom/motorola/camera/mcf/Mcf$9;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/zzu;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Processor does not have WorkSpec "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". No need to reschedule"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Already stopped work for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static $r8$lambda$r8ATJco-vysxdAeSwS9XE6krknU(Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;)V
    .locals 7

    iget v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCurrentState:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCurrentState:I

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAllConstraintsMet for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v0, v0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mProcessor:Landroidx/work/impl/Processor;

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mToken:Landroidx/work/impl/StartStopToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/Processor;->startWork(Landroidx/work/impl/StartStopToken;Landroidx/core/view/MenuHostHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v0, v0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkTimer:Landroidx/work/impl/utils/WorkTimer;

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    const-string v2, "Starting timer for "

    iget-object v3, v0, Landroidx/work/impl/utils/WorkTimer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/utils/WorkTimer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/WorkTimer;->stopTimer(Landroidx/work/impl/model/WorkGenerationalId;)V

    new-instance v2, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;

    invoke-direct {v2, v0, v1}, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;-><init>(Landroidx/work/impl/utils/WorkTimer;Landroidx/work/impl/model/WorkGenerationalId;)V

    iget-object v4, v0, Landroidx/work/impl/utils/WorkTimer;->mTimerMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Landroidx/work/impl/utils/WorkTimer;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v4, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Landroidx/work/impl/utils/WorkTimer;->mRunnableScheduler:Landroidx/work/impl/DefaultRunnableScheduler;

    iget-object p0, p0, Landroidx/work/impl/DefaultRunnableScheduler;->mHandler:Landroid/os/Handler;

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->cleanUp()V

    return-void

    :cond_1
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already started work for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayMetCommandHandler"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Landroidx/work/impl/StartStopToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mContext:Landroid/content/Context;

    iput p2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mStartId:I

    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object p1, p4, Landroidx/work/impl/StartStopToken;->id:Landroidx/work/impl/model/WorkGenerationalId;

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    iput-object p4, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mToken:Landroidx/work/impl/StartStopToken;

    iget-object p1, p3, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    iget-object p1, p1, Landroidx/work/impl/WorkManagerImpl;->mTrackers:Lcom/motorola/camera/AppFeatures;

    iget-object p2, p3, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object p3, p2, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p3, Landroidx/room/TransactionExecutor;

    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mSerialExecutor:Landroidx/room/TransactionExecutor;

    iget-object p3, p2, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/tasks/zzu;

    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mMainThreadExecutor:Lcom/google/android/gms/tasks/zzu;

    iget-object p2, p2, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCoroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance p2, Landroidx/work/impl/constraints/WorkConstraintsTracker;

    invoke-direct {p2, p1}, Landroidx/work/impl/constraints/WorkConstraintsTracker;-><init>(Lcom/motorola/camera/AppFeatures;)V

    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mHasConstraints:Z

    iput p1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCurrentState:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final cleanUp()V
    .locals 5

    const-string v0, "Releasing wakelock "

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mJob:Lkotlinx/coroutines/StandaloneCoroutine;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mJob:Lkotlinx/coroutines/StandaloneCoroutine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v2, v2, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkTimer:Landroidx/work/impl/utils/WorkTimer;

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    invoke-virtual {v2, v3}, Landroidx/work/impl/utils/WorkTimer;->stopTimer(Landroidx/work/impl/model/WorkGenerationalId;)V

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "for WorkSpec "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleProcessWork()V
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    iget-object v0, v0, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mContext:Landroid/content/Context;

    const-string v2, " ("

    invoke-static {v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mStartId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/work/impl/utils/WakeLocks;->newWakeLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Acquiring wakelock "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "for WorkSpec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v1, v1, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    iget-object v1, v1, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mSerialExecutor:Landroidx/room/TransactionExecutor;

    new-instance v1, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;I)V

    invoke-virtual {v0, v1}, Landroidx/room/TransactionExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroidx/work/impl/model/WorkSpec;->hasConstraints()Z

    move-result v3

    iput-boolean v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mHasConstraints:Z

    if-nez v3, :cond_1

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    const-string v3, "No constraints for "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mSerialExecutor:Landroidx/room/TransactionExecutor;

    new-instance v1, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;I)V

    invoke-virtual {v0, v1}, Landroidx/room/TransactionExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCoroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v0, v1, v2, p0}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->listen(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mJob:Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onConstraintsStateChanged(Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/constraints/ConstraintsState;)V
    .locals 1

    instance-of p1, p2, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;

    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mSerialExecutor:Landroidx/room/TransactionExecutor;

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;I)V

    invoke-virtual {p2, p1}, Landroidx/room/TransactionExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;I)V

    invoke-virtual {p2, p1}, Landroidx/room/TransactionExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onExecuted(Z)V
    .locals 7

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onExecuted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->cleanUp()V

    const-class v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    iget v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mStartId:I

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mMainThreadExecutor:Lcom/google/android/gms/tasks/zzu;

    iget-object v5, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "ACTION_SCHEDULE_WORK"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v2}, Landroidx/work/impl/background/systemalarm/CommandHandler;->writeWorkGenerationalId(Landroid/content/Intent;Landroidx/work/impl/model/WorkGenerationalId;)V

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$9;

    const/4 v6, 0x2

    invoke-direct {v2, v1, v6, v3, p1}, Lcom/motorola/camera/mcf/Mcf$9;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Lcom/google/android/gms/tasks/zzu;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean p0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mHasConstraints:Z

    if-eqz p0, :cond_1

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Lcom/motorola/camera/mcf/Mcf$9;

    const/4 v0, 0x2

    invoke-direct {p1, v1, v0, v3, p0}, Lcom/motorola/camera/mcf/Mcf$9;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1}, Lcom/google/android/gms/tasks/zzu;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
