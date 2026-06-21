.class public final Lcom/motorola/camera/adobe_scan/AdobeSdkManager$saveScanSessionState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public L$0:Ljava/lang/Object;

.field public label:I


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$saveScanSessionState$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$saveScanSessionState$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$saveScanSessionState$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$saveScanSessionState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$saveScanSessionState$1;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$saveScanSessionState$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lh/q;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object p1

    iget-object p1, p1, Lh/C;->a:Lc/h;

    iget-object p1, p1, Lc/h;->i:Lc/u;

    sget-object v1, Lc/t;->a:Lc/t;

    invoke-virtual {p1, v1, v3}, Lc/u;->a(Lkotlin/jvm/functions/Function1;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v5, Lh/q;

    invoke-direct {v5, p1}, Lh/q;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v5, v1

    :goto_0
    if-eqz v5, :cond_5

    sget-object p1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$saveScanSessionState$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$saveScanSessionState$1;->label:I

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v4, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation$saveInstrumentationState$2;

    const/4 v6, 0x2

    invoke-direct {v4, v6, v1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    move-object p0, v5

    :goto_2
    sget-object p1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->fileManager:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    iget-object p0, p0, Lh/q;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->SAVED_STATE_FILE:Ljava/io/File;

    invoke-static {p1, p0}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;)V

    :cond_5
    sget-object p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    invoke-static {v3}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->clearScanSession(Z)V

    return-object v2
.end method
