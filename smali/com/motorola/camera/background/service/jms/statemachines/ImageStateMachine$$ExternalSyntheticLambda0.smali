.class public final synthetic Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

.field public final synthetic f$1:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/motorola/camera/background/service/jms/JobDatabase;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/tinder/StateMachine$Transition;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/tinder/StateMachine$Transition$Valid;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/tinder/StateMachine$Transition$Valid;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, v0, Lcom/tinder/StateMachine$Transition$Valid;->sideEffect:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;

    instance-of v2, v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/tinder/StateMachine$Transition$Valid;

    iget-object p1, p1, Lcom/tinder/StateMachine$Transition$Valid;->sideEffect:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;->commands:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->processSideEffects(Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)V

    goto :goto_1

    :cond_2
    check-cast p1, Lcom/tinder/StateMachine$Transition$Valid;

    iget-object p1, p1, Lcom/tinder/StateMachine$Transition$Valid;->sideEffect:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->processSideEffects(Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)V

    :cond_3
    iget-wide v6, v3, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->jobKey:J

    iget-object p1, v0, Lcom/tinder/StateMachine$Transition$Valid;->toState:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->reverseStateMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, "Unknown"

    :cond_4
    move-object v8, p1

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;-><init>(Lcom/motorola/camera/SecureDataHelper;JLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    sget-object p1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {p1, v1, v1, v4, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/tinder/StateMachine$GraphBuilder;

    const-string v0, "$this$create"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;

    iput-object v0, p1, Lcom/tinder/StateMachine$GraphBuilder;->initialState:Ljava/lang/Object;

    new-instance v0, Lcom/tinder/StateMachine$Matcher;

    const-class v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;

    invoke-direct {v0, v1}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    iget-object v1, p1, Lcom/tinder/StateMachine$GraphBuilder;->stateDefinitions:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/motorola/camera/PermissionCallback;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/motorola/camera/PermissionCallback;-><init>(I)V

    new-instance v3, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    invoke-direct {v3, v5, p0, v2, v4}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/motorola/camera/PermissionCallback;I)V

    new-instance v4, Lcom/tinder/StateMachine$Matcher;

    const-class v6, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;

    invoke-direct {v4, v6}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/PermissionCallback;->on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V

    new-instance v3, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;

    const/4 v4, 0x4

    invoke-direct {v3, v5, p0, v2, v4}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/motorola/camera/PermissionCallback;I)V

    new-instance v4, Lcom/tinder/StateMachine$Matcher;

    const-class v6, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;

    invoke-direct {v4, v6}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/PermissionCallback;->on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V

    iget-object v2, v2, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast v2, Lcom/tinder/StateMachine$Graph$State;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tinder/StateMachine$Matcher;

    const-class v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;

    invoke-direct {v0, v2}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    new-instance v2, Lcom/motorola/camera/PermissionCallback;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/motorola/camera/PermissionCallback;-><init>(I)V

    new-instance v3, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;

    const/4 v4, 0x1

    invoke-direct {v3, v5, p0, v2, v4}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/motorola/camera/PermissionCallback;I)V

    new-instance v4, Lcom/tinder/StateMachine$Matcher;

    const-class v7, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;

    invoke-direct {v4, v7}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/PermissionCallback;->on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V

    new-instance v3, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;

    const/4 v4, 0x2

    invoke-direct {v3, v5, p0, v2, v4}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/motorola/camera/PermissionCallback;I)V

    new-instance v4, Lcom/tinder/StateMachine$Matcher;

    invoke-direct {v4, v6}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/PermissionCallback;->on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V

    iget-object v2, v2, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast v2, Lcom/tinder/StateMachine$Graph$State;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tinder/StateMachine$Matcher;

    const-class v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxDstClientJobComplete;

    invoke-direct {v0, v2}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    new-instance v2, Lcom/motorola/camera/PermissionCallback;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/motorola/camera/PermissionCallback;-><init>(I)V

    new-instance v3, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;

    const/4 v4, 0x5

    invoke-direct {v3, v5, p0, v2, v4}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/motorola/camera/PermissionCallback;I)V

    new-instance v4, Lcom/tinder/StateMachine$Matcher;

    invoke-direct {v4, v7}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/PermissionCallback;->on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V

    iget-object v2, v2, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast v2, Lcom/tinder/StateMachine$Graph$State;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tinder/StateMachine$Matcher;

    const-class v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;

    invoke-direct {v0, v2}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    new-instance v2, Lcom/motorola/camera/PermissionCallback;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/motorola/camera/PermissionCallback;-><init>(I)V

    new-instance v3, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;

    const/4 v4, 0x0

    invoke-direct {v3, v5, p0, v2, v4}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/motorola/camera/PermissionCallback;I)V

    new-instance v4, Lcom/tinder/StateMachine$Matcher;

    invoke-direct {v4, v7}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/PermissionCallback;->on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V

    iget-object v2, v2, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast v2, Lcom/tinder/StateMachine$Graph$State;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tinder/StateMachine$Matcher;

    const-class v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;

    invoke-direct {v0, v2}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    new-instance v2, Lcom/motorola/camera/PermissionCallback;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/motorola/camera/PermissionCallback;-><init>(I)V

    sget-object v3, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE$2:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    iput-object v3, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_common/zziu;

    iget-object v2, v2, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast v2, Lcom/tinder/StateMachine$Graph$State;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tinder/StateMachine$Matcher;

    const-class v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;

    invoke-direct {v0, v2}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    new-instance v2, Lcom/motorola/camera/PermissionCallback;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/motorola/camera/PermissionCallback;-><init>(I)V

    new-instance v3, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    new-instance v4, Lcom/tinder/StateMachine$Matcher;

    invoke-direct {v4, v6}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/PermissionCallback;->on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V

    iget-object v2, v2, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast v2, Lcom/tinder/StateMachine$Graph$State;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/motorola/camera/background/service/jms/JobDatabase;)V

    iget-object p0, p1, Lcom/tinder/StateMachine$GraphBuilder;->onTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
