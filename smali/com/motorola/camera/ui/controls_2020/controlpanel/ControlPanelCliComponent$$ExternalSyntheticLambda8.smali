.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlpanel/MultiLineFlexboxLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iput v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_3
    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    rsub-int p0, p0, 0x168

    int-to-float p0, p0

    const/4 v3, 0x0

    sub-float/2addr p0, v3

    cmpg-float v4, p0, v3

    const/high16 v5, 0x43b40000    # 360.0f

    if-gez v4, :cond_4

    add-float/2addr p0, v5

    :cond_4
    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v4, p0, v4

    if-lez v4, :cond_5

    sub-float/2addr p0, v5

    :cond_5
    add-float/2addr v3, p0

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->setRotation(F)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p0, Lcom/motorola/camera/ui/controls_2020/SpaceAroundItemDecorator;

    invoke-direct {p0, v1}, Lcom/motorola/camera/ui/controls_2020/SpaceAroundItemDecorator;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_2

    :cond_6
    new-instance p0, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;-><init>(II)V

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :goto_2
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->show()V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->hide()V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "IS_SELECTED"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->hide()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
