.class public final Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 2
    const/16 p1, 0xe

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 11

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;->$r8$classId:I

    const/16 v0, 0x3e8

    const/4 v1, 0x6

    const/16 v2, 0x12

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "MCF_INIT"

    invoke-virtual {p0, p1, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :pswitch_0
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p2

    const-string v6, "WAIT_MODE"

    invoke-virtual {p2, v6, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v7

    if-eq p2, v3, :cond_2

    if-eq p2, v0, :cond_2

    if-eq p2, v1, :cond_0

    if-ne p2, v2, :cond_1

    :cond_0
    if-eq v7, v1, :cond_3

    if-ne v7, v2, :cond_1

    goto :goto_1

    :cond_1
    if-ne v7, p2, :cond_4

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    move v4, v5

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    :goto_2
    return v4

    :pswitch_1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ON_LAUNCH_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    sget-object p1, Lcom/motorola/camera/launch/OnLaunchAction;->NONE:Lcom/motorola/camera/launch/OnLaunchAction;

    if-eq p0, p1, :cond_5

    move p0, v4

    goto :goto_3

    :cond_5
    move p0, v5

    :goto_3
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/settings/CaptureIntent;

    iget-object p1, p1, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    invoke-static {p1}, Lcom/motorola/camera/settings/CaptureIntent;->isCTSMode(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_7

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    move v4, v5

    :cond_7
    :goto_4
    return v4

    :pswitch_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthMode()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    move v5, v4

    :cond_9
    xor-int/lit8 p0, v5, 0x1

    return p0

    :pswitch_3
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "CLOSE_AFTER_OPEN"

    invoke-virtual {p0, p1, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string p2, "CLOSE_ENTER"

    invoke-virtual {p0, p2, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p1, :cond_b

    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    move v4, v5

    :cond_b
    :goto_5
    return v4

    :pswitch_4
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object p1, Lcom/motorola/camera/AppFeatures$Feature;->PRESS_KEY_SWITCH_MODE:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_6

    :cond_c
    move v4, v5

    :goto_6
    return v4

    :pswitch_5
    sget-boolean p0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result p0

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/motorola/camera/PermissionsManager;->mLastAskShouldShowRationale:Z

    if-eqz p0, :cond_d

    if-nez p1, :cond_d

    goto :goto_7

    :cond_d
    move v4, v5

    :goto_7
    return v4

    :pswitch_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ON_LAUNCH_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/launch/OnLaunchAction;

    sget-object p2, Lcom/motorola/camera/launch/OnLaunchAction;->OPEN_LOCATION_SETTINGS:Lcom/motorola/camera/launch/OnLaunchAction;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    const-string p1, "motorola.camera.intent.extra.TRIGGERED_LAUNCH_ACTION"

    invoke-virtual {p0, p1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_8

    :cond_e
    move v4, v5

    :goto_8
    return v4

    :pswitch_7
    check-cast p2, Landroid/os/Bundle;

    const-string p0, "DIRECTION"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_10

    const/4 p1, 0x4

    if-ne p0, p1, :cond_f

    goto :goto_9

    :cond_f
    move v4, v5

    :cond_10
    :goto_9
    return v4

    :pswitch_8
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "MODE"

    invoke-virtual {p0, p2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eq p2, v4, :cond_12

    :cond_11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez p2, :cond_13

    :cond_12
    move v0, v4

    goto :goto_a

    :cond_13
    move v0, v5

    :goto_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v4

    goto :goto_b

    :cond_14
    move v1, v5

    :goto_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDolbyVisionMode()Z

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionFHDSupported()Z

    move-result v3

    if-eqz v3, :cond_15

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_15

    move v3, v4

    goto :goto_c

    :cond_15
    move v3, v5

    :goto_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcSupported()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcOn()Z

    move-result v6

    if-eqz v6, :cond_16

    move v6, v4

    goto :goto_d

    :cond_16
    move v6, v5

    :goto_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoEnabled()Z

    move-result v7

    if-eqz v7, :cond_17

    if-ne p2, v4, :cond_17

    move v7, v4

    goto :goto_e

    :cond_17
    move v7, v5

    :goto_e
    const-string v8, "ORIGIN_CAMERA_TYPE"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/settings/CameraType;

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackWideCamera()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackTeleCamera()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMacroCamera()Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_18
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v0

    if-nez v0, :cond_1f

    if-nez v1, :cond_1f

    if-nez v2, :cond_1f

    if-nez v3, :cond_1f

    if-nez v6, :cond_1f

    if-nez v7, :cond_1f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result v0

    if-nez v0, :cond_1b

    if-ne p2, v4, :cond_1a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackWideCamera()Z

    move-result p2

    if-nez p2, :cond_19

    goto :goto_f

    :cond_19
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object v0, p2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    iget-object v2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/VideoFormat;

    invoke-virtual {v0, v1, p2, v2}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/VideoFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p2

    sget-object v1, Lcom/motorola/camera/VideoHelper;->ALLOWED_VIDEO_SIZES:Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v5}, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/VideoFormat;I)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    goto :goto_10

    :cond_1a
    :goto_f
    move p2, v4

    :goto_10
    if-nez p2, :cond_1e

    :cond_1b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingVideoSupported()Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isCliZoomBlendingApplicableToVideoMode()Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCliZoomBlendingVideoSize()Lcom/motorola/camera/VideoFormat;

    move-result-object p1

    goto :goto_11

    :cond_1c
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    :goto_11
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimited(Lcom/motorola/camera/VideoFormat;)Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaUpscaleOnlyInBackMain()Z

    move-result p1

    if-eqz p1, :cond_1d

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Landroid/util/Size;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimited(Landroid/util/Size;)Z

    move-result p1

    if-nez p1, :cond_1f

    :cond_1d
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-eq p0, p1, :cond_1e

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->CLI_ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-ne p0, p1, :cond_1f

    :cond_1e
    move p0, v4

    goto :goto_12

    :cond_1f
    move p0, v5

    :goto_12
    if-ne v4, p0, :cond_20

    goto :goto_13

    :cond_20
    move v4, v5

    :goto_13
    return v4

    :pswitch_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCameraSupported()Z

    move-result p0

    if-eqz p0, :cond_21

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result p0

    if-eqz p0, :cond_21

    move v5, v4

    :cond_21
    xor-int/lit8 p0, v5, 0x1

    return p0

    :pswitch_a
    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    if-eqz p0, :cond_27

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    if-eqz p0, :cond_27

    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "MODE"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result p2

    if-eqz p2, :cond_23

    if-ne p1, v4, :cond_22

    goto :goto_14

    :cond_22
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode(I)Z

    move-result p2

    if-nez p2, :cond_25

    :cond_23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p2

    if-nez p2, :cond_24

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode()Z

    move-result p2

    if-eqz p2, :cond_26

    :cond_24
    if-nez p1, :cond_26

    :cond_25
    :goto_14
    move p1, v4

    goto :goto_15

    :cond_26
    move p1, v5

    :goto_15
    sget-object p2, Lcom/motorola/camera/settings/CameraType;->CLI_ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p2

    if-nez p2, :cond_27

    if-eqz p1, :cond_27

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    const-string p2, "ORIGIN_CAMERA_TYPE"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-ne p1, p0, :cond_27

    goto :goto_16

    :cond_27
    move v4, v5

    :goto_16
    return v4

    :pswitch_b
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isRTBokehInHal(Z)Z

    move-result p0

    if-ne p0, v4, :cond_28

    goto :goto_17

    :cond_28
    move v4, v5

    :goto_17
    return v4

    :pswitch_c
    const-string p0, "CameraModeSwitch"

    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "MODE"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    if-eq p2, v0, :cond_29

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string p1, "Inconsistent mode, restart it. "

    invoke-static {p1, p2, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_18

    :cond_29
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mRequestBuilders:Lcom/motorola/camera/fsm/RequestBuilders;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/RequestBuilders;->getPreviewBuilders()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2a

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string p1, "Builders are empty, restart current mode."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_2a
    move v4, v5

    :goto_18
    return v4

    :pswitch_d
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "IS_HIGH_RES_AUTO_SWITCH"

    invoke-virtual {p0, p1, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2b

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER_PENDING:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_2b
    if-ne v4, p0, :cond_2c

    goto :goto_19

    :cond_2c
    move v4, v5

    :goto_19
    return v4

    :pswitch_e
    check-cast p2, Landroid/os/Bundle;

    if-eqz p2, :cond_2d

    const-string p0, "HAL_PROCESSING"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_1a

    :cond_2d
    move v4, v5

    :goto_1a
    return v4

    :pswitch_f
    if-nez p2, :cond_2e

    goto :goto_1b

    :cond_2e
    instance-of p0, p2, Landroid/os/Bundle;

    if-eqz p0, :cond_2f

    check-cast p2, Landroid/os/Bundle;

    const-string p0, "MODE"

    invoke-virtual {p2, p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode(I)Z

    move-result v5

    :cond_2f
    :goto_1b
    return v5

    :pswitch_10
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    invoke-static {v3, v3, p0}, Lcom/motorola/camera/settings/SettingsManager;->decideCameraType(IIZ)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    if-ne p0, p1, :cond_30

    goto :goto_1c

    :cond_30
    move v4, v5

    :goto_1c
    return v4

    :pswitch_11
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "SRC_MODE"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "MODE"

    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-ne p1, v4, :cond_31

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode(I)Z

    move-result p2

    if-nez p2, :cond_33

    :cond_31
    if-ne p0, v4, :cond_32

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode(I)Z

    move-result p0

    if-eqz p0, :cond_32

    goto :goto_1d

    :cond_32
    move v4, v5

    :cond_33
    :goto_1d
    return v4

    :pswitch_12
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object p2, Lcom/motorola/camera/AppFeatures$Feature;->DUAL_CAPTURE_SWITCH_CLOSE_CAMERA:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object p1, p1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p1, Ljava/util/EnumSet;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->switchInDualCaptureModeByLayoutChange(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_34

    goto :goto_1e

    :cond_34
    move v4, v5

    :goto_1e
    return v4

    :pswitch_13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentSceneAdjustmentStatusEnabled()Z

    move-result p0

    if-eqz p0, :cond_35

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupportedByCurrentMode(Z)Z

    move-result p0

    if-nez p0, :cond_36

    sget-object p0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p0

    if-nez p0, :cond_36

    :cond_35
    move v5, v4

    :cond_36
    xor-int/lit8 p0, v5, 0x1

    return p0

    :pswitch_14
    sget-object p0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE_SHOW_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const-string p2, "SWITCH_CASE"

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "WAIT_MODE"

    invoke-virtual {v2, v6, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_3b

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "MODE"

    invoke-virtual {v7, v8, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "MODE_DIRECTION"

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "WAIT_DIRECTION"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-ne v2, v0, :cond_39

    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v7, p2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p2, p2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p2, :cond_37

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_1f

    :cond_37
    sget-object p2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, p2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "LOADING_COMPLETE"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3a

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p2, p0, v7, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_1f

    :cond_38
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "CAMERA_TYPE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p2, p0, v7, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_1f

    :cond_39
    sget-object p0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v7, p2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p2, v7, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_3a
    :goto_1f
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_20

    :cond_3b
    move v4, v5

    :goto_20
    return v4

    :pswitch_15
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "REVIEW_PLAY"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_16
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "NEW_INTENT_REQUEST_MODE"

    invoke-virtual {p2, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "NEW_INTENT_REQUEST_FACING"

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p2, v1, :cond_3c

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_GAO_DING_NAME:Z

    if-eqz p1, :cond_3c

    invoke-static {v2, v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->adjustSliderMode(II)V

    :cond_3c
    if-eq p2, v3, :cond_3d

    if-eq p0, v3, :cond_3d

    goto :goto_21

    :cond_3d
    move v4, v5

    :goto_21
    return v4

    :pswitch_17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object p0

    iget-object p1, p0, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    iget-object p2, p0, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_22

    :cond_3e
    const-string p1, ""

    :goto_22
    invoke-virtual {p0}, Lcom/motorola/camera/settings/CaptureIntent;->isVoiceAssistantCapture()Z

    move-result p0

    if-eqz p0, :cond_40

    const-string p0, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    const-string p0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    const-string p0, "motorola.camera.intent.action.VIDEO_CAPTURE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    :cond_3f
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p0

    if-eqz p0, :cond_40

    const-string p0, "motorola.camera.intent.extra.TRIGGERED_LAUNCH_ACTION"

    invoke-virtual {p2, p0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_40

    goto :goto_23

    :cond_40
    move v4, v5

    :goto_23
    return v4

    :pswitch_18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object p0

    iget-object p1, p0, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    iget-object p2, p0, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_41

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_24

    :cond_41
    const-string p1, ""

    :goto_24
    invoke-virtual {p0}, Lcom/motorola/camera/settings/CaptureIntent;->isVoiceAssistantCapture()Z

    move-result p0

    if-eqz p0, :cond_43

    invoke-static {p1}, Lcom/motorola/camera/settings/CaptureIntent;->isPhotoCaptureAction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_43

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result p0

    if-nez p0, :cond_42

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p0

    if-eqz p0, :cond_43

    :cond_42
    const-string p0, "motorola.camera.intent.extra.TRIGGERED_LAUNCH_ACTION"

    invoke-virtual {p2, p0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_43

    goto :goto_25

    :cond_43
    move v4, v5

    :goto_25
    return v4

    :pswitch_19
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/motorola/camera/PermissionsManager;->mMissingCriticalPermissions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_1a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result p0

    if-eqz p0, :cond_44

    sget-boolean p0, Lcom/motorola/camera/utility/ZoomHelper;->sIsLight:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result p1

    invoke-static {p1, p0}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableAutoFocusTracking(FLcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_44

    goto :goto_26

    :cond_44
    move v4, v5

    :goto_26
    return v4

    :pswitch_1b
    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_FOCUS_TRACKING_AUTO_MODE:Z

    xor-int/2addr p0, v4

    return p0

    :pswitch_1c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
