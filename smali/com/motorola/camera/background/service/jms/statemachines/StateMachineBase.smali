.class public abstract Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final reverseStateMap:Ljava/util/LinkedHashMap;

.field public static final stateMap:Ljava/lang/Object;


# instance fields
.field public final jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

.field public mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_common/zziu;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-class v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Unknown;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Unknown;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "Unknown"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Init;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Init;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "Init"

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;

    new-instance v3, Lkotlin/Pair;

    const-string v4, "InQueue"

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;

    new-instance v4, Lkotlin/Pair;

    const-string v5, "JmsTxCoProcProcessJob"

    invoke-direct {v4, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxCoProcJobComplete;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxCoProcJobComplete;

    new-instance v5, Lkotlin/Pair;

    const-string v6, "JmsRxCoProcJobComplete"

    invoke-direct {v5, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;

    new-instance v6, Lkotlin/Pair;

    const-string v7, "JmsTxDstClientProcessJob"

    invoke-direct {v6, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxDstClientJobComplete;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxDstClientJobComplete;

    new-instance v7, Lkotlin/Pair;

    const-string v8, "JmsRxDstClientJobComplete"

    invoke-direct {v7, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxSrcClientJobComplete;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxSrcClientJobComplete;

    new-instance v8, Lkotlin/Pair;

    const-string v9, "JmsTxSrcClientJobComplete"

    invoke-direct {v8, v9, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;

    new-instance v9, Lkotlin/Pair;

    const-string v10, "CompleteJob"

    invoke-direct {v9, v10, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$RemoveJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$RemoveJob;

    new-instance v10, Lkotlin/Pair;

    const-string v11, "RemoveJob"

    invoke-direct {v10, v11, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;

    new-instance v11, Lkotlin/Pair;

    const-string v12, "CancelJob"

    invoke-direct {v11, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v1 .. v11}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sput-object v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->reverseStateMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobDatabase;)V
    .locals 1

    const-string v0, "dbIntf"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    sget-object p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE$2:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_common/zziu;

    new-instance p0, Ljava/util/LinkedHashMap;

    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    new-instance p1, Ljava/util/ArrayList;

    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Init;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Init;

    invoke-static {p0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/LinkedHashMap;)Ljava/util/Map;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    new-instance p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final processSideEffects(Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)V
    .locals 11

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;

    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;->command:Lcom/motorola/camera/background/common/msg/MsgParameters;

    iget v3, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->caller:I

    iget p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;->calleeId:I

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->procIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v6, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->type:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v5, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-object v7, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->msg:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->retCode:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-interface/range {v2 .. v7}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callProcessMsg, dead object for remote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    instance-of v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessJob;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessJob;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessJob;->jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->callWorker(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lcom/motorola/camera/background/common/msg/MsgType;)V

    return-void

    :cond_3
    instance-of v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessCtlMsg;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessCtlMsg;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessCtlMsg;->jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_CTL_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->callWorker(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lcom/motorola/camera/background/common/msg/MsgType;)V

    return-void

    :cond_4
    instance-of v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;

    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;->ackCommand:Lcom/motorola/camera/background/common/msg/MsgParameters;

    iget v3, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->caller:I

    iget p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;->calleeId:I

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-eqz p0, :cond_5

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->procIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    :cond_5
    move-object v2, v1

    if-eqz v2, :cond_12

    :try_start_1
    iget-object v6, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->type:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v5, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-object v7, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->msg:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->retCode:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-interface/range {v2 .. v7}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processCtlMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object p0, v0

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callProcessCtlMsg, dead object for remote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_6
    instance-of v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;

    iget-wide v2, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;->key:J

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;->taskId:Lcom/motorola/camera/background/common/TaskId;

    const-string/jumbo v0, "taskId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz p1, :cond_7

    monitor-enter p1

    :try_start_2
    invoke-static {p1, v2, v3}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_removeResources$default(Lcom/motorola/camera/background/service/jms/JobDatabase;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->updateProgress(I)V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v3, 0x1

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v0, :cond_11

    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;

    invoke-direct {v5, v4, v0, v1}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/motorola/camera/background/service/jms/JobDatabase;Lkotlin/coroutines/Continuation;)V

    invoke-static {v5}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    iget v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v0, :cond_11

    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->cancelKeepAliveJob()V

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v0, :cond_9

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_removeInvalidJobs(J)V

    :cond_9
    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-ne v0, v3, :cond_a

    goto/16 :goto_a

    :cond_a
    sget-object v0, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v5, Lcom/motorola/camera/background/provider/FileDataContract;->isForegroundProcessingEnabled:Z

    if-eqz v5, :cond_b

    sget-object v5, Lcom/motorola/camera/background/provider/FileDataContract;->IN_MEMORY_CONTENT_URI:Landroid/net/Uri;

    goto :goto_3

    :cond_b
    sget-object v5, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    :goto_3
    const-string v6, "id"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_c

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_c
    move-object v5, v1

    :goto_4
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_d

    goto :goto_7

    :cond_d
    :goto_5
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "id"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :goto_6
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object p1, v0

    invoke-static {v4, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_e
    :goto_7
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/motorola/camera/background/provider/FileDataContract;->deleteData(Landroid/content/Context;J)I

    goto :goto_8

    :cond_f
    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->getBasePathFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lkotlin/io/FileWalkDirection;->TOP_DOWN:Lkotlin/io/FileWalkDirection;

    new-instance v4, Lkotlin/io/FileTreeWalk;

    invoke-direct {v4, v0, v1}, Lkotlin/io/FileTreeWalk;-><init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V

    new-instance v0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

    invoke-direct {v0, v4}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;-><init>(Lkotlin/io/FileTreeWalk;)V

    :cond_10
    :goto_9
    invoke-virtual {v0}, Lkotlin/collections/AbstractIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lkotlin/collections/AbstractIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_9

    :cond_11
    :goto_a
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz p0, :cond_12

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-ne p0, v3, :cond_12

    invoke-virtual {p1, v2}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->updateProgress(I)V

    monitor-enter p1

    :try_start_6
    iget-object p0, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->serviceHandle:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/background/service/jms/JobMgrService;->internalStopSelf(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit p1

    return-void

    :catchall_3
    move-exception v0

    move-object p0, v0

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :cond_12
    return-void

    :cond_13
    sget-object p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown effect "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
