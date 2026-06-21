.class public final Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$OnVisibilityChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;->this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisibilityChange(Z)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;->this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isOtherComponentVisible:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda5;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isOtherComponentVisible:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda5;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateVisibility$1()V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;->this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->isOtherComponentVisible:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->animateIfVisibilityChanged()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;->this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->isOtherComponentVisible:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->AUTO_LAUNCH_DATA:Ljava/util/List;

    iget-object p1, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
