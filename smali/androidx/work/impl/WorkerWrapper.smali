.class public final Landroidx/work/impl/WorkerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final appContext:Landroid/content/Context;

.field public final clock:Landroidx/work/SystemClock;

.field public final configuration:Landroidx/work/Configuration;

.field public final dependencyDao:Lcom/tinder/StateMachine;

.field public final foregroundProcessor:Landroidx/work/impl/Processor;

.field public final runtimeExtras:Landroidx/core/view/MenuHostHelper;

.field public final tags:Ljava/util/ArrayList;

.field public final workDatabase:Landroidx/work/impl/WorkDatabase;

.field public final workDescription:Ljava/lang/String;

.field public final workSpec:Landroidx/work/impl/model/WorkSpec;

.field public final workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

.field public final workSpecId:Ljava/lang/String;

.field public final workTaskExecutor:Landroidx/transition/TransitionValuesMaps;

.field public final workerJob:Lkotlinx/coroutines/JobImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/NodeChain;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v1, p1, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->appContext:Landroid/content/Context;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    iget-object v1, p1, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    check-cast v1, Landroidx/core/view/MenuHostHelper;

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->runtimeExtras:Landroidx/core/view/MenuHostHelper;

    iget-object v1, p1, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v1, Landroidx/transition/TransitionValuesMaps;

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object v1, p1, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    check-cast v1, Landroidx/work/Configuration;

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    iget-object v1, v1, Landroidx/work/Configuration;->clock:Landroidx/work/SystemClock;

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/SystemClock;

    iget-object v1, p1, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/Processor;

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->foregroundProcessor:Landroidx/work/impl/Processor;

    iget-object v1, p1, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/WorkDatabase;

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v2

    iput-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Lcom/tinder/StateMachine;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->dependencyDao:Lcom/tinder/StateMachine;

    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->current:Ljava/util/RandomAccess;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->tags:Ljava/util/ArrayList;

    const-string p1, "Work [ id="

    const-string v2, ", tags={ "

    invoke-static {p1, v0, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const-string v2, ","

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " } ]"

    invoke-static {p1, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->workerJob:Lkotlinx/coroutines/JobImpl;

    return-void
.end method

.method public static final access$runWorker(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    iget-object v3, v1, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    iget-object v6, v5, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    instance-of v8, v0, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    if-eqz v8, :cond_0

    move-object v8, v0

    check-cast v8, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    iget v9, v8, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    const/high16 v10, -0x80000000

    and-int v11, v9, v10

    if-eqz v11, :cond_0

    sub-int/2addr v9, v10

    iput v9, v8, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v8, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    invoke-direct {v8, v1, v0}, Landroidx/work/impl/WorkerWrapper$runWorker$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v8, Landroidx/work/impl/WorkerWrapper$runWorker$1;->result:Ljava/lang/Object;

    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v10, v8, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    const/4 v11, 0x1

    if-eqz v10, :cond_2

    if-ne v10, v11, :cond_1

    iget-object v1, v8, Landroidx/work/impl/WorkerWrapper$runWorker$1;->L$0:Landroidx/work/impl/WorkerWrapper;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v10, v5, Landroidx/work/Configuration;->workerFactory:Landroidx/work/SystemClock;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/tracing/TraceApi29Impl;->isEnabled()Z

    move-result v6

    iget-object v12, v7, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    iget-object v13, v7, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    if-eqz v6, :cond_3

    if-eqz v12, :cond_3

    invoke-virtual {v7}, Landroidx/work/impl/model/WorkSpec;->hashCode()I

    move-result v0

    invoke-static {v12}, Landroidx/tracing/Trace;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    :cond_3
    new-instance v0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;

    const/4 v14, 0x0

    invoke-direct {v0, v1, v14}, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkerWrapper;I)V

    new-instance v15, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/4 v14, 0x2

    invoke-direct {v15, v14, v0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v15}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string/jumbo v15, "shouldExit"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>()V

    return-object v0

    :cond_4
    invoke-virtual {v7}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    const/4 v15, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v7, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    move-object/from16 v16, v9

    goto/16 :goto_4

    :cond_5
    iget-object v0, v5, Landroidx/work/Configuration;->inputMergerFactory:Landroidx/work/SystemClock;

    iget-object v14, v7, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "className"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/work/InputMergerKt;->TAG:Ljava/lang/String;

    :try_start_1
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v15, "null cannot be cast to non-null type androidx.work.InputMerger"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/work/OverwritingInputMerger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v16, v9

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v15

    sget-object v11, Landroidx/work/InputMergerKt;->TAG:Ljava/lang/String;

    move-object/from16 v16, v9

    const-string v9, "Trouble instantiating "

    invoke-virtual {v9, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v11, v9, v0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_6

    sget-object v0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Input Merger "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    invoke-direct {v9}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>()V

    goto/16 :goto_8

    :cond_6
    iget-object v0, v7, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    const-string v11, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    const/4 v14, 0x1

    invoke-static {v14, v11}, Landroidx/room/Room;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v11

    invoke-virtual {v11, v14, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    const/4 v14, 0x0

    invoke-static {v9, v11, v14}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v9

    :try_start_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v15, 0x0

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    sget-object v18, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-static/range {v17 .. v17}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, Landroidx/room/RoomSQLiteQuery;->release()V

    invoke-static {v0, v14}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v9, Landroidx/work/Data$Builder;

    invoke-direct {v9}, Landroidx/work/Data$Builder;-><init>()V

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/work/Data;

    iget-object v14, v14, Landroidx/work/Data;->values:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    const-string/jumbo v15, "unmodifiableMap(values)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v9, v11}, Landroidx/work/Data$Builder;->putAll(Ljava/util/HashMap;)V

    new-instance v0, Landroidx/work/Data;

    iget-object v9, v9, Landroidx/work/Data$Builder;->values:Ljava/lang/Object;

    check-cast v9, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v9}, Landroidx/work/Data;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-static {v0}, Landroidx/work/Data$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    :goto_4
    new-instance v9, Landroidx/work/WorkerParameters;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iget-object v11, v1, Landroidx/work/impl/WorkerWrapper;->tags:Ljava/util/ArrayList;

    iget-object v14, v1, Landroidx/work/impl/WorkerWrapper;->runtimeExtras:Landroidx/core/view/MenuHostHelper;

    iget v15, v7, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iget v7, v7, Landroidx/work/impl/model/WorkSpec;->generation:I

    iget-object v5, v5, Landroidx/work/Configuration;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v17, Landroidx/work/impl/utils/WorkProgressUpdater;

    move/from16 p1, v6

    new-instance v6, Landroidx/work/impl/utils/WorkForegroundUpdater;

    move-object/from16 v17, v12

    iget-object v12, v1, Landroidx/work/impl/WorkerWrapper;->foregroundProcessor:Landroidx/work/impl/Processor;

    invoke-direct {v6, v4, v12, v3}, Landroidx/work/impl/utils/WorkForegroundUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/transition/TransitionValuesMaps;)V

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v2, v9, Landroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    iput-object v0, v9, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v9, Landroidx/work/WorkerParameters;->mTags:Ljava/util/HashSet;

    iput-object v14, v9, Landroidx/work/WorkerParameters;->mRuntimeExtras:Landroidx/core/view/MenuHostHelper;

    iput v15, v9, Landroidx/work/WorkerParameters;->mRunAttemptCount:I

    iput v7, v9, Landroidx/work/WorkerParameters;->mGeneration:I

    iput-object v5, v9, Landroidx/work/WorkerParameters;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    :try_start_3
    iget-object v0, v1, Landroidx/work/impl/WorkerWrapper;->appContext:Landroid/content/Context;

    invoke-virtual {v10, v0, v13, v9}, Landroidx/work/SystemClock;->createWorkerWithDefaultFallback(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v14, 0x1

    iput-boolean v14, v0, Landroidx/work/ListenableWorker;->mUsed:Z

    iget-object v2, v8, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v5, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v2, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lkotlinx/coroutines/Job;

    new-instance v5, Landroidx/work/impl/WorkerWrapper$runWorker$2;

    move/from16 v7, p1

    move-object/from16 v9, v17

    invoke-direct {v5, v0, v7, v9, v1}, Landroidx/work/impl/WorkerWrapper$runWorker$2;-><init>(Landroidx/work/ListenableWorker;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;)V

    invoke-interface {v2, v5}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    new-instance v5, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v14}, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkerWrapper;I)V

    new-instance v7, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/4 v9, 0x2

    invoke-direct {v7, v9, v5}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v7}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "workDatabase.runInTransa\u2026e\n            }\n        )"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v9, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    invoke-direct {v9}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>()V

    goto/16 :goto_8

    :cond_9
    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v9, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    invoke-direct {v9}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>()V

    goto/16 :goto_8

    :cond_a
    iget-object v2, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/tasks/zzu;

    const-string/jumbo v3, "workTaskExecutor.getMainThreadExecutor()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    :try_start_4
    new-instance v3, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v6, v4}, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;-><init>(Landroidx/work/impl/WorkerWrapper;Landroidx/work/ListenableWorker;Landroidx/work/impl/utils/WorkForegroundUpdater;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v8, Landroidx/work/impl/WorkerWrapper$runWorker$1;->L$0:Landroidx/work/impl/WorkerWrapper;

    const/4 v14, 0x1

    iput v14, v8, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    invoke-static {v2, v3, v8}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, v16

    if-ne v0, v2, :cond_b

    move-object v9, v2

    goto :goto_8

    :cond_b
    :goto_5
    check-cast v0, Landroidx/work/ListenableWorker$Result;

    new-instance v9, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;

    const-string/jumbo v2, "result"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v0}, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;-><init>(Landroidx/work/ListenableWorker$Result;)V
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :goto_6
    sget-object v2, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    const-string v5, " failed because it threw an exception/error"

    invoke-static {v4, v1, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1, v0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v9, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    invoke-direct {v9}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>()V

    goto :goto_8

    :goto_7
    sget-object v2, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    const-string v5, " was cancelled"

    invoke-static {v4, v1, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v3, v3, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v4, 0x4

    if-gt v3, v4, :cond_c

    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    throw v0

    :catchall_2
    sget-object v0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Worker "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    invoke-direct {v9}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>()V

    :goto_8
    return-object v9

    :goto_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method


# virtual methods
.method public final reschedule(I)V
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/SystemClock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setLastEnqueueTime(JLjava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    invoke-virtual {v0, p0, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->resetWorkSpecNextScheduleTimeOverride(ILjava/lang/String;)V

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v3, v4, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->markWorkSpecScheduled(JLjava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setStopReason(ILjava/lang/String;)V

    return-void
.end method

.method public final resetPeriodic()V
    .locals 6

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/SystemClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setLastEnqueueTime(JLjava/lang/String;)V

    sget-object v0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v2, v0, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    iget-object v0, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v1, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/work/impl/model/WorkTagDao_Impl$2;

    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;->executeUpdateDelete()I

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v1, v4}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    invoke-virtual {v2, p0, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->resetWorkSpecNextScheduleTimeOverride(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Landroidx/work/impl/model/WorkTagDao_Impl$2;

    invoke-virtual {p0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    move-result-object v1

    invoke-interface {v1, v5, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :try_start_3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;->executeUpdateDelete()I

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p0, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    const-wide/16 v0, -0x1

    invoke-virtual {v2, v0, v1, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->markWorkSpecScheduled(JLjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    throw v0

    :catchall_2
    move-exception p0

    goto :goto_1

    :catchall_3
    move-exception p0

    :try_start_7
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_1
    invoke-virtual {v1, v4}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V

    throw p0
.end method

.method public final setFailed(Landroidx/work/ListenableWorker$Result;)V
    .locals 6

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeLast(Ljava/util/AbstractList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v4

    sget-object v5, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-eq v4, v5, :cond_0

    sget-object v4, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v3, v4, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->dependencyDao:Lcom/tinder/StateMachine;

    invoke-virtual {v3, v2}, Lcom/tinder/StateMachine;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/work/ListenableWorker$Result$Failure;

    iget-object p1, p1, Landroidx/work/ListenableWorker$Result$Failure;->mOutputData:Landroidx/work/Data;

    const-string v1, "failure.outputData"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    invoke-virtual {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->resetWorkSpecNextScheduleTimeOverride(ILjava/lang/String;)V

    invoke-virtual {v3, v0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setOutput(Ljava/lang/String;Landroidx/work/Data;)V

    return-void
.end method
