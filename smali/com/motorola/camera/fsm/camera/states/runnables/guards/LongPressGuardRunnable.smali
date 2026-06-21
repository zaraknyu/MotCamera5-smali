.class public final Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mType:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;->$r8$classId:I

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;->mType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 13

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;->$r8$classId:I

    const-string v1, "LOCK_FOCUS_STATE"

    const/4 v2, 0x2

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;->mType:I

    const-string v3, "LOCATION"

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v5, "CAPTURE_TRIGGER"

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->tapAllowed(Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_e

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "TIMER"

    invoke-virtual {p2, v0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_2

    move v8, v7

    goto :goto_1

    :cond_2
    move v8, v6

    :goto_1
    if-ne v7, v5, :cond_3

    move v5, v7

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    if-eqz p2, :cond_4

    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->isTapInPreview(Landroid/graphics/PointF;)Z

    move-result v3

    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->isInAllowedAreaForTapAnyWhere(Landroid/graphics/PointF;)Z

    move-result p2

    goto :goto_3

    :cond_4
    move p2, v6

    move v3, p2

    :goto_3
    invoke-static {p0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p0

    if-eqz p0, :cond_b

    if-eq p0, v7, :cond_9

    if-eq p0, v2, :cond_8

    const/4 p2, 0x3

    if-eq p0, p2, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v4, v1, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isRoiSupported(Z)Z

    move-result p0

    if-eqz p0, :cond_e

    if-eqz v3, :cond_e

    if-eqz v9, :cond_e

    if-eqz v5, :cond_e

    goto :goto_4

    :cond_8
    if-eqz v8, :cond_e

    if-eqz p2, :cond_e

    if-eqz v0, :cond_e

    goto :goto_4

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result p0

    if-eqz p0, :cond_a

    sget-boolean p0, Lcom/motorola/camera/utility/ZoomHelper;->sIsLight:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result p2

    invoke-static {p2, p0}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableAutoFocusTracking(FLcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isRoiSupported(Z)Z

    move-result p0

    if-eqz p0, :cond_e

    if-eqz v3, :cond_e

    if-nez v9, :cond_e

    if-eqz v5, :cond_e

    goto :goto_4

    :cond_b
    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz p0, :cond_c

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    if-nez p0, :cond_d

    :cond_c
    if-eqz v8, :cond_e

    if-eqz p2, :cond_e

    :cond_d
    if-nez v0, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCaptureAllowed()Z

    move-result p0

    if-eqz p0, :cond_e

    :goto_4
    move v6, v7

    :cond_e
    :goto_5
    return v6

    :pswitch_0
    check-cast p2, Landroid/os/Bundle;

    if-nez p2, :cond_11

    invoke-static {p0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    if-eqz v0, :cond_10

    if-eq v0, v7, :cond_f

    if-eq v0, v2, :cond_10

    goto :goto_6

    :cond_f
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_6

    :cond_10
    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p2

    :cond_11
    :goto_6
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentPhotoTypeMode()Z

    move-result v8

    if-nez v8, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v8

    if-eqz v8, :cond_12

    goto :goto_7

    :cond_12
    move v8, v6

    goto :goto_8

    :cond_13
    :goto_7
    move v8, v7

    :goto_8
    if-nez v0, :cond_14

    move v0, v7

    goto :goto_9

    :cond_14
    move v0, v6

    :goto_9
    const-string v9, "LONG_PRESS"

    invoke-virtual {p2, v9, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, "ROI_INNER"

    invoke-virtual {p2, v10, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne v12, v11, :cond_15

    move v11, v7

    goto :goto_a

    :cond_15
    move v11, v6

    :goto_a
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    if-eqz v3, :cond_16

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->isTapInPreview(Landroid/graphics/PointF;)Z

    move-result v12

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->isInAllowedAreaForTapAnyWhere(Landroid/graphics/PointF;)Z

    move-result v3

    goto :goto_b

    :cond_16
    move v3, v6

    move v12, v3

    :goto_b
    invoke-static {p0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p0

    if-eqz p0, :cond_23

    if-eq p0, v7, :cond_1b

    if-eq p0, v2, :cond_17

    goto/16 :goto_12

    :cond_17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result p0

    if-eqz p0, :cond_18

    goto/16 :goto_12

    :cond_18
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isRoiSupported(Z)Z

    move-result p0

    if-eqz p0, :cond_1a

    if-eqz v12, :cond_1a

    if-eqz v9, :cond_1a

    if-nez v10, :cond_1a

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p0

    if-nez p0, :cond_1a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTiltShiftMode()Z

    move-result p0

    if-nez p0, :cond_1a

    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->tapAllowed(Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_19

    sget-object p0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    if-ne p0, p2, :cond_19

    goto :goto_c

    :cond_19
    move v6, v7

    :cond_1a
    :goto_c
    if-eqz v6, :cond_25

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_12

    :cond_1b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result p0

    const/4 p1, 0x6

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    if-nez p1, :cond_1d

    const/16 p1, 0x10

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_d

    :cond_1c
    move p1, v6

    goto :goto_e

    :cond_1d
    :goto_d
    move p1, v7

    :goto_e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeInOverlayState()Z

    move-result v2

    if-nez p1, :cond_1e

    if-eqz v11, :cond_1e

    if-nez v9, :cond_21

    :cond_1e
    if-nez p1, :cond_20

    if-eqz v9, :cond_20

    if-nez v10, :cond_20

    if-eqz v8, :cond_20

    if-eqz v0, :cond_20

    if-eqz v3, :cond_20

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-nez p1, :cond_20

    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->tapAllowed(Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_1f

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    if-ne p1, p2, :cond_1f

    goto :goto_f

    :cond_1f
    if-nez p0, :cond_20

    if-nez v1, :cond_20

    goto :goto_10

    :cond_20
    :goto_f
    move v7, v6

    :cond_21
    :goto_10
    if-eqz v2, :cond_22

    goto :goto_12

    :cond_22
    :goto_11
    move v6, v7

    goto :goto_12

    :cond_23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_12

    :cond_24
    if-eqz v9, :cond_25

    if-eqz v10, :cond_25

    goto :goto_11

    :cond_25
    :goto_12
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
