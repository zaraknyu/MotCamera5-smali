.class public final synthetic Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->LISTENED_VISIBILITY_NOTIFIERS:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->otherComponentsVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;-><init>(Ljava/util/List;Ljava/lang/ref/WeakReference;)V

    return-object v0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a03c9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a03c7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
