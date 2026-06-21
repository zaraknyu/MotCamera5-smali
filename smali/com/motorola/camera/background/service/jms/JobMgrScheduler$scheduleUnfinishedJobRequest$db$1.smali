.class public final Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $delayMs:J

.field public final synthetic $jobList:Ljava/util/List;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;


# direct methods
.method public constructor <init>(JLjava/util/List;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-wide p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->$delayMs:J

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->$jobList:Ljava/util/List;

    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->$jobList:Ljava/util/List;

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iget-wide v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->$delayMs:J

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;-><init>(JLjava/util/List;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->$delayMs:J

    cmp-long p1, v5, v3

    if-gez p1, :cond_2

    const-wide/16 v5, 0x7d0

    :cond_2
    iput v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->label:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->$jobList:Ljava/util/List;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iget-object v4, v3, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v4, :cond_6

    iget-wide v5, v1, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    invoke-virtual {v4, v5, v6}, Lcom/motorola/camera/background/service/jms/JobDatabase;->jobExists(J)Z

    move-result v4

    if-ne v4, v2, :cond_6

    iget-object v4, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->retryReason:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    sget-object v5, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;->COPROC:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    if-ne v4, v5, :cond_5

    :cond_6
    iget-object v8, v3, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v4, 0x0

    if-eqz v8, :cond_8

    iget-wide v9, v1, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getJob$1;

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getJob$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/motorola/camera/background/service/jms/JobDatabase;JLkotlin/coroutines/Continuation;)V

    invoke-static {v6}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    iget-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/background/service/jms/db/Transaction;

    if-eqz v1, :cond_7

    iget-boolean v1, v1, Lcom/motorola/camera/background/service/jms/db/Transaction;->markForDelete:Z

    goto :goto_2

    :cond_7
    move v1, v4

    :goto_2
    if-ne v1, v2, :cond_8

    move v4, v2

    :cond_8
    if-nez v4, :cond_5

    iget v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->callerID:I

    new-instance v4, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v3, v1, v5}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;ILkotlin/coroutines/Continuation;)V

    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
