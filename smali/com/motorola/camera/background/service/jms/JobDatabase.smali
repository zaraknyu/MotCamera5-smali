.class public final Lcom/motorola/camera/background/service/jms/JobDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_NUM_RETRIES:I


# instance fields
.field public final context:Landroid/content/Context;

.field public final jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

.field public final mJobMap:Ljava/util/LinkedHashMap;

.field public final mTransactionRepository:Lcom/motorola/camera/SecureDataHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/background/service/jms/JobDatabase;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    const/4 v0, 0x3

    sput v0, Lcom/motorola/camera/background/service/jms/JobDatabase;->DEFAULT_NUM_RETRIES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    new-instance p2, Lcom/motorola/camera/SecureDataHelper;

    invoke-direct {p2, p1}, Lcom/motorola/camera/SecureDataHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/SecureDataHelper;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static DB_removeResources$default(Lcom/motorola/camera/background/service/jms/JobDatabase;J)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    iget-boolean p0, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0
.end method

.method public static sortRequests(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 3

    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    new-instance v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final DB_removeInvalidJobs(J)V
    .locals 26

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLjava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobDatabase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iget-object v3, v2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/db/Transaction;

    sget v6, Lcom/motorola/camera/background/service/jms/db/Transaction;->$r8$clinit:I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzis;->getMsgInitial(Lcom/motorola/camera/background/service/jms/db/Transaction;)Lcom/motorola/camera/background/common/msg/MsgParameters;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/background/common/msg/MsgParameters;->type:Lcom/motorola/camera/background/common/msg/MsgType;

    sget-object v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x5

    if-ne v7, v8, :cond_2

    const-string v14, "CANCEL"

    sget-object v13, Lcom/motorola/camera/background/common/msg/MsgType;->CANCEL_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v15, Lcom/motorola/camera/background/common/TaskId;

    iget v6, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->clientId:I

    iget-wide v7, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->jobNum:J

    iget-wide v9, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->taskNum:J

    iget v11, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->sourceId:I

    iget v12, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->targetId:I

    move-object/from16 p1, v4

    iget v4, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->priority:I

    move/from16 v23, v4

    iget-boolean v4, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->useFifo:Z

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->comment:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v24, v4

    move/from16 v16, v6

    move-wide/from16 v17, v7

    move-wide/from16 v19, v9

    move/from16 v21, v11

    move/from16 v22, v12

    invoke-direct/range {v15 .. v25}, Lcom/motorola/camera/background/common/TaskId;-><init>(IJJIIIZLjava/lang/String;)V

    move/from16 v4, v22

    sget-object v11, Lcom/motorola/camera/background/common/ReturnCode;->CANCELED:Lcom/motorola/camera/background/common/ReturnCode;

    iget v0, v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    const-string/jumbo v0, "retCode"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v10, v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iget-object v0, v2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->procIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    :goto_1
    move-object v9, v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    if-eqz v9, :cond_1

    move-object v12, v15

    :try_start_0
    invoke-interface/range {v9 .. v14}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v6, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "callProcessMsg, dead object for remote "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_3
    move-object/from16 v4, p1

    goto/16 :goto_0

    :cond_2
    move-object/from16 p1, v4

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "earlyJobTermination: message type not supported ("

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    move-object/from16 p1, v4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/service/jms/db/Transaction;

    iget-wide v2, v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    invoke-static {v1, v2, v3}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_removeResources$default(Lcom/motorola/camera/background/service/jms/JobDatabase;J)Z

    goto :goto_4

    :cond_4
    return-void
.end method

.method public final DB_updateMarkForDelete(J)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMarkForDelete$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMarkForDelete$1;-><init>(Lcom/motorola/camera/SecureDataHelper;JLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    sget-object p1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final DB_updateMsgInfo(JILcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V
    .locals 10

    const-string v0, "msgType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "returnCode"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, p4, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    if-nez p5, :cond_0

    const-string p4, ""

    move-object v7, p4

    goto :goto_0

    :cond_0
    move-object v7, p5

    :goto_0
    invoke-virtual {v1}, Lcom/motorola/camera/background/common/ReturnCode;->getReturnCode()I

    move-result v8

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;

    const/4 v9, 0x0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;-><init>(Lcom/motorola/camera/SecureDataHelper;JIILjava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    sget-object p1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final generateJobRequest(Lcom/motorola/camera/background/service/jms/db/Transaction;Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/JobDatabase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    sget v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->$r8$clinit:I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzis;->getMsgInitial(Lcom/motorola/camera/background/service/jms/db/Transaction;)Lcom/motorola/camera/background/common/msg/MsgParameters;

    move-result-object v2

    iget v3, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->coProcId:I

    new-instance v4, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget v5, v2, Lcom/motorola/camera/background/common/msg/MsgParameters;->caller:I

    iget-object v6, v2, Lcom/motorola/camera/background/common/msg/MsgParameters;->type:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v7, v2, Lcom/motorola/camera/background/common/msg/MsgParameters;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-object v2, v2, Lcom/motorola/camera/background/common/msg/MsgParameters;->msg:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    move-object v8, v2

    sget-object v2, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    iget v9, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->priority:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/motorola/camera/background/common/Priority;->map:Ljava/util/LinkedHashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/common/Priority;

    if-nez v2, :cond_1

    sget-object v2, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    :cond_1
    move-object v9, v2

    iget-wide v10, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->ts:J

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->Companion:Lokio/Timeout;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcInterface(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcConnection(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    move-result-object v14

    move-object/from16 v15, p2

    move-object v13, v2

    invoke-direct/range {v4 .. v15}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;JLjava/lang/Integer;Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;)V

    return-object v4
.end method

.method public final getUnfinishedCoProcJobs(I)Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    iget-object v6, v3, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->stateMachine:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iget-object v6, v6, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_common/zziu;

    sget-object v7, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->transaction:Lcom/motorola/camera/background/service/jms/db/Transaction;

    sget-object v3, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    const/16 v3, 0xa

    iput v3, v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->priority:I

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->useFifo:Z

    iget-boolean v3, v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->markForDelete:Z

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    iget v3, v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->coProcId:I

    if-ne p1, v3, :cond_3

    sget-object v3, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;->COPROC:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    invoke-virtual {p0, v2, v3}, Lcom/motorola/camera/background/service/jms/JobDatabase;->generateJobRequest(Lcom/motorola/camera/background/service/jms/db/Transaction;Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/motorola/camera/background/service/jms/JobDatabase;->sortRequests(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final jobExists(J)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final transitionAndProcess(JLcom/google/android/gms/internal/mlkit_vision_common/zzit;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->stateMachine:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->stateMachine:Lcom/tinder/StateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "fromState"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/tinder/StateMachine;->getTransition(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_common/zzit;)Lcom/tinder/StateMachine$Transition;

    move-result-object p1

    instance-of p2, p1, Lcom/tinder/StateMachine$Transition$Valid;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v0, p1

    check-cast v0, Lcom/tinder/StateMachine$Transition$Valid;

    iget-object v0, v0, Lcom/tinder/StateMachine$Transition$Valid;->toState:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    monitor-exit p0

    iget-object p2, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast p2, Lcom/tinder/StateMachine$Graph;

    iget-object p2, p2, Lcom/tinder/StateMachine$Graph;->onTransitionListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    instance-of p2, p1, Lcom/tinder/StateMachine$Transition$Valid;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/tinder/StateMachine$Transition$Valid;

    iget-object p2, p1, Lcom/tinder/StateMachine$Transition$Valid;->fromState:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/tinder/StateMachine;->getDefinition(Ljava/lang/Object;)Lcom/tinder/StateMachine$Graph$State;

    move-result-object v0

    iget-object v0, v0, Lcom/tinder/StateMachine$Graph$State;->onExitListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lcom/tinder/StateMachine$Transition$Valid;->toState:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;

    invoke-virtual {p0, p1}, Lcom/tinder/StateMachine;->getDefinition(Ljava/lang/Object;)Lcom/tinder/StateMachine$Graph$State;

    move-result-object p0

    iget-object p0, p0, Lcom/tinder/StateMachine$Graph$State;->onEnterListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-interface {p2, p1, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :goto_4
    monitor-exit p0

    throw p1

    :cond_3
    return-void
.end method
