.class public final synthetic Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->autoCaptureUpdateJob:Lkotlinx/coroutines/StandaloneCoroutine;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$autoCaptureSettingListener$1$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$autoCaptureSettingListener$1$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;Lcom/motorola/camera/settings/Setting;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v0, v1, v1, v2, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->autoCaptureUpdateJob:Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
