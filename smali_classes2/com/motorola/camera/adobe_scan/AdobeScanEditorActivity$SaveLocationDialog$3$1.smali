.class public final Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$3$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$3$1;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$3$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$3$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$3$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$3$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isGalleryAvailable:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->fileManager:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    iget-object p1, p1, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->firstCameraData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/CameraData;

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isGalleryAvailable(Lcom/motorola/camera/CameraData;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
