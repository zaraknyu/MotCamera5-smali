.class public final Landroidx/work/impl/utils/ForceStopRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final TEN_YEARS:J


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPreferenceUtils:Lcom/google/android/gms/tasks/zzad;

.field public mRetryCount:I

.field public final mWorkManager:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ForceStopRunnable"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe42

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/utils/ForceStopRunnable;->TEN_YEARS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    iget-object p1, p2, Landroidx/work/impl/WorkManagerImpl;->mPreferenceUtils:Lcom/google/android/gms/tasks/zzad;

    iput-object p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mPreferenceUtils:Lcom/google/android/gms/tasks/zzad;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mRetryCount:I

    return-void
.end method


# virtual methods
.method public final forceStopRunnable()V
    .locals 15

    const-string v0, "last_force_stop_ms"

    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mPreferenceUtils:Lcom/google/android/gms/tasks/zzad;

    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    iget-object v3, v2, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    sget-object v4, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->TAG:Ljava/lang/String;

    iget-object p0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/work/impl/background/systemjob/JobSchedulerExtKt;->getWmJobScheduler(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v4

    invoke-static {p0, v4}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->getPendingJobs(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->systemIdInfoDao()Landroidx/work/WorkQuery;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    const/4 v7, 0x0

    const-string v8, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    invoke-static {v7, v8}, Landroidx/room/Room;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v8

    iget-object v6, v6, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    check-cast v6, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {v6, v8, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_f

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual {v8}, Landroidx/room/RoomSQLiteQuery;->release()V

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v6}, Ljava/util/HashSet;-><init>(I)V

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobInfo;

    invoke-static {v6}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->getWorkGenerationalIdFromJobInfo(Landroid/app/job/JobInfo;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v6, v10, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getId()I

    move-result v6

    invoke-static {v4, v6}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->cancelJobById(Landroid/app/job/JobScheduler;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->TAG:Ljava/lang/String;

    const-string v8, "Reconciling jobs"

    invoke-virtual {v4, v5, v8}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    goto :goto_3

    :cond_5
    move v4, v7

    :goto_3
    const-wide/16 v10, -0x1

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_1
    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v5

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v10, v11, v9}, Landroidx/work/impl/model/WorkSpecDao_Impl;->markWorkSpecScheduled(JLjava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_6
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    goto :goto_6

    :goto_5
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p0

    :cond_7
    :goto_6
    iget-object v3, v2, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v5

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->workProgressDao()Landroidx/transition/TransitionValuesMaps;

    move-result-object v8

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_2
    invoke-virtual {v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getRunningWork()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/work/impl/model/WorkSpec;

    sget-object v14, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iget-object v13, v13, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v5, v14, v13}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    const/16 v14, -0x200

    invoke-virtual {v5, v14, v13}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setStopReason(ILjava/lang/String;)V

    invoke-virtual {v5, v10, v11, v13}, Landroidx/work/impl/model/WorkSpecDao_Impl;->markWorkSpecScheduled(JLjava/lang/String;)V

    goto :goto_7

    :catchall_2
    move-exception p0

    goto/16 :goto_e

    :cond_8
    iget-object v5, v8, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast v5, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v8, v8, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast v8, Landroidx/work/impl/model/WorkTagDao_Impl$2;

    invoke-virtual {v8}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v9}, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;->executeUpdateDelete()I

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->internalEndTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v8, v9}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    if-eqz v12, :cond_a

    if-eqz v4, :cond_9

    goto :goto_8

    :cond_9
    move v6, v7

    :cond_a
    :goto_8
    iget-object v3, v2, Landroidx/work/impl/WorkManagerImpl;->mPreferenceUtils:Lcom/google/android/gms/tasks/zzad;

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    const-string/jumbo v4, "reschedule_needed"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/CameraKpi;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v8, 0x0

    sget-object v5, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v3, v10, v12

    if-nez v3, :cond_b

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    const-string v0, "Rescheduling Workers."

    invoke-virtual {p0, v5, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/work/impl/WorkManagerImpl;->rescheduleEligibleWork()V

    iget-object p0, v2, Landroidx/work/impl/WorkManagerImpl;->mPreferenceUtils:Lcom/google/android/gms/tasks/zzad;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/work/impl/model/Preference;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->insertPreference(Landroidx/work/impl/model/Preference;)V

    return-void

    :cond_b
    :try_start_7
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-class v10, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    invoke-direct {v4, p0, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v4, "ACTION_FORCE_STOP_RESCHEDULE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, -0x1

    const/high16 v10, 0x22000000

    invoke-static {p0, v4, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_9

    :catch_0
    move-exception p0

    goto :goto_b

    :cond_c
    :goto_9
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v7, v7}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v1, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/CameraKpi;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :cond_d
    :goto_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v7, v3, :cond_f

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v4

    const/16 v10, 0xa

    if-ne v4, v10, :cond_e

    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v3
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0

    cmp-long v3, v3, v8

    if-ltz v3, :cond_e

    goto :goto_c

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_f
    if-eqz v6, :cond_10

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    const-string v0, "Found unfinished work, scheduling it."

    invoke-virtual {p0, v5, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v2, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object v0, v2, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iget-object v1, v2, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    invoke-static {p0, v0, v1}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_10
    return-void

    :goto_b
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v3

    iget v3, v3, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v4, 0x5

    if-gt v3, v4, :cond_11

    const-string v3, "Ignoring exception"

    invoke-static {v5, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_c
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    const-string v3, "Application was force-stopped, rescheduling."

    invoke-virtual {p0, v5, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/work/impl/WorkManagerImpl;->rescheduleEligibleWork()V

    iget-object p0, v2, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object p0, p0, Landroidx/work/Configuration;->clock:Landroidx/work/SystemClock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/work/impl/model/Preference;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, v1, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/CameraKpi;->insertPreference(Landroidx/work/impl/model/Preference;)V

    return-void

    :catchall_3
    move-exception p0

    goto :goto_d

    :catchall_4
    move-exception p0

    :try_start_8
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_d
    :try_start_9
    invoke-virtual {v8, v9}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_e
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p0

    :goto_f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual {v8}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p0
.end method

.method public final multiProcessChecks()Z
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object v1, v0, Landroidx/work/Configuration;->defaultProcessName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    sget-object v2, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    const-string v0, "The default process name was not specified."

    invoke-virtual {p0, v2, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Landroidx/work/impl/utils/ProcessUtils;->isDefaultProcess(Landroid/content/Context;Landroidx/work/Configuration;)Z

    move-result p0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Is default app process = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final run()V
    .locals 12

    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->multiProcessChecks()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroidx/work/impl/WorkManagerImpl;->onForceStopRunnableCompleted()V

    return-void

    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {v0}, Landroidx/work/impl/WorkDatabasePathHelper;->migrateDatabase(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v3

    const-string v4, "Performing cleanup operations."

    invoke-virtual {v3, v1, v4}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->forceStopRunnable()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2}, Landroidx/work/impl/WorkManagerImpl;->onForceStopRunnableCompleted()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_4
    iget v4, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mRetryCount:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    const-class p0, Landroid/os/UserManager;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    goto :goto_1

    :cond_1
    const-string p0, "WorkManager can\'t be accessed from direct boot, because credential encrypted storage isn\'t accessible.\nDon\'t access or initialise WorkManager from directAware components. See https://developer.android.com/training/articles/direct-boot"

    :goto_1
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v3}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, v2, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0

    :cond_2
    int-to-long v6, v4

    const-wide/16 v8, 0x12c

    mul-long/2addr v6, v8

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retrying after "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v4, v4, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    if-gt v4, v5, :cond_3

    invoke-static {v1, v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget v3, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mRetryCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    int-to-long v3, v3

    mul-long/2addr v3, v8

    :try_start_5
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_2
    move-exception p0

    :try_start_6
    const-string v0, "Unexpected SQLite exception during migrations"

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, v2, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    invoke-virtual {v2}, Landroidx/work/impl/WorkManagerImpl;->onForceStopRunnableCompleted()V

    throw p0
.end method
