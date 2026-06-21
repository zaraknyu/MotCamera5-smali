.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->updateIconsVisibility$2(Z)V

    :cond_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->reset$1$1()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->colorPicker:Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->colorPicker:Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_4

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->colorPicker:Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    monitor-enter v0

    :try_start_0
    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->state:I

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->resetColorPickerPosition(Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_6
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->updateIconsVisibility$2(Z)V

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
