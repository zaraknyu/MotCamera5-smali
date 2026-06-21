.class public final Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$CropEditDialog$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$CropEditDialog$2$1$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$CropEditDialog$2$1$1;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$CropEditDialog$2$1$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$CropEditDialog$2$1$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$CropEditDialog$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$CropEditDialog$2$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$CropEditDialog$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$CropEditDialog$2$1$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    iget-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lh/C;->getCurrentPageIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lh/C;->getPage(I)Lh/F;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->initialCropState:Lh/D;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lh/F;->setCrop(Lh/D;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    const-string p0, "scanSession"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
