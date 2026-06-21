.class public final synthetic Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

.field public final synthetic f$1:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

.field public final synthetic f$2:Lcom/motorola/camera/PermissionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/motorola/camera/PermissionCallback;I)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$1:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$2:Lcom/motorola/camera/PermissionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxDstClientJobComplete;

    check-cast p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;

    const-string v0, "$this$on"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;->jobResult:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v2, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iget-object v4, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-object v5, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    sget-object v3, Lcom/motorola/camera/background/common/ReturnCode;->CANCELED:Lcom/motorola/camera/background/common/ReturnCode;

    iget-object v6, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->resultDescription:Ljava/lang/String;

    new-instance v1, Lcom/motorola/camera/background/common/msg/MsgParameters;

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    new-instance p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;

    iget v0, v4, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-direct {p2, v0, v1}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;-><init>(ILcom/motorola/camera/background/common/msg/MsgParameters;)V

    iget-wide v0, v4, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMarkForDelete(J)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE$1:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$1:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iput-object v0, v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_common/zziu;

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$2:Lcom/motorola/camera/PermissionCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, p2}, Lcom/motorola/camera/PermissionCallback;->transitionTo(Ljava/lang/Object;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;

    check-cast p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;

    const-string v0, "$this$on"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;->jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget-object v4, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    sget-object v3, Lcom/motorola/camera/background/common/ReturnCode;->CANCELED:Lcom/motorola/camera/background/common/ReturnCode;

    iget v7, v4, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    new-instance v1, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;

    invoke-direct {v1}, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;-><init>()V

    sget-object v2, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v5, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params$Companion;

    invoke-virtual {v5}, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v2, v5, v1}, Lkotlinx/serialization/json/Json$Default;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lcom/motorola/camera/background/common/msg/MsgParameters;

    sget-object v8, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v2, v8, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v5, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    new-instance v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;

    invoke-direct {v2, v7, v1}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;-><init>(ILcom/motorola/camera/background/common/msg/MsgParameters;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v6, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    new-instance v1, Lcom/motorola/camera/background/common/msg/MsgParameters;

    iget v2, v8, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    new-instance p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;

    iget v2, v4, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-direct {p2, v2, v1}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;-><init>(ILcom/motorola/camera/background/common/msg/MsgParameters;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v1, v4, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    invoke-virtual {p2, v1, v2}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMarkForDelete(J)V

    sget-object p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$1:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iput-object p2, v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_common/zziu;

    sget-object p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;

    new-instance v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;

    invoke-direct {v1, v0}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;-><init>(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$2:Lcom/motorola/camera/PermissionCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, v1}, Lcom/motorola/camera/PermissionCallback;->transitionTo(Ljava/lang/Object;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;

    check-cast p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;

    const-string v0, "$this$on"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;->jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget-object v5, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v8, v5, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget-object v10, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v11, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    sget-object v4, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    new-instance v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessJob;

    invoke-direct {v2, v1}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessJob;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->retryReason:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetryReason;

    if-nez v1, :cond_0

    iget v1, v5, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    new-instance v2, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;

    invoke-direct {v2}, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;-><init>()V

    sget-object v3, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v6, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params$Companion;

    invoke-virtual {v6}, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v3, v6, v2}, Lkotlinx/serialization/json/Json$Default;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v2, Lcom/motorola/camera/background/common/msg/MsgParameters;

    sget-object v3, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v3, v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v6, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;

    invoke-direct {v3, v1, v2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;-><init>(ILcom/motorola/camera/background/common/msg/MsgParameters;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget p2, p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;->callerId:I

    iget-object v6, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    move-object v12, v4

    move-wide v7, v8

    move v9, p2

    invoke-virtual/range {v6 .. v12}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMsgInfo(JILcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V

    sget-object p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$1:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iput-object p2, v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_common/zziu;

    sget-object p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;

    new-instance v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;

    invoke-direct {v1, v0}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;-><init>(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$2:Lcom/motorola/camera/PermissionCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, v1}, Lcom/motorola/camera/PermissionCallback;->transitionTo(Ljava/lang/Object;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;

    check-cast p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;

    const-string v0, "$this$on"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;->jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget-object v0, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v0, v0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    new-instance v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessCtlMsg;

    invoke-direct {v2, p2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessCtlMsg;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)V

    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    invoke-virtual {p2, v0, v1}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMarkForDelete(J)V

    sget-object p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE$1:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$1:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iput-object p2, v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_common/zziu;

    sget-object p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxDstClientJobComplete;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxDstClientJobComplete;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$2:Lcom/motorola/camera/PermissionCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, v2}, Lcom/motorola/camera/PermissionCallback;->transitionTo(Ljava/lang/Object;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;

    check-cast p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;

    const-string v0, "$this$on"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;->jobResult:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    iget-object v4, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-object v6, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->resultDescription:Ljava/lang/String;

    iget-object v5, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-wide v7, v4, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    sget-object v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v2, v1, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->result:Lcom/motorola/camera/background/common/ReturnCode;

    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->CANCELED:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    :goto_1
    new-instance v1, Lcom/motorola/camera/background/common/msg/MsgParameters;

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;

    iget v2, v4, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;-><init>(ILcom/motorola/camera/background/common/msg/MsgParameters;)V

    iget p2, p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;->callerId:I

    move-object v9, v5

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    move-object v11, v3

    move-object v10, v6

    move-wide v6, v7

    move v8, p2

    invoke-virtual/range {v5 .. v11}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMsgInfo(JILcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V

    sget-object p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE$1:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$1:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iput-object p2, v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_common/zziu;

    sget-object p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$2:Lcom/motorola/camera/PermissionCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, v0}, Lcom/motorola/camera/PermissionCallback;->transitionTo(Ljava/lang/Object;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;

    check-cast p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;

    const-string v0, "$this$on"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;->jobResult:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v3, v1, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget-object v6, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    sget-object v8, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    iget-object v7, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->resultDescription:Ljava/lang/String;

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;

    invoke-direct {v0, v3, v4, v1}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;-><init>(JLcom/motorola/camera/background/common/TaskId;)V

    iget v5, p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;->callerId:I

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMsgInfo(JILcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V

    sget-object p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE$2:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$1:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iput-object p2, v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_common/zziu;

    sget-object p2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;->f$2:Lcom/motorola/camera/PermissionCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, v0}, Lcom/motorola/camera/PermissionCallback;->transitionTo(Ljava/lang/Object;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
