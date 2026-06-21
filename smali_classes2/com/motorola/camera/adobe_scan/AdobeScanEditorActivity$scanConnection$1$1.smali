.class public final Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $scanAppResult:Lcom/adobe/scan/sdk/ScanAppConnection$Result;

.field public L$0:Lkotlinx/coroutines/StandaloneCoroutine;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lcom/adobe/scan/sdk/ScanAppConnection$Result;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    iput-object p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;->$scanAppResult:Lcom/adobe/scan/sdk/ScanAppConnection$Result;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;->$scanAppResult:Lcom/adobe/scan/sdk/ScanAppConnection$Result;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lcom/adobe/scan/sdk/ScanAppConnection$Result;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;->L$0:Lkotlinx/coroutines/StandaloneCoroutine;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    new-instance v3, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1$loadBitmapJob$1;

    iget-object v7, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;->$scanAppResult:Lcom/adobe/scan/sdk/ScanAppConnection$Result;

    invoke-direct {v3, v0, v7, v4}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1$loadBitmapJob$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lcom/adobe/scan/sdk/ScanAppConnection$Result;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    invoke-static {p1, v4, v4, v3, v8}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p1

    check-cast v7, Lcom/adobe/scan/sdk/ScanAppConnection$Result$PDFCreated;

    iget-object v3, v7, Lcom/adobe/scan/sdk/ScanAppConnection$Result$PDFCreated;->uniqueID:Ljava/lang/String;

    iput-object v3, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->adobePdfUniqueId:Ljava/lang/String;

    sget-object v3, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->fileManager:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v8, "getApplicationContext(...)"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;->L$0:Lkotlinx/coroutines/StandaloneCoroutine;

    iput v6, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;->label:I

    invoke-virtual {v3, v0, v7, p0}, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->saveScan(Landroid/content/Context;Lcom/adobe/scan/sdk/ScanAppConnection$Result$PDFCreated;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p1

    :goto_0
    iput-object v4, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;->L$0:Lkotlinx/coroutines/StandaloneCoroutine;

    iput v5, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$scanConnection$1$1;->label:I

    invoke-interface {v0, p0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_4

    :goto_1
    return-object v2

    :cond_4
    :goto_2
    iget-object p0, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showSaveLocationDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isSaveFinished$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
