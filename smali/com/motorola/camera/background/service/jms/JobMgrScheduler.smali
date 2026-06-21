.class public final Lcom/motorola/camera/background/service/jms/JobMgrScheduler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final coProcActors:Ljava/util/ArrayList;

.field public final context:Landroid/content/Context;

.field public final identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public mCoProcThreadIndexCount:I

.field public final mCoprocRoutineMap:Ljava/util/LinkedHashMap;

.field public final mCoroutineJob:Lkotlinx/coroutines/JobImpl;

.field public mExecutorActor:Lkotlinx/coroutines/channels/ActorCoroutine;

.field public final mJobChannelCapacity:I

.field public mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

.field public mWorkerActor:Lkotlinx/coroutines/channels/ActorCoroutine;

.field public final parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Lcom/motorola/camera/background/common/RegisteredProcDef;Landroid/content/Context;)V
    .locals 1

    const-string v0, "identity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->context:Landroid/content/Context;

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoProcThreadIndexCount:I

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoprocRoutineMap:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    const/16 p1, 0x64

    iput p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobChannelCapacity:I

    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoroutineJob:Lkotlinx/coroutines/JobImpl;

    return-void
.end method


# virtual methods
.method public final callWorker(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lcom/motorola/camera/background/common/msg/MsgType;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, p1, v1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;-><init>(Lcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    return-void
.end method

.method public final deinitialize()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoroutineJob:Lkotlinx/coroutines/JobImpl;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/channels/SendChannel;

    invoke-interface {v2, v1}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mWorkerActor:Lkotlinx/coroutines/channels/ActorCoroutine;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->getMExecutorActor()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p0

    invoke-interface {p0, v1}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    return-void

    :cond_1
    const-string p0, "mWorkerActor"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoroutineJob:Lkotlinx/coroutines/JobImpl;

    return-object p0
.end method

.method public final getMExecutorActor()Lkotlinx/coroutines/channels/SendChannel;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mExecutorActor:Lkotlinx/coroutines/channels/ActorCoroutine;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mExecutorActor"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final initialize()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/background/service/jms/JobDatabase;-><init>(Landroid/content/Context;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;)V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoroutineJob:Lkotlinx/coroutines/JobImpl;

    iget v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobChannelCapacity:I

    invoke-static {p0, v2, v3, v0}, Lkotlinx/coroutines/channels/ActorKt;->actor$default(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlinx/coroutines/JobImpl;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ActorCoroutine;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mExecutorActor:Lkotlinx/coroutines/channels/ActorCoroutine;

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v2, v3, v0}, Lkotlinx/coroutines/channels/ActorKt;->actor$default(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlinx/coroutines/JobImpl;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ActorCoroutine;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mWorkerActor:Lkotlinx/coroutines/channels/ActorCoroutine;

    new-instance v0, Lkotlin/ranges/IntRange;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v3}, Lkotlin/ranges/IntProgression;-><init>(III)V

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v0

    :goto_0
    iget-boolean v3, v0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    new-instance v3, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;

    invoke-direct {v3, p0, v1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    invoke-static {p0, v2, v4, v3}, Lkotlinx/coroutines/channels/ActorKt;->actor$default(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlinx/coroutines/JobImpl;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ActorCoroutine;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStartUp()I
    .locals 13

    sget-object v0, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v2, "time_out"

    const-string v9, "id"

    const-string/jumbo v10, "uri"

    filled-new-array {v2, v9, v10}, [Ljava/lang/String;

    move-result-object v5

    sget-boolean v4, Lcom/motorola/camera/background/provider/FileDataContract;->isForegroundProcessingEnabled:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/motorola/camera/background/provider/FileDataContract;->IN_MEMORY_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_4

    :cond_2
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    sget v6, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->$r8$clinit:I

    const-wide/16 v6, 0x0

    invoke-static {v4, v2, v6, v7}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v8, v11, v0

    if-gez v8, :cond_2

    invoke-static {v4, v9, v6, v7}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/motorola/camera/background/provider/FileDataContract;->getContentUri(J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v4, v10}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperStr(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string/jumbo v8, "parse(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v6, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v4, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_4
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1, v5}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->scheduleUnfinishedJobRequest(JLjava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public final processControlMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v0, v0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget-object v2, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/16 v3, 0xe

    if-eq v2, v3, :cond_1

    const/16 p1, 0xa

    if-eq v2, p1, :cond_0

    const/16 p1, 0xb

    if-eq v2, p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "executorActor: Invalid msg: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object p1, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_CTL_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->callWorker(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lcom/motorola/camera/background/common/msg/MsgType;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->mCancelPending:Z

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz p0, :cond_3

    new-instance v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;

    invoke-direct {v2, p1, p2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;-><init>(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/camera/background/service/jms/JobDatabase;->transitionAndProcess(JLcom/google/android/gms/internal/mlkit_vision_common/zzit;)V

    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final processRequestMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Z
    .locals 50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v3, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v3, :cond_b

    monitor-enter v3

    :try_start_0
    new-instance v10, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v4, v2, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget-object v2, v3, Lcom/motorola/camera/background/service/jms/JobDatabase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {v10, v4, v5, v2, v3}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;-><init>(JLcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobDatabase;)V

    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v4, v2, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    sget v8, Lcom/motorola/camera/background/service/jms/db/Transaction;->$r8$clinit:I

    const-wide/16 v42, 0x0

    cmp-long v8, v6, v42

    if-lez v8, :cond_0

    sget-wide v11, Lcom/motorola/camera/background/service/jms/db/Transaction;->DEFAULT_TIMEOUT_MS:J

    invoke-virtual {v2, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    add-long/2addr v11, v6

    :goto_0
    move-wide/from16 v38, v11

    goto :goto_1

    :cond_0
    const-wide v11, 0x7fffffffffffffffL

    goto :goto_0

    :goto_1
    iget-wide v11, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->timeStamp:J

    iget-object v2, v10, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->stateMachine:Lcom/tinder/StateMachine;

    iget-object v2, v2, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v6, "stateRef.get()"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v36

    sget v8, Lcom/motorola/camera/background/service/jms/JobDatabase;->DEFAULT_NUM_RETRIES:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v5, v4

    move-object v4, v3

    :try_start_1
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getJob$1;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getJob$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/motorola/camera/background/service/jms/JobDatabase;JLkotlin/coroutines/Continuation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v48, v5

    move-object v6, v2

    move-object v2, v3

    move-object v3, v4

    move-wide/from16 v4, v48

    :try_start_2
    invoke-static {v6}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, Lcom/motorola/camera/background/service/jms/db/Transaction;

    const-wide/16 v15, -0x1

    if-eqz v13, :cond_4

    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->retryReason:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    sget-object v6, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;->COPROC:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    if-ne v2, v6, :cond_1

    iget-wide v6, v13, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    move-wide/from16 v48, v6

    move-wide v6, v4

    move-wide/from16 v4, v48

    move/from16 v41, v8

    :goto_2
    const/4 v2, 0x0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    sget-object v6, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;->CRASH:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    if-ne v2, v6, :cond_2

    const/4 v6, 0x0

    goto :goto_3

    :cond_2
    iget v2, v13, Lcom/motorola/camera/background/service/jms/db/Transaction;->retryCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v13, Lcom/motorola/camera/background/service/jms/db/Transaction;->retryCount:I

    move v6, v2

    :goto_3
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JILkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    iget-boolean v2, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v2, :cond_3

    move/from16 v41, v6

    const/4 v2, 0x1

    :goto_4
    move-wide v6, v4

    move-wide v4, v15

    goto :goto_5

    :cond_3
    const/4 v13, 0x0

    move/from16 v41, v6

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    move-wide v6, v4

    move/from16 v41, v8

    move-wide v4, v15

    goto :goto_2

    :goto_5
    if-eqz v13, :cond_5

    cmp-long v8, v4, v42

    if-ltz v8, :cond_6

    :cond_5
    move-wide v15, v11

    goto :goto_6

    :cond_6
    move-wide v4, v6

    move-object/from16 v45, v10

    const/4 v9, 0x1

    const/16 v44, 0x0

    goto/16 :goto_8

    :goto_6
    new-instance v11, Lcom/motorola/camera/background/service/jms/db/Transaction;

    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget v8, v2, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    iget v12, v2, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    iget v13, v2, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    move-wide/from16 v18, v15

    iget-wide v14, v2, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    move-object/from16 v45, v10

    const/16 v44, 0x0

    iget-wide v9, v2, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    move-wide/from16 v46, v4

    iget v4, v2, Lcom/motorola/camera/background/common/TaskId;->priority:I

    iget-boolean v5, v2, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    iget-object v2, v2, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    move-object/from16 v26, v2

    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->coProcId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v27

    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget v2, v2, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    move/from16 v29, v2

    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    sget-object v16, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/camera/background/common/ReturnCode;->getReturnCode()I

    move-result v31

    move-object/from16 v30, v2

    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget v2, v2, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    move/from16 v33, v2

    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/camera/background/common/ReturnCode;->getReturnCode()I

    move-result v35

    const/16 v40, 0x1

    const/16 v37, 0x0

    move-wide/from16 v20, v14

    const/4 v14, 0x0

    move/from16 v32, p1

    move/from16 v28, p1

    move-object/from16 v34, v2

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v17, v8

    move-wide/from16 v22, v9

    move-wide/from16 v15, v18

    const/4 v9, 0x1

    move/from16 v18, v12

    move/from16 v19, v13

    move-wide v12, v6

    invoke-direct/range {v11 .. v41}, Lcom/motorola/camera/background/service/jms/db/Transaction;-><init>(JZJIIIJJIZLjava/lang/String;IIILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;IJZI)V

    move-object v6, v11

    cmp-long v2, v46, v42

    if-ltz v2, :cond_7

    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;

    const/4 v8, 0x0

    move-wide/from16 v4, v46

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLcom/motorola/camera/background/service/jms/db/Transaction;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    iget-boolean v14, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move-wide v4, v12

    goto :goto_7

    :cond_7
    new-instance v2, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;

    const/4 v7, 0x0

    move-wide v4, v12

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLcom/motorola/camera/background/service/jms/db/Transaction;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move v14, v9

    :goto_7
    move-object v13, v6

    move v2, v14

    :goto_8
    if-eqz v2, :cond_8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v3, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    new-instance v6, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    move-object/from16 v7, v45

    invoke-direct {v6, v13, v7}, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;-><init>(Lcom/motorola/camera/background/service/jms/db/Transaction;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    monitor-exit v3

    if-ne v2, v9, :cond_c

    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v2, v2, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget-object v4, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v4, :cond_9

    new-instance v5, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;

    move/from16 v6, p1

    invoke-direct {v5, v6, v1}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;-><init>(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)V

    invoke-virtual {v4, v2, v3, v5}, Lcom/motorola/camera/background/service/jms/JobDatabase;->transitionAndProcess(JLcom/google/android/gms/internal/mlkit_vision_common/zzit;)V

    :cond_9
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_9

    :cond_a
    move/from16 v0, v44

    :goto_9
    invoke-virtual {v1, v0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->updateProgress(I)V

    return v9

    :catchall_1
    move-exception v0

    move-object v3, v4

    :goto_a
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_b
    const/16 v44, 0x0

    :cond_c
    return v44
.end method

.method public final processResultMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;J)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->Companion:Lokio/Timeout;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;

    invoke-direct {v0, p1, p2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;-><init>(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;)V

    invoke-virtual {p0, p3, p4, v0}, Lcom/motorola/camera/background/service/jms/JobDatabase;->transitionAndProcess(JLcom/google/android/gms/internal/mlkit_vision_common/zzit;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Invalid caller: not registered "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)V

    return-void
.end method

.method public final scheduleUnfinishedJobRequest(JLjava/lang/Integer;)I
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_removeInvalidJobs(J)V

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    monitor-enter v1

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/motorola/camera/background/service/jms/JobDatabase;->getUnfinishedCoProcJobs(I)Ljava/util/List;

    move-result-object p3

    :goto_0
    move-object v0, p3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;

    invoke-direct {v2, v1, p3, v0}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/motorola/camera/background/service/jms/JobDatabase;->sortRequests(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit v1

    :cond_2
    move-object v5, v0

    goto :goto_3

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :goto_3
    sget-object p3, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    new-instance v2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;

    const/4 v7, 0x0

    move-object v6, p0

    move-wide v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;-><init>(JLjava/util/List;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x1

    invoke-static {v6, v2, p0}, Lkotlinx/coroutines/JobKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p0

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_4

    :cond_3
    const/4 p1, 0x0

    :goto_4
    if-lez p1, :cond_4

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->start()Z

    :cond_4
    return p1
.end method

.method public final workerProcessControlMsg(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;
    .locals 6

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v0, v3, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget-object v2, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    const/16 v5, 0xe

    if-eq v4, v5, :cond_0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    const/16 v5, 0xb

    if-eq v4, v5, :cond_0

    iget p0, v2, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    const-string/jumbo v0, "workerProcessControlMsg: Unknown msg code: "

    sget-object v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    :goto_0
    move-object v2, p0

    goto :goto_4

    :cond_0
    move-object v4, v2

    sget-object v2, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v0, v1}, Lcom/motorola/camera/background/service/jms/JobDatabase;->jobExists(J)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->SUSPEND_PROCESSING:Lcom/motorola/camera/background/common/msg/MsgType;

    if-ne v4, v0, :cond_8

    :goto_1
    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->isReady()Z

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->start()Z

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->isReady()Z

    move-result v1

    :cond_4
    if-eqz v1, :cond_7

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->getServiceIntf()Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v1, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iput v1, v3, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v1, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iget-object v4, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v5, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processCtlMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    :cond_6
    move-object p0, v2

    goto :goto_0

    :cond_7
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    :cond_8
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    :goto_4
    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    iget v1, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->callerID:I

    iget-object v4, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    return-object v0
.end method

.method public final workerProcessRequest(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;
    .locals 9

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v0, v3, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    sget-object v2, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v4, :cond_8

    invoke-virtual {v4, v0, v1}, Lcom/motorola/camera/background/service/jms/JobDatabase;->jobExists(J)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->isReady()Z

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->start()Z

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->isReady()Z

    move-result v4

    :cond_2
    if-eqz v4, :cond_7

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->getServiceIntf()Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v5, v4, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iput v5, v3, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz p0, :cond_6

    iget-wide v5, v3, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    invoke-virtual {p0, v5, v6}, Lcom/motorola/camera/background/service/jms/JobDatabase;->jobExists(J)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    if-eqz p0, :cond_4

    iget-boolean p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->mCancelPending:Z

    if-ne p0, v1, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    :try_start_0
    invoke-interface {v0}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v1, v4, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iget-object v4, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v5, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    const-string v1, "Binder for coproc is dead, maybe process died?"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_2
    move-object v5, v2

    goto :goto_4

    :cond_6
    :goto_3
    sget-object v2, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_2

    :cond_7
    sget-object v2, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_2

    :cond_8
    sget-object v2, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_2

    :goto_4
    new-instance v3, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    iget v4, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->callerID:I

    sget-object v7, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v6, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    return-object v3
.end method
