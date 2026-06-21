.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;ZI)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda18;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda18;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda18;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda18;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_PHOTO_LIVE_FILTER:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda18;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    iget-object v4, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v4, :cond_5

    iget-boolean v5, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->videoRecording:Z

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-boolean v0, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->modeChanged:Z

    if-eqz v0, :cond_8

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda18;->f$1:Z

    if-eqz p0, :cond_6

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->showSliderBar()V

    goto :goto_3

    :cond_6
    iget-object p0, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_7
    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->showToggle()V

    goto :goto_3

    :cond_8
    iget-object p0, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-ne p0, v1, :cond_9

    invoke-virtual {v3}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->cancelAnimation()V

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->showSliderBar()V

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->showToggle()V

    :goto_3
    iget-object p0, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v2

    :cond_a
    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->notifyModeComponent(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda18;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarMarginDimen()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v4

    const v5, 0x7f070588

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda18;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->changeRecycleViewSize(Z)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->changeResetPosition(Z)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->changeTextStyle(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
