.class public final Landroidx/work/impl/background/greedy/GreedyScheduler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/Scheduler;
.implements Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;
.implements Landroidx/work/impl/ExecutionListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mConfiguration:Landroidx/work/Configuration;

.field public final mConstrainedWorkSpecs:Ljava/util/HashMap;

.field public final mConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

.field public final mContext:Landroid/content/Context;

.field public final mDelayedWorkTracker:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

.field public final mFirstRunAttempts:Ljava/util/HashMap;

.field public mInDefaultProcess:Ljava/lang/Boolean;

.field public final mLock:Ljava/lang/Object;

.field public final mProcessor:Landroidx/work/impl/Processor;

.field public mRegisteredExecutionListener:Z

.field public final mStartStopTokens:Lcom/tinder/StateMachine;

.field public final mTaskExecutor:Landroidx/transition/TransitionValuesMaps;

.field public final mTimeLimiter:Landroidx/work/impl/background/greedy/TimeLimiter;

.field public final mWorkLauncher:Lcom/motorola/camera/CameraKpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GreedyScheduler"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/greedy/GreedyScheduler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/Configuration;Lcom/motorola/camera/AppFeatures;Landroidx/work/impl/Processor;Lcom/motorola/camera/CameraKpi;Landroidx/transition/TransitionValuesMaps;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mConstrainedWorkSpecs:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mLock:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/StartStopTokensImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/impl/StartStopTokensImpl;-><init>(I)V

    new-instance v1, Lcom/tinder/StateMachine;

    invoke-direct {v1, v0}, Lcom/tinder/StateMachine;-><init>(Landroidx/work/impl/StartStopTokensImpl;)V

    iput-object v1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mStartStopTokens:Lcom/tinder/StateMachine;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mFirstRunAttempts:Ljava/util/HashMap;

    iput-object p1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mContext:Landroid/content/Context;

    iget-object p1, p2, Landroidx/work/Configuration;->runnableScheduler:Landroidx/work/impl/DefaultRunnableScheduler;

    new-instance v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    iget-object v1, p2, Landroidx/work/Configuration;->clock:Landroidx/work/SystemClock;

    invoke-direct {v0, p0, p1, v1}, Landroidx/work/impl/background/greedy/DelayedWorkTracker;-><init>(Landroidx/work/impl/background/greedy/GreedyScheduler;Landroidx/work/impl/DefaultRunnableScheduler;Landroidx/work/SystemClock;)V

    iput-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mDelayedWorkTracker:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    new-instance v0, Landroidx/work/impl/background/greedy/TimeLimiter;

    invoke-direct {v0, p1, p5}, Landroidx/work/impl/background/greedy/TimeLimiter;-><init>(Landroidx/work/impl/DefaultRunnableScheduler;Lcom/motorola/camera/CameraKpi;)V

    iput-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mTimeLimiter:Landroidx/work/impl/background/greedy/TimeLimiter;

    iput-object p6, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    new-instance p1, Landroidx/work/impl/constraints/WorkConstraintsTracker;

    invoke-direct {p1, p3}, Landroidx/work/impl/constraints/WorkConstraintsTracker;-><init>(Lcom/motorola/camera/AppFeatures;)V

    iput-object p1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    iput-object p2, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mConfiguration:Landroidx/work/Configuration;

    iput-object p4, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mProcessor:Landroidx/work/impl/Processor;

    iput-object p5, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mWorkLauncher:Lcom/motorola/camera/CameraKpi;

    return-void
.end method


