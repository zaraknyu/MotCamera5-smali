.class public final synthetic Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mProPanel:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->cancelAnimation()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->cancelAnimation()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isShowControlPanel()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->allowVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_5
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeAuto()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isISOAuto()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAdapter:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_6
    sget v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mProPanel:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mResetButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->notifyProModeSlider(Ljava/lang/Boolean;)V

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_a

    :goto_2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    sget v2, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    iget-object v2, v2, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeAuto()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    sget v2, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isISOAuto()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_b
    sget v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateSeekBarLayout(I)V

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mProPanel:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isZoomSliderSliderState()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->checkAllValues()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mResetButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_e
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mResetButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    :goto_3
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isZoomSliderSliderState()Z

    move-result p0

    if-nez p0, :cond_10

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->notifyProModeSlider(Ljava/lang/Boolean;)V

    :cond_10
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
