.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleJobComplete$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleJobComplete$1;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleJobComplete$1;

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleJobComplete$1;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleJobComplete$1;-><init>(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleJobComplete$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleJobComplete$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleJobComplete$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleJobComplete$1;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v4, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_CTL_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v3, Lcom/motorola/camera/background/common/TaskId;

    const/4 p0, 0x0

    invoke-direct {v3, p0}, Lcom/motorola/camera/background/common/TaskId;-><init>(I)V

    const-string v5, ""

    sget-object v2, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    const/4 v1, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processCtlMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
