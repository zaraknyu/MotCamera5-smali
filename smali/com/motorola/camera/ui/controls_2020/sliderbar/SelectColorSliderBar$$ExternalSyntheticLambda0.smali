.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;ZI)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->colorPicker:Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->getSwatchColor()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12057d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12057e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v3, "getValue(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;->f$1:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->showSliderBar()V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->showToggle()V

    :goto_1
    if-eqz p0, :cond_9

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v2

    :cond_4
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->notifyModeComponent(Z)V

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    const/4 v3, 0x4

    if-eqz v1, :cond_6

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->seekText:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->seekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    if-eqz p0, :cond_9

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->notifyModeComponent(Z)V

    :cond_9
    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_a
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    const/4 v3, 0x4

    if-eqz v1, :cond_b

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->seekText:Landroid/widget/TextView;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->seekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_d

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;->f$1:Z

    if-eqz p0, :cond_e

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->notifyModeComponent(Z)V

    :cond_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
