.class public final Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$startAdobeEditorActivity$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$startAdobeEditorActivity$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$startAdobeEditorActivity$1;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$startAdobeEditorActivity$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$startAdobeEditorActivity$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$startAdobeEditorActivity$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$startAdobeEditorActivity$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$startAdobeEditorActivity$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$startAdobeEditorActivity$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
