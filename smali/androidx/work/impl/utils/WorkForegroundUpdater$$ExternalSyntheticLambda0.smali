.class public final synthetic Landroidx/work/impl/utils/WorkForegroundUpdater$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroidx/work/impl/utils/WorkForegroundUpdater;

.field public final synthetic f$1:Ljava/util/UUID;

.field public final synthetic f$2:Landroidx/work/ForegroundInfo;

.field public final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/WorkForegroundUpdater;Ljava/util/UUID;Landroidx/work/ForegroundInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$$ExternalSyntheticLambda0;->f$0:Landroidx/work/impl/utils/WorkForegroundUpdater;

    iput-object p2, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$$ExternalSyntheticLambda0;->f$1:Ljava/util/UUID;

    iput-object p3, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$$ExternalSyntheticLambda0;->f$2:Landroidx/work/ForegroundInfo;

    iput-object p4, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$$ExternalSyntheticLambda0;->f$0:Landroidx/work/impl/utils/WorkForegroundUpdater;

    iget-object v1, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$$ExternalSyntheticLambda0;->f$1:Ljava/util/UUID;

    iget-object v2, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$$ExternalSyntheticLambda0;->f$2:Landroidx/work/ForegroundInfo;

    iget-object p0, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Landroidx/work/impl/utils/WorkForegroundUpdater;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {v3, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, v3, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-virtual {v4}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v0, v0, Landroidx/work/impl/utils/WorkForegroundUpdater;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    check-cast v0, Landroidx/work/impl/Processor;

    const-string v4, "Moving WorkSpec ("

    iget-object v5, v0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v6

    sget-object v7, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") to the foreground"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/impl/WorkerWrapper;

    if-eqz v4, :cond_1

    iget-object v6, v0, Landroidx/work/impl/Processor;->mForegroundLock:Landroid/os/PowerManager$WakeLock;

    if-nez v6, :cond_0

    iget-object v6, v0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    const-string v7, "ProcessorForegroundLck"

    invoke-static {v6, v7}, Landroidx/work/impl/utils/WakeLocks;->newWakeLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v0, Landroidx/work/impl/Processor;->mForegroundLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v6, v0, Landroidx/work/impl/Processor;->mForegroundWorkMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    iget-object v4, v4, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-static {v4}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->createStartForegroundIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/ForegroundInfo;)Landroid/content/Intent;

    move-result-object v1

    iget-object v0, v0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "ACTION_NOTIFY"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "KEY_NOTIFICATION_ID"

    iget v4, v2, Landroidx/work/ForegroundInfo;->mNotificationId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "KEY_FOREGROUND_SERVICE_TYPE"

    iget v4, v2, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "KEY_NOTIFICATION"

    iget-object v2, v2, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "KEY_WORKSPEC_ID"

    iget-object v3, v0, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "KEY_GENERATION"

    iget v0, v0, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p0, 0x0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    const-string p0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
