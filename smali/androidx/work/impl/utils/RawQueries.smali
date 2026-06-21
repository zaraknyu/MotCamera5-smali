.class public abstract Landroidx/work/impl/utils/RawQueries;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final defaultCapabilities:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    const/16 v1, 0xe

    const/16 v2, 0xd

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/RawQueries;->defaultCapabilities:[I

    return-void
.end method

.method public static final bindings(ILjava/lang/StringBuilder;)V
    .locals 6

    if-gtz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/16 v5, 0x3e

    const-string v1, ","

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    const-string/jumbo v1, "workManagerImpl.workDatabase"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Lcom/tinder/StateMachine;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeLast(Ljava/util/AbstractList;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v5

    sget-object v6, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    if-eq v5, v6, :cond_0

    sget-object v6, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-eq v5, v6, :cond_0

    iget-object v5, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v6, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetCancelledState:Landroidx/work/impl/model/WorkTagDao_Impl$2;

    invoke-virtual {v6}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    move-result-object v7

    invoke-interface {v7, v4, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v7}, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;->executeUpdateDelete()I

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->internalEndTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v6, v7}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {v6, v7}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    throw p0

    :cond_0
    :goto_2
    invoke-virtual {v0, v3}, Lcom/tinder/StateMachine;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mProcessor:Landroidx/work/impl/Processor;

    const-string/jumbo v1, "workManagerImpl.processor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Processor cancelling "

    iget-object v2, v0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v3

    sget-object v5, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/work/impl/Processor;->mCancelledIds:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Landroidx/work/impl/Processor;->cleanUpWorkerUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {p1, v0, v4}, Landroidx/work/impl/Processor;->interrupt(Ljava/lang/String;Landroidx/work/impl/WorkerWrapper;I)Z

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/Scheduler;

    invoke-interface {v0, p1}, Landroidx/work/impl/Scheduler;->cancel(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    return-void

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public static final checkContentUriTriggerWorkerLimits(Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Landroidx/work/impl/WorkContinuationImpl;)V
    .locals 6

    const-string/jumbo v0, "workDatabase"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p2}, [Landroidx/work/impl/WorkContinuationImpl;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeLast(Ljava/util/AbstractList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/WorkContinuationImpl;

    iget-object v3, v2, Landroidx/work/impl/WorkContinuationImpl;->mWork:Ljava/util/List;

    const-string v4, "current.work"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_2

    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/WorkRequest;

    iget-object v5, v5, Landroidx/work/WorkRequest;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v5}, Landroidx/work/Constraints;->hasContentUriTriggers()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    if-ltz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwCountOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_2
    add-int/2addr v1, v4

    iget-object v2, v2, Landroidx/work/impl/WorkContinuationImpl;->mParents:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    const-string p2, "Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)"

    invoke-static {v0, p2}, Landroidx/room/Room;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object p2

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {p0, p2, v0}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_7
    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p2}, Landroidx/room/RoomSQLiteQuery;->release()V

    iget p0, p1, Landroidx/work/Configuration;->contentUriTriggerWorkersLimit:I

    add-int p1, v0, v1

    if-gt p1, p0, :cond_8

    :goto_4
    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, ";\nalready enqueued count: "

    const-string v2, ";\ncurrent enqueue operation count: "

    const-string v3, "Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: "

    invoke-static {p0, v0, v3, p2, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed."

    invoke-static {p0, v1, p2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p2}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public static final createNetworkRequest([I[I)Landroid/net/NetworkRequest;
    .locals 12

    const-string v0, "capabilities"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transports"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    const/16 v5, 0x27

    if-ge v3, v1, :cond_1

    aget v6, p0, v3

    :try_start_0
    invoke-virtual {v0, v6}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v8

    sget-object v9, Landroidx/work/impl/utils/NetworkRequestCompat;->TAG:Ljava/lang/String;

    sget-object v9, Landroidx/work/impl/utils/NetworkRequestCompat;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Ignoring adding capability \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v8, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    if-gt v6, v4, :cond_0

    invoke-static {v9, v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_2
    const/4 v3, 0x3

    if-ge v1, v3, :cond_3

    sget-object v3, Landroidx/work/impl/utils/RawQueries;->defaultCapabilities:[I

    aget v3, v3, v1

    invoke-static {p0, v3}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v6

    if-nez v6, :cond_2

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v6

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v7

    sget-object v8, Landroidx/work/impl/utils/NetworkRequestCompat;->TAG:Ljava/lang/String;

    sget-object v8, Landroidx/work/impl/utils/NetworkRequestCompat;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Ignoring removing default capability \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v7, v7, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    if-gt v7, v4, :cond_2

    invoke-static {v8, v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    array-length p0, p1

    :goto_4
    if-ge v2, p0, :cond_4

    aget v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    const-string p1, "networkRequest.build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final wrapWorkSpecIfNeeded(Ljava/util/List;Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;
    .locals 14

    const-string/jumbo v1, "schedulers"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "workSpec"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    const-string v2, "androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME"

    invoke-virtual {v1, v2}, Landroidx/work/Data;->hasKeyWithValueOfType(Ljava/lang/String;)Z

    move-result v1

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    const-string v4, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

    invoke-virtual {v3, v4}, Landroidx/work/Data;->hasKeyWithValueOfType(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    const-string v5, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v4, v5}, Landroidx/work/Data;->hasKeyWithValueOfType(Ljava/lang/String;)Z

    move-result v4

    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    new-instance v3, Landroidx/work/Data$Builder;

    invoke-direct {v3}, Landroidx/work/Data$Builder;-><init>()V

    iget-object v4, v3, Landroidx/work/Data$Builder;->values:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedHashMap;

    iget-object v5, p1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    const-string v6, "data"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v5, Landroidx/work/Data;->values:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroidx/work/Data$Builder;->putAll(Ljava/util/HashMap;)V

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/work/Data;

    invoke-direct {v1, v4}, Landroidx/work/Data;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-static {v1}, Landroidx/work/Data$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    const/4 v12, 0x0

    const v13, 0xffffeb

    move-object v4, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "androidx.work.multiprocess.RemoteListenableDelegatingWorker"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v13}, Landroidx/work/impl/model/WorkSpec;->copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Landroidx/work/Data;IJIIJII)Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method
