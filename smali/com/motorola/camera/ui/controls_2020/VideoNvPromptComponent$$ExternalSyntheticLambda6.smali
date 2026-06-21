.class public final synthetic Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->updateVisible(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->isDisableSuggestionNeeded:Z

    const/16 v1, 0x64

    const/high16 v2, 0x43fa0000    # 500.0f

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->isDisableSuggestionNeeded:Z

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->lux:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->isDisableAgainSuggestionNeeded:Z

    :cond_0
    int-to-float p1, v1

    add-float/2addr v0, p1

    rem-float p1, v0, p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->nextDisableShowLux:F

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->isDisableAgainSuggestionNeeded:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->lux:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->isDisableAgainSuggestionNeeded:Z

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->nextDisableShowLux:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    int-to-float v0, v1

    add-float/2addr p1, v0

    rem-float v0, p1, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->nextDisableShowLux:F

    goto :goto_0

    :cond_3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->isEnableSuggestionNeeded:Z

    :cond_4
    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_6

    move v3, v2

    :cond_6
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "PREVIOUS_VALUE"

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SETTING"

    iget-object v5, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MODE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5, v4}, Lcom/motorola/camera/settings/SettingsManager;->updateTenBitModeSwitchCase(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    iput v3, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->wasVideoNvSuggestionUsed:I

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CONTROL_PANEL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v1, v4, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p1, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValueToToastResMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/16 p0, 0xbb8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    invoke-static {v1, p1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
