.class public final synthetic Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->isSliderBarSelected:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->isSliderBarSelected:Z

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_1

    const v0, 0x7f0a02d6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_2

    const v0, 0x7f0a02cf

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_3

    const v0, 0x7f0a02d0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return-object p0

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_4

    const v0, 0x7f0a02d5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    :goto_4
    return-object p0

    :pswitch_5
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->isControlPanelOpen:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->canShow()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->isControlPanelOpen:Z

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_6

    const v0, 0x7f0a02d4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_5

    :cond_6
    const/4 p0, 0x0

    :goto_5
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
