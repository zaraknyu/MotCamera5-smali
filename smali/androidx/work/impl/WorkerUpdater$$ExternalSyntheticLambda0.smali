.class public final synthetic Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/work/impl/WorkDatabase;

.field public final synthetic f$1:Landroidx/work/impl/model/WorkSpec;

.field public final synthetic f$2:Landroidx/work/impl/model/WorkSpec;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/util/Set;

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$0:Landroidx/work/impl/WorkDatabase;

    iput-object p2, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$1:Landroidx/work/impl/model/WorkSpec;

    iput-object p3, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$2:Landroidx/work/impl/model/WorkSpec;

    iput-object p4, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    iput-object p5, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput-object p6, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$5:Ljava/util/Set;

    iput-boolean p7, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$6:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$0:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/core/view/MenuHostHelper;

    move-result-object v3

    iget-object v4, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$1:Landroidx/work/impl/model/WorkSpec;

    iget-object v7, v4, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    iget v10, v4, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iget-wide v11, v4, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    iget v5, v4, Landroidx/work/impl/model/WorkSpec;->generation:I

    const/4 v6, 0x1

    add-int/lit8 v14, v5, 0x1

    iget v13, v4, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    iget-wide v8, v4, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    iget v4, v4, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    move-wide v15, v8

    const/4 v9, 0x0

    const v18, 0xc3dbfd

    iget-object v5, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$2:Landroidx/work/impl/model/WorkSpec;

    move v8, v6

    const/4 v6, 0x0

    move/from16 v17, v8

    const/4 v8, 0x0

    move/from16 v19, v17

    move/from16 v17, v4

    move/from16 v4, v19

    invoke-static/range {v5 .. v18}, Landroidx/work/impl/model/WorkSpec;->copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Landroidx/work/Data;IJIIJII)Landroidx/work/impl/model/WorkSpec;

    move-result-object v6

    iget v7, v5, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    if-ne v7, v4, :cond_0

    iget-wide v7, v5, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    iput-wide v7, v6, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    iget v5, v6, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    add-int/2addr v5, v4

    iput v5, v6, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    :cond_0
    iget-object v5, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    invoke-static {v5, v6}, Landroidx/work/impl/utils/RawQueries;->wrapWorkSpecIfNeeded(Ljava/util/List;Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v5

    iget-object v6, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v7, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__updateAdapterOfWorkSpec:Landroidx/work/impl/model/WorkTagDao_Impl$2;

    invoke-virtual {v7}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v7, v8, v5}, Landroidx/work/impl/model/WorkTagDao_Impl$2;->bind(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;->executeUpdateDelete()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v7, v8}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object v5, v3, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v5, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v6, v3, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v6, Landroidx/work/impl/model/WorkTagDao_Impl$2;

    invoke-virtual {v6}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    move-result-object v7

    iget-object v8, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    invoke-interface {v7, v4, v8}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :try_start_3
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v7}, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;->executeUpdateDelete()I

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->internalEndTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v6, v7}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    iget-object v4, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$5:Ljava/util/Set;

    invoke-virtual {v3, v8, v4}, Landroidx/core/view/MenuHostHelper;->insertTags(Ljava/lang/String;Ljava/util/Set;)V

    iget-boolean v0, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$6:Z

    if-nez v0, :cond_1

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4, v8}, Landroidx/work/impl/model/WorkSpecDao_Impl;->markWorkSpecScheduled(JLjava/lang/String;)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workProgressDao()Landroidx/transition/TransitionValuesMaps;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroidx/transition/TransitionValuesMaps;->delete(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    invoke-virtual {v6, v7}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {v7, v8}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_1
    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw v0
.end method
