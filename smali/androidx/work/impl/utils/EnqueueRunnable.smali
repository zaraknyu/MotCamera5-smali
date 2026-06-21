.class public abstract Landroidx/work/impl/utils/EnqueueRunnable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static enqueue(Landroidx/work/impl/WorkContinuationImpl;)V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v1}, Landroidx/work/impl/WorkContinuationImpl;->hasCycles(Landroidx/work/impl/WorkContinuationImpl;Ljava/util/HashSet;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v2, v0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    invoke-static {v1, v2, p0}, Landroidx/work/impl/utils/RawQueries;->checkContentUriTriggerWorkerLimits(Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Landroidx/work/impl/WorkContinuationImpl;)V

    invoke-static {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result p0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    if-eqz p0, :cond_0

    iget-object p0, v0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    invoke-static {p0, v1, v0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WorkContinuation has cycles ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/work/impl/WorkContinuationImpl;->mParents:Ljava/util/List;

    sget-object v2, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/impl/WorkContinuationImpl;

    iget-boolean v6, v5, Landroidx/work/impl/WorkContinuationImpl;->mEnqueued:Z

    if-nez v6, :cond_0

    invoke-static {v5}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Already enqueued work ids ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ", "

    iget-object v5, v5, Landroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/ArrayList;

    invoke-static {v8, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v4, v3

    :cond_2
    invoke-static {v0}, Landroidx/work/impl/WorkContinuationImpl;->prerequisitesFor(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v5, v0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    iget-object v6, v0, Landroidx/work/impl/WorkContinuationImpl;->mWork:Ljava/util/List;

    new-array v7, v3, [Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v7, v0, Landroidx/work/impl/WorkContinuationImpl;->mName:Ljava/lang/String;

    iget v8, v0, Landroidx/work/impl/WorkContinuationImpl;->mExistingWorkPolicy:I

    iget-object v9, v5, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object v9, v9, Landroidx/work/Configuration;->clock:Landroidx/work/SystemClock;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, v5, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    if-eqz v1, :cond_3

    array-length v13, v1

    if-lez v13, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    move v13, v3

    :goto_1
    sget-object v14, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    sget-object v15, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    sget-object v12, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-eqz v13, :cond_9

    array-length v3, v1

    move/from16 v20, v4

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_2
    if-ge v4, v3, :cond_a

    move/from16 v21, v3

    aget-object v3, v1, v4

    move/from16 v22, v4

    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Prerequisite "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist; not enqueuing"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    const/4 v1, 0x1

    const/4 v3, 0x0

    goto/16 :goto_14

    :cond_5
    iget-object v3, v4, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    if-ne v3, v14, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    and-int v17, v17, v4

    if-ne v3, v12, :cond_7

    const/16 v19, 0x1

    goto :goto_5

    :cond_7
    if-ne v3, v15, :cond_8

    const/16 v18, 0x1

    :cond_8
    :goto_5
    add-int/lit8 v4, v22, 0x1

    move/from16 v3, v21

    goto :goto_2

    :cond_9
    move/from16 v20, v4

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    :cond_a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    sget-object v3, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-nez v2, :cond_1a

    if-nez v13, :cond_1a

    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_1a

    move/from16 v21, v2

    const/4 v2, 0x3

    move-object/from16 v22, v4

    const/4 v4, 0x4

    if-eq v8, v2, :cond_f

    if-ne v8, v4, :cond_b

    goto :goto_7

    :cond_b
    const/4 v2, 0x2

    if-ne v8, v2, :cond_d

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/impl/model/WorkSpec$IdAndState;

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    if-eq v4, v3, :cond_4

    sget-object v8, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v4, v8, :cond_c

    goto :goto_3

    :cond_d
    iget-object v2, v5, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    const-string/jumbo v4, "workManagerImpl.workDatabase"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroidx/work/impl/utils/CancelWorkRunnable$$ExternalSyntheticLambda0;

    const/4 v8, 0x0

    invoke-direct {v4, v2, v7, v5, v8}, Landroidx/work/impl/utils/CancelWorkRunnable$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;I)V

    new-instance v14, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v14, v8, v4}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v14}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/work/impl/model/WorkSpec$IdAndState;

    iget-object v8, v8, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroidx/work/impl/model/WorkSpecDao_Impl;->delete(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    move-object/from16 v23, v6

    move-object/from16 v24, v11

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto/16 :goto_f

    :cond_f
    :goto_7
    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Lcom/tinder/StateMachine;

    move-result-object v2

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_8
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_15

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v4, v23

    check-cast v4, Landroidx/work/impl/model/WorkSpec$IdAndState;

    move-object/from16 v23, v6

    iget-object v6, v4, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v24, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    move-object/from16 v24, v11

    const-string v11, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    const/4 v0, 0x1

    invoke-static {v0, v11}, Landroidx/room/Room;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v11

    invoke-virtual {v11, v0, v6}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    iget-object v0, v2, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    move-object/from16 v16, v2

    const/4 v6, 0x0

    invoke-static {v0, v11, v6}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_10
    move v0, v6

    :goto_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, Landroidx/room/RoomSQLiteQuery;->release()V

    if-nez v0, :cond_14

    iget-object v0, v4, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    if-ne v0, v14, :cond_11

    const/4 v2, 0x1

    goto :goto_a

    :cond_11
    move v2, v6

    :goto_a
    and-int v2, v17, v2

    if-ne v0, v12, :cond_12

    const/16 v19, 0x1

    goto :goto_b

    :cond_12
    if-ne v0, v15, :cond_13

    const/16 v18, 0x1

    :cond_13
    :goto_b
    iget-object v0, v4, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v17, v2

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v6, v23

    move-object/from16 v11, v24

    const/4 v4, 0x4

    goto :goto_8

    :goto_c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0

    :cond_15
    move v0, v4

    move-object/from16 v23, v6

    move-object/from16 v24, v11

    const/4 v6, 0x0

    if-ne v8, v0, :cond_18

    if-nez v18, :cond_16

    if-eqz v19, :cond_18

    :cond_16
    invoke-virtual/range {v24 .. v24}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/impl/model/WorkSpec$IdAndState;

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->delete(Ljava/lang/String;)V

    goto :goto_d

    :cond_17
    sget-object v13, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move/from16 v18, v6

    move/from16 v19, v18

    :cond_18
    invoke-interface {v13, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    array-length v0, v1

    if-lez v0, :cond_19

    const/4 v13, 0x1

    goto :goto_e

    :cond_19
    move v13, v6

    :goto_e
    move v8, v6

    goto :goto_f

    :cond_1a
    move/from16 v21, v2

    move-object/from16 v23, v6

    move-object/from16 v24, v11

    const/4 v6, 0x0

    goto :goto_e

    :goto_f
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/WorkRequest;

    iget-object v4, v2, Landroidx/work/WorkRequest;->workSpec:Landroidx/work/impl/model/WorkSpec;

    if-eqz v13, :cond_1d

    if-nez v17, :cond_1d

    if-eqz v19, :cond_1b

    iput-object v12, v4, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_11

    :cond_1b
    if-eqz v18, :cond_1c

    iput-object v15, v4, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_11

    :cond_1c
    sget-object v11, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    iput-object v11, v4, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_11

    :cond_1d
    iput-wide v9, v4, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    :goto_11
    iget-object v11, v4, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    if-ne v11, v3, :cond_1e

    const/4 v8, 0x1

    :cond_1e
    invoke-virtual/range {v24 .. v24}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v11

    iget-object v14, v5, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    invoke-static {v14, v4}, Landroidx/work/impl/utils/RawQueries;->wrapWorkSpecIfNeeded(Ljava/util/List;Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v4

    iget-object v14, v11, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_1
    iget-object v11, v11, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    invoke-virtual {v11, v4}, Landroidx/work/impl/model/WorkTagDao_Impl$1;->insert(Ljava/lang/Object;)V

    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    if-eqz v13, :cond_1f

    array-length v4, v1

    move v11, v6

    :goto_12
    if-ge v11, v4, :cond_1f

    aget-object v14, v1, v11

    new-instance v6, Landroidx/work/impl/model/Dependency;

    move-object/from16 v22, v0

    invoke-virtual {v2}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v14}, Landroidx/work/impl/model/Dependency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Lcom/tinder/StateMachine;

    move-result-object v0

    iget-object v14, v0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v14, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_2
    iget-object v0, v0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    invoke-virtual {v0, v6}, Landroidx/work/impl/model/WorkTagDao_Impl$1;->insert(Ljava/lang/Object;)V

    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v22

    const/4 v6, 0x0

    goto :goto_12

    :catchall_1
    move-exception v0

    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw v0

    :cond_1f
    move-object/from16 v22, v0

    invoke-virtual/range {v24 .. v24}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/core/view/MenuHostHelper;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v2, Landroidx/work/WorkRequest;->tags:Ljava/util/Set;

    invoke-virtual {v0, v4, v6}, Landroidx/core/view/MenuHostHelper;->insertTags(Ljava/lang/String;Ljava/util/Set;)V

    if-nez v21, :cond_20

    invoke-virtual/range {v24 .. v24}, Landroidx/work/impl/WorkDatabase;->workNameDao()Landroidx/room/concurrent/FileLock;

    move-result-object v0

    new-instance v4, Landroidx/work/impl/model/WorkName;

    invoke-virtual {v2}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v7, v2}, Landroidx/work/impl/model/WorkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v2, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_3
    iget-object v0, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    invoke-virtual {v0, v4}, Landroidx/work/impl/model/WorkTagDao_Impl$1;->insert(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    goto :goto_13

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw v0

    :cond_20
    :goto_13
    move-object/from16 v0, v22

    const/4 v6, 0x0

    goto/16 :goto_10

    :catchall_3
    move-exception v0

    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw v0

    :cond_21
    const/4 v1, 0x1

    move-object/from16 v0, p0

    move v3, v8

    :goto_14
    iput-boolean v1, v0, Landroidx/work/impl/WorkContinuationImpl;->mEnqueued:Z

    or-int v0, v20, v3

    return v0
.end method
