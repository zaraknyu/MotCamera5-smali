.class public final Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/work/impl/workers/DiagnosticsWorker;",
        "Landroidx/work/Worker;",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "parameters",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$Result;
    .locals 85

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    const-string v1, "getInstance(applicationContext)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    const-string/jumbo v2, "workManager.workDatabase"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workNameDao()Landroidx/room/concurrent/FileLock;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/core/view/MenuHostHelper;

    move-result-object v4

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->systemIdInfoDao()Landroidx/work/WorkQuery;

    move-result-object v1

    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object v0, v0, Landroidx/work/Configuration;->clock:Landroidx/work/SystemClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    const/4 v0, 0x1

    const-string v7, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    invoke-static {v0, v7}, Landroidx/room/Room;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v7

    invoke-virtual {v7, v0, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v5, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    const/4 v6, 0x0

    invoke-static {v5, v7, v6}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v8, "id"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "state"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "worker_class_name"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "input_merger_class_name"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "input"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "output"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "initial_delay"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "interval_duration"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "flex_duration"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v6, "run_attempt_count"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v16, v2

    const-string v2, "backoff_policy"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v17, v7

    :try_start_1
    const-string v7, "backoff_delay_duration"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v18, v1

    const-string v1, "last_enqueue_time"

    invoke-static {v5, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v19, v3

    const-string v3, "minimum_retention_duration"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v20, v4

    const-string/jumbo v4, "schedule_requested_at"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v21, v4

    const-string/jumbo v4, "run_in_foreground"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v22, v4

    const-string v4, "out_of_quota_policy"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v23, v4

    const-string/jumbo v4, "period_count"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v24, v4

    const-string v4, "generation"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v25, v4

    const-string v4, "next_schedule_time_override"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v26, v4

    const-string v4, "next_schedule_time_override_generation"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v27, v4

    const-string/jumbo v4, "stop_reason"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v28, v4

    const-string/jumbo v4, "trace_tag"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v29, v4

    const-string/jumbo v4, "required_network_type"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v30, v4

    const-string/jumbo v4, "required_network_request"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v31, v4

    const-string/jumbo v4, "requires_charging"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v32, v4

    const-string/jumbo v4, "requires_device_idle"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v33, v4

    const-string/jumbo v4, "requires_battery_not_low"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v34, v4

    const-string/jumbo v4, "requires_storage_not_low"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v35, v4

    const-string/jumbo v4, "trigger_content_update_delay"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v36, v4

    const-string/jumbo v4, "trigger_max_content_delay"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v37, v4

    const-string v4, "content_uri_triggers"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v38, v4

    new-instance v4, Ljava/util/ArrayList;

    move/from16 v39, v3

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v42

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    sget-object v40, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-static {v3}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v45

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v46

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)I

    move-result v55

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move/from16 v3, v39

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v60

    move/from16 v39, v0

    move/from16 v0, v21

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-eqz v22, :cond_0

    const/16 v64, 0x1

    :goto_1
    move/from16 v22, v0

    move/from16 v0, v23

    goto :goto_2

    :cond_0
    const/16 v64, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)I

    move-result v65

    move/from16 v23, v0

    move/from16 v0, v24

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    move/from16 v24, v0

    move/from16 v0, v25

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v67

    move/from16 v25, v0

    move/from16 v0, v26

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v68

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v70

    move/from16 v27, v0

    move/from16 v0, v28

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v71

    move/from16 v28, v0

    move/from16 v0, v29

    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_1

    const/16 v29, 0x0

    :goto_3
    move-object/from16 v72, v29

    move/from16 v29, v0

    move/from16 v0, v30

    goto :goto_4

    :cond_1
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_3

    :goto_4
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)I

    move-result v75

    move/from16 v30, v0

    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroidx/work/impl/model/WorkTypeConverters;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    move-result-object v74

    move/from16 v31, v0

    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    if-eqz v32, :cond_2

    const/16 v76, 0x1

    :goto_5
    move/from16 v32, v0

    move/from16 v0, v33

    goto :goto_6

    :cond_2
    const/16 v76, 0x0

    goto :goto_5

    :goto_6
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    if-eqz v33, :cond_3

    const/16 v77, 0x1

    :goto_7
    move/from16 v33, v0

    move/from16 v0, v34

    goto :goto_8

    :cond_3
    const/16 v77, 0x0

    goto :goto_7

    :goto_8
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    if-eqz v34, :cond_4

    const/16 v78, 0x1

    :goto_9
    move/from16 v34, v0

    move/from16 v0, v35

    goto :goto_a

    :cond_4
    const/16 v78, 0x0

    goto :goto_9

    :goto_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    if-eqz v35, :cond_5

    const/16 v79, 0x1

    :goto_b
    move/from16 v35, v0

    move/from16 v0, v36

    goto :goto_c

    :cond_5
    const/16 v79, 0x0

    goto :goto_b

    :goto_c
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v80

    move/from16 v36, v0

    move/from16 v0, v37

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v82

    move/from16 v37, v0

    move/from16 v0, v38

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    move-result-object v84

    new-instance v53, Landroidx/work/Constraints;

    move-object/from16 v73, v53

    invoke-direct/range {v73 .. v84}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;IZZZZJJLjava/util/Set;)V

    move-object/from16 v53, v73

    new-instance v40, Landroidx/work/impl/model/WorkSpec;

    invoke-direct/range {v40 .. v72}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIIIJIILjava/lang/String;)V

    move/from16 v38, v0

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v39

    move/from16 v39, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    invoke-virtual/range {v16 .. v16}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getRunningWork()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getAllEligibleWorkSpecsForScheduling()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->TAG:Ljava/lang/String;

    const-string v5, "Recently completed work:\n\n"

    invoke-virtual {v2, v3, v5}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    move-object/from16 v7, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    invoke-static {v5, v6, v7, v4}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->access$workSpecRows(Landroidx/room/concurrent/FileLock;Landroidx/core/view/MenuHostHelper;Landroidx/work/WorkQuery;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_7
    move-object/from16 v7, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->TAG:Ljava/lang/String;

    const-string v4, "Running work:\n\n"

    invoke-virtual {v2, v3, v4}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    invoke-static {v5, v6, v7, v0}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->access$workSpecRows(Landroidx/room/concurrent/FileLock;Landroidx/core/view/MenuHostHelper;Landroidx/work/WorkQuery;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->TAG:Ljava/lang/String;

    const-string v3, "Enqueued work:\n\n"

    invoke-virtual {v0, v2, v3}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    invoke-static {v5, v6, v7, v1}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->access$workSpecRows(Landroidx/room/concurrent/FileLock;Landroidx/core/view/MenuHostHelper;Landroidx/work/WorkQuery;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    new-instance v0, Landroidx/work/ListenableWorker$Result$Success;

    sget-object v1, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-direct {v0, v1}, Landroidx/work/ListenableWorker$Result$Success;-><init>(Landroidx/work/Data;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v17, v7

    :goto_e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method
