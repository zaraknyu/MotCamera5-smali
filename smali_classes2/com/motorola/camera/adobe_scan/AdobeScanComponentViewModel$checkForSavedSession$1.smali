.class public final Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$checkForSavedSession$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$checkForSavedSession$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$checkForSavedSession$1;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$checkForSavedSession$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$checkForSavedSession$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$checkForSavedSession$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$checkForSavedSession$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$checkForSavedSession$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->hasOngoingScanSession()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->hasOngoingScanSession()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getSavedSessionState()Lh/q;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->fileManager:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    iget-object p1, p1, Lh/q;->c:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->hasAllExpectedTempImages(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$checkForSavedSession$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->showResumeSavedSessionDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->checkInitialState()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