# virtual methods
.method public final cancel(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mInDefaultProcess:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mConfiguration:Landroidx/work/Configuration;

    invoke-static {v0, v1}, Landroidx/work/impl/utils/ProcessUtils;->isDefaultProcess(Landroid/content/Context;Landroidx/work/Configuration;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mInDefaultProcess:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mInDefaultProcess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Landroidx/work/impl/background/greedy/GreedyScheduler;->TAG:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    const-string p1, "Ignoring schedule request in non-main process"

    invoke-virtual {p0, v1, p1}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mRegisteredExecutionListener:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mProcessor:Landroidx/work/impl/Processor;

    invoke-virtual {v0, p0}, Landroidx/work/impl/Processor;->addExecutionListener(Landroidx/work/impl/ExecutionListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mRegisteredExecutionListener:Z

    :cond_2
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cancelling work ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mDelayedWorkTracker:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    if-eqz v0, :cond_3

    iget-object v1, v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v0, v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnableScheduler:Landroidx/work/impl/DefaultRunnableScheduler;

    iget-object v0, v0, Landroidx/work/impl/DefaultRunnableScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mStartStopTokens:Lcom/tinder/StateMachine;

    invoke-virtual {v0, p1}, Lcom/tinder/StateMachine;->remove(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/StartStopToken;

    iget-object v1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mTimeLimiter:Landroidx/work/impl/background/greedy/TimeLimiter;

    invoke-virtual {v1, v0}, Landroidx/work/impl/background/greedy/TimeLimiter;->cancel(Landroidx/work/impl/StartStopToken;)V

    iget-object v1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mWorkLauncher:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, -0x200

    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/CameraKpi;->stopWork(Landroidx/work/impl/StartStopToken;I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final hasLimitedSchedulingSlots()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onConstraintsStateChanged(Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/constraints/ConstraintsState;)V
    .locals 6

    invoke-static {p1}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object p1

    instance-of v0, p2, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;

    iget-object v1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mWorkLauncher:Lcom/motorola/camera/CameraKpi;

    iget-object v2, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mTimeLimiter:Landroidx/work/impl/background/greedy/TimeLimiter;

    sget-object v3, Landroidx/work/impl/background/greedy/GreedyScheduler;->TAG:Ljava/lang/String;

    iget-object p0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mStartStopTokens:Lcom/tinder/StateMachine;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tinder/StateMachine;->contains(Landroidx/work/impl/model/WorkGenerationalId;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Constraints met: Scheduling work ID "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tinder/StateMachine;->tokenFor(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/work/impl/background/greedy/TimeLimiter;->track(Landroidx/work/impl/StartStopToken;)V

    iget-object p1, v1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p1, Landroidx/transition/TransitionValuesMaps;

    new-instance p2, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-direct {p2, v1, p0, v2, v0}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroidx/transition/TransitionValuesMaps;->executeOnTaskThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Constraints not met: Cancelling work ID "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tinder/StateMachine;->remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v2, p0}, Landroidx/work/impl/background/greedy/TimeLimiter;->cancel(Landroidx/work/impl/StartStopToken;)V

    check-cast p2, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    iget p1, p2, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;->reason:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p0, p1}, Lcom/motorola/camera/CameraKpi;->stopWork(Landroidx/work/impl/StartStopToken;I)V

    :cond_1
    return-void
.end method

.method public final onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mStartStopTokens:Lcom/tinder/StateMachine;

    invoke-virtual {v0, p1}, Lcom/tinder/StateMachine;->remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mTimeLimiter:Landroidx/work/impl/background/greedy/TimeLimiter;

    invoke-virtual {v1, v0}, Landroidx/work/impl/background/greedy/TimeLimiter;->cancel(Landroidx/work/impl/StartStopToken;)V

    :cond_0
    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mConstrainedWorkSpecs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/background/greedy/GreedyScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Stopping tracking for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    if-nez p2, :cond_2

    iget-object p2, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iget-object p0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mFirstRunAttempts:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final varargs schedule([Landroidx/work/impl/model/WorkSpec;)V
    .locals 14

    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mInDefaultProcess:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mConfiguration:Landroidx/work/Configuration;

    invoke-static {v0, v1}, Landroidx/work/impl/utils/ProcessUtils;->isDefaultProcess(Landroid/content/Context;Landroidx/work/Configuration;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mInDefaultProcess:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mInDefaultProcess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    sget-object p1, Landroidx/work/impl/background/greedy/GreedyScheduler;->TAG:Ljava/lang/String;

    const-string v0, "Ignoring schedule request in a secondary process"

    invoke-virtual {p0, p1, v0}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mRegisteredExecutionListener:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mProcessor:Landroidx/work/impl/Processor;

    invoke-virtual {v0, p0}, Landroidx/work/impl/Processor;->addExecutionListener(Landroidx/work/impl/ExecutionListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mRegisteredExecutionListener:Z

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_b

    aget-object v5, p1, v4

    invoke-static {v5}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v6

    iget-object v7, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mStartStopTokens:Lcom/tinder/StateMachine;

    invoke-virtual {v7, v6}, Lcom/tinder/StateMachine;->contains(Landroidx/work/impl/model/WorkGenerationalId;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v6, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {v5}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v7

    iget-object v8, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mFirstRunAttempts:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/work/impl/background/greedy/GreedyScheduler$AttemptData;

    if-nez v8, :cond_4

    new-instance v8, Landroidx/work/impl/background/greedy/GreedyScheduler$AttemptData;

    iget v9, v5, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iget-object v10, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mConfiguration:Landroidx/work/Configuration;

    iget-object v10, v10, Landroidx/work/Configuration;->clock:Landroidx/work/SystemClock;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v8, v9, v10, v11}, Landroidx/work/impl/background/greedy/GreedyScheduler$AttemptData;-><init>(IJ)V

    iget-object v9, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mFirstRunAttempts:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_4
    :goto_1
    iget-wide v9, v8, Landroidx/work/impl/background/greedy/GreedyScheduler$AttemptData;->mTimeStamp:J

    iget v7, v5, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iget v8, v8, Landroidx/work/impl/background/greedy/GreedyScheduler$AttemptData;->mRunAttemptCount:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x5

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v11, 0x7530

    mul-long/2addr v7, v11

    add-long/2addr v7, v9

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    move-result-wide v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-object v8, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mConfiguration:Landroidx/work/Configuration;

    iget-object v8, v8, Landroidx/work/Configuration;->clock:Landroidx/work/SystemClock;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, v5, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    sget-object v11, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v10, v11, :cond_a

    cmp-long v8, v8, v6

    if-gez v8, :cond_6

    iget-object v8, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mDelayedWorkTracker:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    if-eqz v8, :cond_a

    iget-object v9, v8, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnableScheduler:Landroidx/work/impl/DefaultRunnableScheduler;

    iget-object v10, v8, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnables:Ljava/util/HashMap;

    iget-object v11, v5, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Runnable;

    if-eqz v11, :cond_5

    iget-object v12, v9, Landroidx/work/impl/DefaultRunnableScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    new-instance v11, Lcom/motorola/camera/mcf/Mcf$8;

    const/4 v12, 0x5

    const/4 v13, 0x0

    invoke-direct {v11, v8, v5, v12, v13}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v10, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v8, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mClock:Landroidx/work/SystemClock;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v6, v12

    iget-object v5, v9, Landroidx/work/impl/DefaultRunnableScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v5}, Landroidx/work/impl/model/WorkSpec;->hasConstraints()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v5, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    iget-boolean v7, v6, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    if-eqz v7, :cond_7

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v6

    sget-object v7, Landroidx/work/impl/background/greedy/GreedyScheduler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Ignoring "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". Requires device idle."

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v6}, Landroidx/work/Constraints;->hasContentUriTriggers()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v6

    sget-object v7, Landroidx/work/impl/background/greedy/GreedyScheduler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Ignoring "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". Requires ContentUri triggers."

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    iget-object v6, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mStartStopTokens:Lcom/tinder/StateMachine;

    invoke-static {v5}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tinder/StateMachine;->contains(Landroidx/work/impl/model/WorkGenerationalId;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v6

    sget-object v7, Landroidx/work/impl/background/greedy/GreedyScheduler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Starting work for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v5, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mStartStopTokens:Lcom/tinder/StateMachine;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/tinder/StateMachine;->tokenFor(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    move-result-object v5

    iget-object v6, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mTimeLimiter:Landroidx/work/impl/background/greedy/TimeLimiter;

    invoke-virtual {v6, v5}, Landroidx/work/impl/background/greedy/TimeLimiter;->track(Landroidx/work/impl/StartStopToken;)V

    iget-object v6, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mWorkLauncher:Lcom/motorola/camera/CameraKpi;

    iget-object v7, v6, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v7, Landroidx/transition/TransitionValuesMaps;

    new-instance v8, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-direct {v8, v6, v5, v10, v9}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v8}, Landroidx/transition/TransitionValuesMaps;->executeOnTaskThread(Ljava/lang/Runnable;)V

    :cond_a
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :goto_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_b
    iget-object p1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/greedy/GreedyScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting tracking for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/model/WorkSpec;

    invoke-static {v1}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v2

    iget-object v3, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mConstrainedWorkSpecs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    iget-object v4, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v3, v1, v4, p0}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->listen(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v1

    iget-object v3, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->mConstrainedWorkSpecs:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_d
    monitor-exit p1

    return-void

    :goto_5
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
