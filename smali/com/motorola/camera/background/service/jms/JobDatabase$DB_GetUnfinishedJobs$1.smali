.class public final Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $jobList:Ljava/util/ArrayList;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->$jobList:Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->$jobList:Ljava/util/ArrayList;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->label:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, v3, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/SecureDataHelper;

    iput v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->label:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;

    invoke-direct {v1, p1, v2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;-><init>(Lcom/motorola/camera/SecureDataHelper;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    sget-object v5, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {v5, v1, p1}, Lkotlinx/coroutines/JobKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p1

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v0, v3, Lcom/motorola/camera/background/service/jms/JobDatabase;->context:Landroid/content/Context;

    iget-object v1, v3, Lcom/motorola/camera/background/service/jms/JobDatabase;->context:Landroid/content/Context;

    const-class v5, Landroid/app/ActivityManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    const-string v5, "getHistoricalProcessExitReasons(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    const/4 v5, 0x5

    if-ne v0, v5, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v6

    :goto_1
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v7, "processing.job"

    invoke-direct {v5, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-array v5, v6, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v5}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v5, Ljava/io/BufferedReader;

    const/16 v8, 0x2000

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "readLine(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v5

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-wide/16 v7, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v5, v6, 0x1

    if-ltz v6, :cond_7

    check-cast v1, Lcom/motorola/camera/background/service/jms/db/Transaction;

    sget-object v6, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    const/16 v6, 0xa

    iput v6, v1, Lcom/motorola/camera/background/service/jms/db/Transaction;->priority:I

    iput-boolean v4, v1, Lcom/motorola/camera/background/service/jms/db/Transaction;->useFifo:Z

    iget-boolean v6, v1, Lcom/motorola/camera/background/service/jms/db/Transaction;->markForDelete:Z

    if-nez v6, :cond_6

    iget-wide v9, v1, Lcom/motorola/camera/background/service/jms/db/Transaction;->taskNum:J

    cmp-long v6, v7, v9

    if-nez v6, :cond_5

    if-eqz v0, :cond_5

    sget-object v6, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;->CRASH:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    goto :goto_4

    :cond_5
    sget-object v6, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;->JMS:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    :goto_4
    invoke-virtual {v3, v1, v6}, Lcom/motorola/camera/background/service/jms/JobDatabase;->generateJobRequest(Lcom/motorola/camera/background/service/jms/db/Transaction;Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    move-result-object v1

    iget-object v6, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->$jobList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move v6, v5

    goto :goto_3

    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v2

    :cond_8
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
