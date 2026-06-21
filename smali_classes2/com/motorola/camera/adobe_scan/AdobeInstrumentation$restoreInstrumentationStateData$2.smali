.class public final Lcom/motorola/camera/adobe_scan/AdobeInstrumentation$restoreInstrumentationStateData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p0, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation$restoreInstrumentationStateData$2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation$restoreInstrumentationStateData$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation$restoreInstrumentationStateData$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation$restoreInstrumentationStateData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->readDataFromJson()Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->getRetakeCount()I

    move-result p1

    sput p1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->retakeCount:I

    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->getDownloadDialogAction()I

    move-result p1

    sput p1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->downloadDialogAction:I

    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->getHasFullyScrolled()Z

    move-result p1

    sput-boolean p1, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->hasFullyScrolled:Z

    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/SessionInstrumentationData;->getDataList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lcom/motorola/camera/adobe_scan/AdobeInstrumentation;->instrumentationData:Ljava/util/ArrayList;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
