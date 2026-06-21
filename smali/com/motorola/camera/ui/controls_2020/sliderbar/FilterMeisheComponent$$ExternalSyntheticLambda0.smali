.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filtersRecycler:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->disableScroll:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->changeScrollState(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->captureAndFilter:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->captureAndFilter:Z

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filtersRecycler:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filtersRecycler:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->changeScrollState(Z)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->resetButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->captureAndFilter:Z

    :cond_4
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->stateShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheOriginalFilter()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->onButtonControlClick(Z)V

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->animateHide()V

    :cond_6
    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->show()V

    return-void

    :pswitch_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->animateTextView$1()V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->microsoftCopilot:Landroid/view/View;

    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void

    :pswitch_5
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->stateShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->onButtonControlClick(Z)V

    :cond_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->hide()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-static {v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->enableTapPreview(Z)V

    return-void

    :pswitch_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->cancelAnimation()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->hide()V

    return-void

    :pswitch_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->hide()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoOn()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheOriginalFilter()Z

    move-result p0

    if-nez p0, :cond_9

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "Original"

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_PHOTO_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_9
    return-void

    :pswitch_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheOriginalFilter()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->videoRecording:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->hide()V

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->showToggle()V

    :goto_0
    return-void

    :pswitch_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->updateIconsVisibility(Z)V

    return-void

    :pswitch_a
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->videoRecording:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->hide()V

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->cancelAnimation()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->show()V

    :goto_1
    return-void

    :pswitch_b
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->animateTextView$1()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->resetButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheOriginalFilter()Z

    move-result v0

    if-eqz v0, :cond_e

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_e
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_f
    return-void

    :pswitch_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->modeChanged:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->showSliderWhileModeSwitch:Z

    return-void

    :pswitch_d
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarMarginDimen()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    return-void

    :pswitch_e
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->hide()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
