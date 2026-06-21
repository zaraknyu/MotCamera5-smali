.class public final synthetic Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->LISTENED_VISIBILITY_NOTIFIERS:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->otherComponentsVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;-><init>(Ljava/util/List;Ljava/lang/ref/WeakReference;)V

    return-object v0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_0

    const v0, 0x7f0a03c1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_1

    const v0, 0x7f0a03c3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_2

    const v0, 0x7f0a03c5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_3

    const v0, 0x7f0a03c2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
