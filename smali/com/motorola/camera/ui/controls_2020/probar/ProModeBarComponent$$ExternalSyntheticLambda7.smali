.class public final synthetic Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isZoomSliderSliderState()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->checkAllValues()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mResetButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mResetButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
