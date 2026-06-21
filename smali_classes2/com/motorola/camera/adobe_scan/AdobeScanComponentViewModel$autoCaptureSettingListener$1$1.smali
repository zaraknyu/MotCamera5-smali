.class public final Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$autoCaptureSettingListener$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $setting:Lcom/motorola/camera/settings/Setting;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;Lcom/motorola/camera/settings/Setting;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$autoCaptureSettingListener$1$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    iput-object p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$autoCaptureSettingListener$1$1;->$setting:Lcom/motorola/camera/settings/Setting;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$autoCaptureSettingListener$1$1;

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$autoCaptureSettingListener$1$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$autoCaptureSettingListener$1$1;->$setting:Lcom/motorola/camera/settings/Setting;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$autoCaptureSettingListener$1$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;Lcom/motorola/camera/settings/Setting;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$autoCaptureSettingListener$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$autoCaptureSettingListener$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$autoCaptureSettingListener$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$autoCaptureSettingListener$1$1;->label:I

    iget-object v2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$autoCaptureSettingListener$1$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->setCanShowBoundaryHint(Z)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ADOBE_AUTO_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object v1, v2, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->isAutoCapture$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iput v3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$autoCaptureSettingListener$1$1;->label:I

    const-wide/16 v4, 0xdac

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->setCanShowBoundaryHint(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
