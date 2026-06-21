.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzki;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static toggleRatioAndDispatch(Lcom/motorola/camera/EventListener;)V
    .locals 5

    const-string v0, "mEventHandler"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    check-cast v2, Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-nez v2, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    return-void

    :cond_1
    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_RECTANGLE9V22:Lcom/motorola/camera/PreviewSize$AspectRatio;

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_RECTANGLE22V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_RECTANGLE9V16:Lcom/motorola/camera/PreviewSize$AspectRatio;

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    :goto_1
    invoke-static {v0, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "PREVIOUS_VALUE"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SETTING"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MODE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v1, v3, v0}, Lcom/motorola/camera/settings/SettingsManager;->updateTenBitModeSwitchCase(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CONTROL_PANEL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
