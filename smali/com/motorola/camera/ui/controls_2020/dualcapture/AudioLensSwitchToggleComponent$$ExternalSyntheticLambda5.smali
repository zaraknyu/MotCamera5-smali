.class public final synthetic Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    const v1, 0x7f120593

    const v2, 0x7f080114

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->pipWindowButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->cancelAnimation()V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->updateAudioLensSwitchButtonVisibility(I)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->isAudioLensSwitchAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->updateAudioLensSwitchButtonVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->pipWindowButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->pipWindowButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->pipWindowButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->pipWindowSetting:Lcom/motorola/camera/settings/Setting;

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH_PIP_WINDOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->toggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->audioLensSwitchSetting:Lcom/motorola/camera/settings/Setting;

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->setupAudioLensSwitchDrawable(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchEnabled()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_AUDIO_LENS_SWITCH_FIRST_TIME_USE:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_6
    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->audioLensSwitchSetting:Lcom/motorola/camera/settings/Setting;

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->setupAudioLensSwitchDrawable(Z)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    if-nez v1, :cond_f

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_LAYOUT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_CAMERA_GROUP_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_PREVIEW_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Lcom/motorola/camera/settings/CameraType;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/settings/CameraType;

    const-string v9, "DUAL_CAPTURE_PREVIEW_TYPE"

    const/4 v10, 0x2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v11, :cond_a

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v3, :cond_a

    if-nez v6, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v3, :cond_a

    sget-object v11, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v7, v11, :cond_a

    sget-object v11, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v8, v11, :cond_a

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "DUAL_CAPTURE_PREVIEW_SWAP_TRIGGER_BY_BUTTON"

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v4, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v6, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_PREVIEW_SWAP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v4, v6, v2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    :goto_1
    if-nez v2, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_e

    if-nez v4, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_e

    if-nez v6, :cond_d

    goto :goto_2

    :cond_d
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v10, :cond_e

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v7, v2, :cond_e

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-eq v8, v2, :cond_f

    :cond_e
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "MODE"

    invoke-virtual {v4, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const-string v6, "MODE_DIRECTION"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "USE_CASE"

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "DUAL_CAPTURE_LAYOUT_TYPE"

    invoke-virtual {v4, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "DUAL_CAPTURE_CAMERA_GROUP_TYPE"

    invoke-virtual {v4, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "DUAL_CAPTURE_CAMERA_TYPE_MASTER"

    sget-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "DUAL_CAPTURE_CAMERA_TYPE_FRONT"

    sget-object v6, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v6, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v6, v7, v4, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {v2, v6}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move v5, v3

    :cond_f
    :goto_3
    const-string v2, "DUAL_CAPTURE_AUDIO_LENS_SWITCH_MODE_CHANGE"

    invoke-static {v2, v5}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v6, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v4, v6, v2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->audioLensSwitchButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v1, :cond_10

    const v1, 0x7f120591

    goto :goto_4

    :cond_10
    const v1, 0x7f120590

    :goto_4
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_11
    if-nez v5, :cond_12

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    :cond_12
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->pipWindowSetting:Lcom/motorola/camera/settings/Setting;

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->pipWindowButton:Landroid/widget/ImageButton;

    if-eqz v6, :cond_13

    iget-object v7, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setSelected(Z)V

    :cond_13
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->pipWindowButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-nez v4, :cond_14

    goto :goto_5

    :cond_14
    const v1, 0x7f120592

    :goto_5
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_15
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->pipWindowSetting:Lcom/motorola/camera/settings/Setting;

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_6

    :cond_16
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH_PIP_WINDOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_6
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    :cond_17
    return-void

    :pswitch_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    return-void

    :pswitch_6
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->updateAudioLensSwitchButtonVisibility(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->pipWindowButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_18

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->pipWindowButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_19

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    return-void

    :pswitch_8
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->updateAudioLensSwitchButtonVisibility(I)V

    return-void

    :pswitch_9
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->updateAudioLensSwitchButtonVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->pipWindowButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void

    :pswitch_a
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->cancelAnimation()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    :cond_1b
    return-void

    :pswitch_b
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->updateAudioLensSwitchButtonVisibility(I)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->audioLensSwitchButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    const v3, 0x7f070588

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1c
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->pipWindowButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
