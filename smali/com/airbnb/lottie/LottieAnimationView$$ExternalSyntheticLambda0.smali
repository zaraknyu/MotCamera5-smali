.class public final synthetic Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/work/impl/WorkerWrapper$Resolution;

    check-cast v1, Landroidx/work/impl/WorkerWrapper;

    iget-object v0, v1, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    instance-of v3, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;

    sget-object v4, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_9

    check-cast p0, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;->result:Landroidx/work/ListenableWorker$Result;

    invoke-virtual {v2, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v3

    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->workProgressDao()Landroidx/transition/TransitionValuesMaps;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroidx/transition/TransitionValuesMaps;->delete(Ljava/lang/String;)V

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v7, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v3, v7, :cond_8

    iget-object v3, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    instance-of v8, p0, Landroidx/work/ListenableWorker$Result$Success;

    if-eqz v8, :cond_5

    sget-object v8, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Worker result SUCCESS for "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v8, v7}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroidx/work/impl/WorkerWrapper;->resetPeriodic()V

    :cond_1
    :goto_0
    move v5, v6

    goto/16 :goto_4

    :cond_2
    sget-object v3, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v2, v3, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    check-cast p0, Landroidx/work/ListenableWorker$Result$Success;

    iget-object p0, p0, Landroidx/work/ListenableWorker$Result$Success;->mOutputData:Landroidx/work/Data;

    const-string/jumbo v3, "success.outputData"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, p0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setOutput(Ljava/lang/String;Landroidx/work/Data;)V

    iget-object p0, v1, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/SystemClock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object p0, v1, Landroidx/work/impl/WorkerWrapper;->dependencyDao:Lcom/tinder/StateMachine;

    invoke-virtual {p0, v0}, Lcom/tinder/StateMachine;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v3

    sget-object v9, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    if-ne v3, v9, :cond_3

    sget-object v3, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    const-string v3, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    invoke-static {v5, v3}, Landroidx/room/Room;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    iget-object v9, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v9, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {v9, v3, v6}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v9

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_4

    move v10, v5

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    move v10, v6

    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    if-eqz v10, :cond_3

    sget-object v3, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v9

    const-string v10, "Setting status to enqueued for "

    invoke-virtual {v10, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setLastEnqueueTime(JLjava/lang/String;)V

    goto :goto_1

    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p0

    :cond_5
    instance-of v0, p0, Landroidx/work/ListenableWorker$Result$Retry;

    if-eqz v0, :cond_6

    sget-object p0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Worker result RETRY for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x100

    invoke-virtual {v1, p0}, Landroidx/work/impl/WorkerWrapper;->reschedule(I)V

    goto :goto_4

    :cond_6
    sget-object v0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Worker result FAILURE for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Landroidx/work/impl/WorkerWrapper;->resetPeriodic()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1, p0}, Landroidx/work/impl/WorkerWrapper;->setFailed(Landroidx/work/ListenableWorker$Result;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v3}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, -0x200

    invoke-virtual {v1, p0}, Landroidx/work/impl/WorkerWrapper;->reschedule(I)V

    :goto_4
    move v6, v5

    goto :goto_5

    :cond_9
    instance-of v3, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    if-eqz v3, :cond_a

    check-cast p0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;->result:Landroidx/work/ListenableWorker$Result;

    invoke-virtual {v1, p0}, Landroidx/work/impl/WorkerWrapper;->setFailed(Landroidx/work/ListenableWorker$Result;)V

    goto :goto_5

    :cond_a
    instance-of v1, p0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    if-eqz v1, :cond_c

    check-cast p0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    iget p0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;->reason:I

    invoke-virtual {v2, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v1

    const-string v3, " is "

    const-string v7, "Status for "

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v8

    if-nez v8, :cond_b

    sget-object v6, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; not doing any work and rescheduling for later execution"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    invoke-virtual {v2, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setStopReason(ILjava/lang/String;)V

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->markWorkSpecScheduled(JLjava/lang/String;)V

    goto :goto_4

    :cond_b
    sget-object p0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ; not doing any work"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_0
    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    check-cast v1, Ljava/lang/String;

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "asset_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    :goto_6
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
