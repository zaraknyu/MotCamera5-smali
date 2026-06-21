.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->portraitBokehModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;->getBokehLevel()I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->bokehMaxLevel:I

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->bokehMinLevel:I

    if-gt v1, v3, :cond_2

    if-ge v3, v2, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMin(I)V

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->bokehMaxLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->modeChanged:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->showToggle()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->showSliderBar()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->showToggle()V

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v2

    :cond_7
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->notifyModeComponent(Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->modeChanged:Z

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    :cond_8
    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekBar:Landroid/widget/SeekBar;

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_9
    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->updateIconsVisibility$1$1()V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
