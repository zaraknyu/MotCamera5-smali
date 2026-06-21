.class public Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final m3A:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->$r8$classId:I

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->m3A:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p2, Landroid/os/Bundle;

    const-string p1, "CAPTURE_TRIGGER"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->STYLUS:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCaptureAllowed()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    const-string p1, "TIMER"

    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p2, v0, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v0, p2

    :goto_2
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->m3A:I

    invoke-static {p0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p0

    if-eqz p0, :cond_6

    if-eq p0, p2, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    :goto_3
    move v1, p2

    :cond_7
    :goto_4
    return v1

    :pswitch_0
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisableRoiMode(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->AF_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->m3A:I

    invoke-static {p0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p0

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v1, 0x2

    if-eq p0, v1, :cond_a

    const/4 v1, 0x3

    if-ne p0, v1, :cond_9

    if-nez p2, :cond_c

    if-nez p1, :cond_c

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw p0

    :cond_a
    if-eqz p2, :cond_c

    if-nez p1, :cond_c

    goto :goto_5

    :cond_b
    if-nez p1, :cond_c

    :goto_5
    move p1, v0

    goto :goto_7

    :cond_c
    :goto_6
    const/4 p1, 0x0

    :cond_d
    :goto_7
    return p1

    :pswitch_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result p1

    if-eqz p1, :cond_e

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->m3A:I

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_8

    :cond_e
    const/4 p0, 0x0

    :goto_8
    return p0

    :pswitch_2
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->m3A:I

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p0

    return p0

    :pswitch_3
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "CAPTURE_TYPE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SHOULD_EXIT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_f

    move p1, v0

    goto :goto_a

    :cond_f
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->REPROC:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-eq p1, p2, :cond_11

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->MCF:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-ne p1, p2, :cond_10

    goto :goto_9

    :cond_10
    const/4 p1, 0x2

    goto :goto_a

    :cond_11
    :goto_9
    const/4 p1, 0x3

    :goto_a
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->m3A:I

    if-ne p0, p1, :cond_12

    move v1, v0

    :cond_12
    return v1

    :pswitch_4
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "CAPTURE_TYPE"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    const-string v0, "REVIEW_REQUIRED"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_13

    move p1, v0

    goto :goto_c

    :cond_13
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->REPROC:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-eq p1, p2, :cond_15

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->MCF:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-ne p1, p2, :cond_14

    goto :goto_b

    :cond_14
    const/4 p1, 0x2

    goto :goto_c

    :cond_15
    :goto_b
    const/4 p1, 0x3

    :goto_c
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->m3A:I

    if-ne p0, p1, :cond_16

    move v1, v0

    :cond_16
    return v1

    :pswitch_5
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "ENABLE"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const-string v1, "ROI_TARGET_LOCATION"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    const-string v2, "LOCATION"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    const/4 v3, 0x1

    if-eqz v2, :cond_17

    invoke-virtual {v2, v1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_17
    const-string v1, "ROI_TARGET_WIDTH"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "ROI_WIDTH"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_19

    const-string v1, "ROI_TARGET_HIGHT"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "ROI_HIGHT"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_19

    const-string v1, "ROI_TARGET_WEIGHT"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "ROI_WEIGHT"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq v1, p1, :cond_18

    goto :goto_d

    :cond_18
    move p1, v0

    goto :goto_e

    :cond_19
    :goto_d
    move p1, v3

    :goto_e
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->m3A:I

    if-ne v3, p0, :cond_1a

    if-nez p1, :cond_1c

    :cond_1a
    const/4 v1, 0x2

    if-ne v1, p0, :cond_1b

    if-eqz p2, :cond_1b

    if-eqz p1, :cond_1c

    :cond_1b
    const/4 v1, 0x3

    if-ne v1, p0, :cond_1d

    if-nez p2, :cond_1d

    if-nez p1, :cond_1d

    :cond_1c
    move v0, v3

    :cond_1d
    return v0

    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->canTransition$1(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_7
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->m3A:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    if-ne p0, p1, :cond_1e

    const/4 p0, 0x1

    goto :goto_f

    :cond_1e
    const/4 p0, 0x0

    :goto_f
    return p0

    :pswitch_8
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->m3A:I

    invoke-static {p0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p0, :cond_22

    if-eq p0, p2, :cond_21

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 p2, 0x3

    if-eq p0, p2, :cond_1f

    goto :goto_11

    :cond_1f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkIsp6S3ALib()Z

    move-result p1

    goto :goto_11

    :cond_20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->get3ALibType()I

    move-result p0

    if-ne p0, v0, :cond_23

    :goto_10
    move p1, p2

    goto :goto_11

    :cond_21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->get3ALibType()I

    move-result p0

    if-ne p0, p2, :cond_23

    goto :goto_10

    :cond_22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->get3ALibType()I

    move-result p0

    if-nez p0, :cond_23

    goto :goto_10

    :cond_23
    :goto_11
    return p1

    :pswitch_data_0
    .packed-switch 0x0
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

.method public canTransition$1(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 1

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->m3A:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    iget-boolean v0, p2, Lcom/motorola/camera/PermissionsManager;->mMissingCriticalPermissions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    const/4 p2, 0x2

    if-ne p0, p2, :cond_2

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    monitor-enter p0

    :try_start_2
    iget-boolean p2, p0, Lcom/motorola/camera/PermissionsManager;->mMissingCriticalPermissions:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    if-nez p2, :cond_2

    :cond_1
    return p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
