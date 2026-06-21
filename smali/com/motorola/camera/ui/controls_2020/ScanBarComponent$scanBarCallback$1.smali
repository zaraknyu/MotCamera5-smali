.class public final Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    iget v1, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mSource:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->MotoMonopoly:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    if-ne v1, v3, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    invoke-static {v3, p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->isSameTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;Lcom/motorola/camera/detector/results/tidbit/Tidbit;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getAllActions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v2, :cond_4

    goto :goto_3

    :cond_4
    iget-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->isOtherComponentVisible:Z

    if-nez v3, :cond_7

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->AUTO_LAUNCH_DATA:Ljava/util/List;

    iget-object v3, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->executePrimaryAction(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;

    const/16 v3, 0x9

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    sget-wide v3, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->QR_CODE_TIMEOUT:J

    invoke-virtual {v0, v1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    const-string v0, "IS_SELECTED"

    invoke-static {v0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SCAN_BAR_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object p0, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->GoogleMatter:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p0

    invoke-virtual {p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getPrimaryAction()Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logTidbitAction(Lcom/motorola/camera/detector/results/tidbit/Tidbit;Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V

    :cond_7
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onUpdatedTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getFieldsCount()I

    move-result v1

    iget-object v0, v0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getFieldsCount()I

    move-result v0

    if-le v1, v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
