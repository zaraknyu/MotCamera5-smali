.class public final Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget p1, Lcom/motorola/camera/background/service/jms/JobMgrService;->$r8$clinit:I

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/shared/McfUtil;->readMcfConfig(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mImplIntf:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    const/4 v3, 0x0

    const-string v4, "mImplIntf"

    if-eqz v2, :cond_5

    invoke-interface {v2, p1, v1}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->initialize(Ljava/lang/String;[B)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p1

    iget-object v1, p0, Lcom/motorola/camera/background/common/ServiceBase;->TAG:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->restartedByAndroid:Z

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mImplIntf:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->numPendingJobs()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initializeSelf, return code is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", restarted as fallback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pendingJobs: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->internalStopSelf(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->PENDING_JOBS:Lcom/motorola/camera/background/common/ReturnCode;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->startForegroundService()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->FAILED_TRANSACTION:Lcom/motorola/camera/background/common/ReturnCode;

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->restartedByAndroid:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mImplIntf:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->numPendingJobs()I

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method
