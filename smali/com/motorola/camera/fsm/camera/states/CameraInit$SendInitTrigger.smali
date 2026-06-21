.class public final Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$motorola$camera$fsm$camera$states$CameraModeSwitch$ResetMeisheVideoLUTRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_VIDEO_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/camera/meishe/MeisheEffects;->isOriginalFilter(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p1, "Original"

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsHelper;->setMeisheVideoFilterValues(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method private final run$com$motorola$camera$fsm$camera$states$CameraModeSwitch$SetFirstLaunchTime(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_OPENED_APP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final run$com$motorola$camera$fsm$camera$states$CameraModeSwitch$SetIntentTriggeredActionRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    const-string p1, "motorola.camera.intent.extra.TRIGGERED_LAUNCH_ACTION"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p0, Lcom/motorola/camera/launch/OnLaunchAction;->OPEN_LOCATION_SETTINGS:Lcom/motorola/camera/launch/OnLaunchAction;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ON_LAUNCH_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/motorola/camera/launch/OnLaunchAction;->NONE:Lcom/motorola/camera/launch/OnLaunchAction;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final run$com$motorola$camera$fsm$camera$states$CameraModeSwitch$SetModeRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "MODE"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    iget-object p3, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->getDualCameraModeByMode(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private final run$com$motorola$camera$fsm$camera$states$CameraModeSwitch$StoreEnterPhotoModeTime(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ENTER_PHOTO_MODE_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private final run$com$motorola$camera$fsm$camera$states$CameraModeSwitch$StoreSliderTagRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    check-cast p3, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "SLIDER_TAG"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "SLIDER_CELL_POS"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p1, "SLIDER_POINT"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "SLIDER_CLICK"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method private final run$com$motorola$camera$fsm$camera$states$CameraModeSwitch$StoreSwitchModeRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    check-cast p3, Landroid/os/Bundle;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "WAIT_MODE"

    const-string p2, "MODE"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "MODE_DIRECTION"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    const-string v0, "WAIT_DIRECTION"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-boolean p0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "wait mode:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraModeSwitch"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v0, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->$r8$classId:I

    const/4 v6, 0x2

    const/16 v7, 0x3e8

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v3, :pswitch_data_0

    .line 31
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 33
    const-string v1, "TIMER"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v2

    .line 34
    iget-object v2, v2, Lcom/motorola/camera/settings/CaptureIntent;->mExtras:Landroid/os/Bundle;

    .line 35
    const-string v3, "android.intent.extra.TIMER_DURATION_SECONDS"

    const-string v4, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

    const/4 v5, 0x3

    .line 36
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 37
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x1e

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/2addr v2, v7

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    .line 40
    :pswitch_0
    invoke-direct/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run$com$motorola$camera$fsm$camera$states$CameraModeSwitch$StoreSwitchModeRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run$com$motorola$camera$fsm$camera$states$CameraModeSwitch$StoreSliderTagRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-direct/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run$com$motorola$camera$fsm$camera$states$CameraModeSwitch$StoreEnterPhotoModeTime(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_3
    invoke-direct/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run$com$motorola$camera$fsm$camera$states$CameraModeSwitch$SetModeRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_4
    invoke-direct/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run$com$motorola$camera$fsm$camera$states$CameraModeSwitch$SetIntentTriggeredActionRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_5
    invoke-direct/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run$com$motorola$camera$fsm$camera$states$CameraModeSwitch$SetFirstLaunchTime(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_6
    invoke-direct/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run$com$motorola$camera$fsm$camera$states$CameraModeSwitch$ResetMeisheVideoLUTRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 41
    :pswitch_7
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v0, v2, v3}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 43
    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    .line 44
    const-string v5, "MODE"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 45
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 46
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->BACK_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v6, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-ne v4, v6, :cond_1

    .line 47
    sget-object v5, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    .line 48
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 49
    :cond_1
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->BACK_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 50
    :cond_2
    :goto_0
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "SKIP"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_3

    .line 51
    :cond_3
    filled-new-array {v0, v2}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 52
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    if-eq v0, v4, :cond_7

    .line 53
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 54
    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->SUPER_NIGHT_UW:Lcom/motorola/camera/AppFeatures$Feature;

    .line 55
    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    .line 56
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 57
    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    .line 58
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "TYPE"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x8

    if-ne v2, v0, :cond_5

    .line 59
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 60
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 61
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, v2, :cond_4

    goto :goto_1

    .line 62
    :cond_4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 63
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 64
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 65
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    :goto_1
    move v9, v10

    .line 66
    :cond_5
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v9, :cond_6

    .line 67
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    .line 68
    :goto_2
    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 69
    :cond_7
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 70
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 71
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 72
    :cond_8
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FRONT_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_9
    :goto_3
    return-void

    .line 73
    :pswitch_8
    const-string v3, "MODE"

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 74
    move-object v0, v2

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_a

    .line 75
    const-string v1, "KEY_EVENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/KeyEvent;

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    :goto_4
    if-nez v5, :cond_b

    .line 76
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v0, "CameraModeSwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "KeyEvent is missing from an Event.KEY Trigger with data="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 77
    :cond_b
    const-string v1, "SRC_MODE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string v1, "SWITCH_CASE"

    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 79
    const-string v1, "ORIGIN_CAMERA_TYPE"

    .line 80
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    if-nez v1, :cond_c

    .line 83
    invoke-static {v10}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToRealMode(I)I

    move-result v1

    .line 84
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    .line 85
    :cond_c
    invoke-virtual {v0, v3, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 86
    :goto_5
    const-string v1, "MODE_DIRECTION"

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 87
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    .line 88
    sput-wide v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mIgnoreDownTime:J

    :goto_6
    return-void

    .line 89
    :pswitch_9
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "NEW_INTENT_REQUEST_MODE"

    .line 91
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 92
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "NEW_INTENT_REQUEST_FACING"

    .line 93
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 94
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "MODE"

    .line 95
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 96
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    if-eq v2, v3, :cond_d

    .line 97
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 100
    :cond_d
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    .line 101
    :pswitch_a
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 102
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 103
    iget-boolean v2, v0, Lcom/motorola/camera/CameraApp;->mIsActivityOnResume:Z

    if-eqz v2, :cond_e

    .line 104
    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mIsActivityOnTop:Z

    if-eqz v0, :cond_e

    .line 105
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA_TOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_e
    return-void

    .line 106
    :pswitch_b
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 107
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 108
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v3

    iget-boolean v3, v3, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    if-nez v3, :cond_f

    .line 109
    iget-boolean v3, v2, Lcom/motorola/camera/CameraApp;->mIsActivityOnResume:Z

    if-nez v3, :cond_f

    .line 110
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, v10}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    :cond_f
    iget-boolean v3, v2, Lcom/motorola/camera/CameraApp;->mIsActivityOnResume:Z

    if-nez v3, :cond_11

    .line 113
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 114
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isReadyToOpenCamera(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_7

    .line 115
    :cond_10
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_12

    .line 116
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->START_WAIT_FOR_RESUME_ACTIVITY:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_8

    .line 117
    :cond_11
    :goto_7
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_12
    :goto_8
    return-void

    .line 118
    :pswitch_c
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 119
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    .line 120
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup(I)Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->onSetup(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 122
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    .line 123
    :pswitch_d
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 124
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v3

    .line 125
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 126
    const-string v2, "USE_CASE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/UseCase;

    .line 127
    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v8

    .line 128
    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v4, v2, :cond_14

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v4, v2, :cond_14

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v4, v2, :cond_13

    goto :goto_9

    :cond_13
    move v4, v9

    goto :goto_a

    :cond_14
    :goto_9
    move v4, v10

    .line 129
    :goto_a
    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v5, v2, :cond_15

    move v5, v10

    goto :goto_b

    :cond_15
    move v5, v9

    .line 130
    :goto_b
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->switchInDualCaptureModeByLayoutChange(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 131
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitchState()Z

    move-result v2

    if-nez v2, :cond_18

    .line 132
    const-string v2, "SRC_MODE"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_16

    .line 133
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode()Z

    move-result v2

    if-nez v2, :cond_18

    .line 134
    :cond_16
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode(I)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_c

    :cond_17
    move v6, v9

    goto :goto_d

    :cond_18
    :goto_c
    move v6, v10

    .line 135
    :goto_d
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v7

    .line 136
    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup(I)Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    .line 137
    invoke-static/range {v3 .. v8}, Lcom/motorola/camera/settings/SettingsManager;->setupForMode(IZZZZZ)V

    .line 138
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getSessionStreamRequest()Lcom/motorola/camera/StreamRequest;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/motorola/camera/settings/SettingsManager;->setupPreviewSize(Lcom/motorola/camera/StreamRequest;Z)V

    .line 139
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->onCreateSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    return-void

    .line 140
    :pswitch_e
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 141
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 142
    const-string v2, "MODE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 143
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup(I)Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 144
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->isPermissionRequired(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 145
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->setupPermissionsRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 146
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_REQUIRED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_e

    .line 147
    :cond_19
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "PERMISSIONS_GRANTED"

    invoke-virtual {v0, v2, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_GRANTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :goto_e
    return-void

    .line 149
    :pswitch_f
    const-string v3, "DUAL_CAPTURE_PREVIEW_TYPE"

    const-string v4, "DUAL_CAPTURE_CAMERA_TYPE_FRONT"

    const-string v5, "DUAL_CAPTURE_CAMERA_TYPE_MASTER"

    const-string v6, "DUAL_CAPTURE_CAMERA_GROUP_TYPE"

    const-string v7, "DUAL_CAPTURE_LAYOUT_TYPE"

    const-string v11, "DUAL_CAPTURE_CAMERA_TYPE_IS_MASTER"

    const-string v12, "MODE"

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 150
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCliMirrorSupported()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 152
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/settings/CaptureIntent;->isMirrorMode()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 153
    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v13, 0x2f

    if-eq v2, v13, :cond_1a

    .line 154
    invoke-virtual {v0, v12, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 155
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 156
    :cond_1a
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v13, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v14, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v2, v13, v14}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 157
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->cancelConsistentPostView()V

    .line 158
    :cond_1b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 159
    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 160
    const-string v2, "CAMERA_TYPE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/settings/CameraType;

    .line 161
    invoke-virtual {v0, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 162
    invoke-virtual {v0, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    goto :goto_f

    .line 163
    :cond_1c
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isBackCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v11

    .line 164
    :goto_f
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v14

    if-nez v14, :cond_1d

    goto :goto_12

    :cond_1d
    if-eqz v11, :cond_1e

    move-object v11, v13

    goto :goto_10

    .line 165
    :cond_1e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v11

    if-eqz v11, :cond_1f

    move-object v11, v12

    goto :goto_10

    .line 166
    :cond_1f
    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 167
    :goto_10
    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    .line 168
    iget-object v14, v14, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 169
    check-cast v14, Lcom/motorola/camera/settings/CameraType;

    .line 170
    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v15

    .line 171
    iget-object v15, v15, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 172
    check-cast v15, Lcom/motorola/camera/settings/CameraType;

    if-ne v2, v15, :cond_20

    if-ne v11, v13, :cond_20

    .line 173
    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v12

    invoke-virtual {v12, v14}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    goto :goto_11

    :cond_20
    if-ne v2, v14, :cond_21

    if-ne v11, v12, :cond_21

    .line 174
    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v12

    invoke-virtual {v12, v15}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    .line 175
    :cond_21
    :goto_11
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    goto :goto_12

    .line 176
    :cond_22
    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 177
    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode(I)Z

    move-result v2

    if-nez v2, :cond_23

    .line 178
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->resetDualCaptureCameraType()V

    .line 179
    :cond_23
    :goto_12
    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 180
    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 181
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_LAYOUT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 182
    :cond_24
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 183
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 184
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_CAMERA_GROUP_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 185
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 186
    invoke-static {v6, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 187
    :cond_25
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 188
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/settings/CameraType;

    .line 189
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    .line 190
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    .line 191
    invoke-static {v2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 192
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 193
    :cond_26
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 194
    :cond_27
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 195
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/settings/CameraType;

    .line 196
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 197
    :cond_28
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 198
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 199
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_PREVIEW_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 200
    :cond_29
    const-string v2, "WAIT_MODE"

    invoke-virtual {v0, v2, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 201
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v0, v2, v3}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 202
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 203
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 204
    :cond_2a
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 205
    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/device/CameraStateManager;

    .line 206
    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 207
    monitor-enter v2

    .line 208
    :try_start_0
    invoke-virtual {v2}, Lcom/motorola/camera/device/CameraStateManager;->allCamerasClosed()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v2}, Lcom/motorola/camera/device/CameraStateManager;->allCameraSessionsClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2b

    move v9, v10

    goto :goto_13

    :catchall_0
    move-exception v0

    goto :goto_14

    :cond_2b
    :goto_13
    monitor-exit v2

    if-eqz v9, :cond_2c

    goto :goto_15

    .line 209
    :cond_2c
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_2d

    const-string v0, "CameraModeSwitch"

    const-string v3, "Wait for all cameras and session to be closed"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_2d
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable$1;

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable$1;-><init>(Lcom/motorola/camera/device/CameraStateManager;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-virtual {v2, v0}, Lcom/motorola/camera/device/CameraStateManager;->addStateListener(Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;)V

    goto :goto_16

    .line 211
    :goto_14
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 212
    :cond_2e
    :goto_15
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :goto_16
    return-void

    .line 213
    :pswitch_10
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 214
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 215
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->resume()V

    .line 216
    :cond_2f
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 217
    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    .line 218
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 219
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-eqz v0, :cond_30

    .line 220
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopAllModels()V

    .line 221
    :cond_30
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->stop()V

    :cond_31
    return-void

    .line 222
    :pswitch_11
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 223
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v1

    .line 224
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->setupDualCameraAllowedValues(Z)V

    .line 225
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->setupModeAllowedValues(Z)V

    .line 226
    const-string v2, "SettingsManager"

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->TRUE_FALSE:Ljava/util/List;

    .line 227
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 228
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 229
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 230
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v12

    if-nez v12, :cond_32

    goto/16 :goto_3f

    .line 231
    :cond_32
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->HDR_WRAPPER:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraTypes()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_17
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/settings/CameraType;

    move/from16 v16, v9

    .line 232
    invoke-static {v15, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v9

    sget-object v8, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_HDR_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v9, v8}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 233
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_3a

    .line 234
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 235
    iget-boolean v5, v5, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v5, :cond_3a

    .line 236
    array-length v5, v8

    move/from16 v4, v16

    :goto_18
    if-ge v4, v5, :cond_36

    aget v10, v8, v4

    if-ne v6, v10, :cond_33

    .line 237
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_33
    const/4 v6, 0x1

    if-ne v6, v10, :cond_34

    .line 238
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_34
    if-nez v10, :cond_35

    .line 239
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    :goto_19
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x2

    const/4 v10, 0x1

    goto :goto_18

    .line 240
    :cond_36
    new-instance v4, Ljava/util/ArrayList;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->HDR_VALUES:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 241
    new-instance v6, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;

    const/16 v8, 0x12

    invoke-direct {v6, v8}, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 242
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_37
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 243
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_37

    .line 244
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 245
    :cond_38
    invoke-static {v15, v13, v4}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 246
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3b

    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_HDR_SETTING_UI:Z

    if-nez v4, :cond_39

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_HDR_SETTING:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 247
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 248
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 249
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 250
    :cond_39
    invoke-static {v15, v12, v3}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    goto :goto_1b

    :cond_3a
    const/4 v4, 0x0

    .line 251
    invoke-static {v15, v13, v4}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 252
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FALSE_LIST:Ljava/util/List;

    invoke-static {v15, v12, v4}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    :cond_3b
    :goto_1b
    move/from16 v9, v16

    const/4 v6, 0x2

    const/4 v8, -0x1

    const/4 v10, 0x1

    goto/16 :goto_17

    :cond_3c
    move/from16 v16, v9

    .line 253
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v1, :cond_3e

    .line 254
    sget-object v5, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    if-eqz v6, :cond_3d

    goto :goto_1c

    .line 255
    :cond_3d
    sget-object v5, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_1c

    .line 256
    :cond_3e
    sget-object v5, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    .line 257
    :goto_1c
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    if-nez v6, :cond_3f

    goto/16 :goto_21

    .line 258
    :cond_3f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v6

    if-nez v6, :cond_40

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v6

    if-eqz v6, :cond_41

    :cond_40
    const/4 v6, 0x0

    goto/16 :goto_20

    .line 259
    :cond_41
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 260
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v5, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 262
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_42
    sget-object v5, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 264
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v5, Lcom/motorola/camera/settings/CameraType;->CLI_ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 266
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isCliZoomBlendingOnlyApplicableToMirrorMode()Z

    move-result v8

    if-nez v8, :cond_43

    .line 267
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_43
    sget-object v5, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 269
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_44
    sget-boolean v5, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY_PORTRAIT:Z

    if-eqz v5, :cond_45

    .line 271
    sget-object v5, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_45
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/settings/CameraType;

    .line 273
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 274
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v9

    if-eqz v9, :cond_49

    .line 275
    invoke-static {v6, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_BEAUTIFICATION_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v9, v10}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    if-nez v9, :cond_46

    goto :goto_1d

    .line 276
    :cond_46
    array-length v10, v9

    move/from16 v12, v16

    :goto_1e
    if-ge v12, v10, :cond_49

    aget v13, v9, v12

    const/4 v14, 0x1

    if-ne v14, v13, :cond_47

    .line 277
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_47
    if-nez v13, :cond_48

    .line 278
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    :goto_1f
    add-int/lit8 v12, v12, 0x1

    goto :goto_1e

    .line 279
    :cond_49
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 280
    invoke-static {v6, v4, v8}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 281
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL_VALUES:Ljava/util/List;

    invoke-static {v6, v8, v9}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    goto :goto_1d

    .line 282
    :goto_20
    invoke-static {v5, v4, v6}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 283
    sget-object v5, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 284
    invoke-static {v5, v4, v6}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 285
    :cond_4a
    sget-object v5, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 286
    invoke-static {v5, v4, v6}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 287
    :cond_4b
    :goto_21
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->setupFaceBeauty(Z)V

    .line 288
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v5

    if-eqz v5, :cond_4c

    goto :goto_22

    .line 289
    :cond_4c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    .line 290
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    if-nez v6, :cond_4d

    goto :goto_22

    .line 291
    :cond_4d
    sget-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SELECTIVE_COLOR:Z

    if-eqz v6, :cond_4e

    .line 292
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->BOOL_ON_OFF:Ljava/util/List;

    invoke-static {v5, v4, v6}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    goto :goto_22

    :cond_4e
    const/4 v6, 0x0

    .line 293
    invoke-static {v5, v4, v6}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 294
    :goto_22
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v5

    if-eqz v5, :cond_4f

    goto :goto_23

    .line 295
    :cond_4f
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_50

    goto :goto_23

    .line 296
    :cond_50
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MLRN_TRAINING:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 297
    invoke-static {v5, v6}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    if-eqz v5, :cond_53

    .line 298
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    .line 299
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    if-nez v6, :cond_51

    goto :goto_23

    .line 300
    :cond_51
    invoke-static {v5, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 301
    invoke-static {v6, v8}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    if-nez v6, :cond_52

    const/4 v8, 0x0

    .line 302
    invoke-static {v5, v4, v8}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    goto :goto_23

    .line 303
    :cond_52
    new-instance v8, Ljava/util/ArrayList;

    .line 304
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 305
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 306
    invoke-static {v5, v4, v8}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 307
    :cond_53
    :goto_23
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraTypes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/settings/CameraType;

    .line 308
    invoke-static {v6, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_AUTO_CAPTURE_SMILE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 309
    invoke-static {v8, v9}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 310
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_58

    .line 311
    array-length v10, v8

    move/from16 v12, v16

    :goto_25
    if-ge v12, v10, :cond_57

    aget v13, v8, v12

    const/4 v14, 0x2

    if-ne v14, v13, :cond_54

    .line 312
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_54
    const/4 v14, 0x1

    if-ne v14, v13, :cond_55

    .line 313
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_55
    if-nez v13, :cond_56

    .line 314
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    :goto_26
    add-int/lit8 v12, v12, 0x1

    goto :goto_25

    .line 315
    :cond_57
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 316
    invoke-static {v6, v4, v9}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    goto :goto_24

    :cond_58
    const/4 v8, 0x0

    .line 317
    invoke-static {v6, v4, v8}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    goto :goto_24

    .line 318
    :cond_59
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraTypes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/settings/CameraType;

    .line 319
    invoke-static {v6, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_AUTO_CAPTURE_GESTURE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 320
    invoke-static {v8, v9}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 321
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_5e

    .line 322
    array-length v10, v8

    move/from16 v12, v16

    :goto_28
    if-ge v12, v10, :cond_5d

    aget v13, v8, v12

    const/4 v14, 0x2

    if-ne v14, v13, :cond_5a

    .line 323
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_5a
    const/4 v14, 0x1

    if-ne v14, v13, :cond_5b

    .line 324
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_5b
    if-nez v13, :cond_5c

    .line 325
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    :goto_29
    add-int/lit8 v12, v12, 0x1

    goto :goto_28

    .line 326
    :cond_5d
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 327
    invoke-static {v6, v4, v9}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    goto :goto_27

    :cond_5e
    const/4 v8, 0x0

    .line 328
    invoke-static {v6, v4, v8}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    goto :goto_27

    .line 329
    :cond_5f
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_COMPOSITION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraTypes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/settings/CameraType;

    .line 330
    invoke-static {v5, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_COMPOSITION_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v6, v8}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 331
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_63

    .line 332
    array-length v9, v6

    move/from16 v10, v16

    :goto_2b
    if-ge v10, v9, :cond_62

    aget v12, v6, v10

    const/4 v14, 0x1

    if-ne v14, v12, :cond_60

    .line 333
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_60
    if-nez v12, :cond_61

    .line 334
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    :goto_2c
    add-int/lit8 v10, v10, 0x1

    goto :goto_2b

    .line 335
    :cond_62
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 336
    invoke-static {v5, v0, v8}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    const/4 v8, 0x0

    goto :goto_2a

    :cond_63
    const/4 v8, 0x0

    .line 337
    invoke-static {v5, v0, v8}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    goto :goto_2a

    :cond_64
    const/4 v8, 0x0

    .line 338
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->CUTOUT_DEFAULT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_30

    .line 339
    :cond_65
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 340
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 341
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_67

    .line 342
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/CameraType;

    .line 343
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v0

    .line 344
    :try_start_2
    sget-object v6, Lcom/motorola/camera/mcf/Mcf;->REALTIME_BOKEH_DEF_LEVEL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v6}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_66

    .line 345
    aget v0, v0, v16

    goto :goto_2e

    :catch_0
    move-exception v0

    goto :goto_2f

    :cond_66
    const/4 v0, 0x1

    .line 346
    :goto_2e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_30

    .line 347
    :goto_2f
    const-string v6, "Error getting Cutout default level"

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 348
    :cond_67
    :goto_30
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 349
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_68

    goto/16 :goto_36

    .line 350
    :cond_68
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/settings/CameraType;

    .line 351
    invoke-static {v5, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_REALTIME_BOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 352
    invoke-static {v5, v6}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    if-nez v5, :cond_69

    goto :goto_31

    .line 353
    :cond_69
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 354
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 355
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_6e

    .line 356
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getPortraitLensDefaultOption()Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    move-result-object v0

    .line 357
    sget-object v5, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/EnumMap;

    invoke-virtual {v5, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    if-eqz v0, :cond_6a

    .line 358
    iget-object v0, v0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->blurLevel:Ljava/lang/Integer;

    goto :goto_32

    :cond_6a
    move-object v0, v8

    :goto_32
    if-eqz v0, :cond_6b

    .line 359
    invoke-static {v4, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_36

    .line 360
    :cond_6b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/CameraType;

    .line 361
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v0

    .line 362
    :try_start_3
    sget-object v6, Lcom/motorola/camera/mcf/Mcf;->REALTIME_BOKEH_MAX_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v6}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 363
    sget-object v7, Lcom/motorola/camera/mcf/Mcf;->REALTIME_BOKEH_DEF_LEVEL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v7}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    if-nez v6, :cond_6c

    .line 364
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error getting Bokeh max level for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :catch_1
    move-exception v0

    goto :goto_35

    :cond_6c
    if-eqz v7, :cond_6d

    .line 365
    aget v0, v7, v16

    goto :goto_34

    :cond_6d
    aget v0, v6, v16

    int-to-float v0, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 366
    :goto_34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_36

    .line 367
    :goto_35
    const-string v6, "Error getting Bokeh levels"

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 368
    :cond_6e
    :goto_36
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_39

    .line 369
    :cond_6f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_70
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/settings/CameraType;

    .line 370
    invoke-static {v2, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v2

    .line 371
    sget-object v4, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v2, v4}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    if-nez v4, :cond_71

    goto :goto_37

    .line 372
    :cond_71
    sget-object v4, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_MAX_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v2, v4}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 373
    sget-object v5, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_MIN_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v2, v5}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 374
    sget-object v6, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_DEF_LEVEL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v2, v6}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v4, :cond_70

    if-eqz v5, :cond_70

    .line 375
    array-length v6, v4

    if-eqz v6, :cond_70

    array-length v6, v5

    if-nez v6, :cond_72

    goto :goto_37

    .line 376
    :cond_72
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 377
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 378
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v2, :cond_73

    .line 379
    aget v2, v2, v16

    const/4 v14, 0x2

    goto :goto_38

    :cond_73
    aget v2, v4, v16

    aget v5, v5, v16

    const/4 v14, 0x2

    invoke-static {v2, v5, v14, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v2

    :goto_38
    if-eqz v1, :cond_74

    .line 380
    sget-object v5, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 381
    sget-object v9, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_FIXED_SFBOKEH_LEVEL:Lcom/motorola/camera/AppFeatures$Feature;

    .line 382
    iget-object v5, v5, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v5, Ljava/util/EnumSet;

    .line 383
    invoke-virtual {v5, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    .line 384
    aget v2, v4, v16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_37

    :cond_74
    const/4 v5, -0x1

    if-ne v7, v5, :cond_70

    .line 385
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_37

    .line 386
    :cond_75
    :goto_39
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupported(Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result v0

    if-eqz v0, :cond_76

    move-object v5, v3

    goto :goto_3a

    :cond_76
    move-object v5, v8

    .line 387
    :goto_3a
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v5}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 388
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_TYPES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 389
    invoke-static {v2, v5}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    goto :goto_3b

    .line 390
    :cond_77
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/settings/CameraType;

    .line 391
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVSupported(Ljava/lang/String;Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 392
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 393
    iget-boolean v3, v3, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v3, :cond_78

    const/4 v3, 0x1

    goto :goto_3d

    :cond_78
    move/from16 v3, v16

    .line 394
    :goto_3d
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v3, :cond_79

    .line 395
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ON_OFF:Ljava/util/List;

    goto :goto_3e

    :cond_79
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 396
    :goto_3e
    invoke-static {v2, v4, v3}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    goto :goto_3c

    .line 397
    :cond_7a
    :goto_3f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 398
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 399
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;-><init>(Z)V

    .line 400
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 401
    invoke-static {v0, v1}, Lcom/motorola/camera/mcf/Mcf;->start(Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;Landroid/content/Context;)V

    goto :goto_40

    .line 402
    :cond_7b
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_7c

    .line 403
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v0, "CameraModeSwitch"

    const-string v1, "mcf not supported by current mode:%s allow:%s inited:%s"

    .line 404
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 405
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 406
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 407
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 408
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    :goto_40
    return-void

    :pswitch_12
    move/from16 v16, v9

    .line 409
    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE_SHOW_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const-string v5, "LOADING_COMPLETE"

    sget-object v6, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const-string v8, "SWITCH_CASE"

    const-string v9, "WAIT_MODE"

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 410
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 411
    const-string v2, "error_retry"

    move/from16 v10, v16

    invoke-virtual {v0, v2, v10}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_7d

    .line 412
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_41

    .line 413
    :cond_7d
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 414
    :goto_41
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v10, -0x1

    .line 415
    invoke-virtual {v2, v9, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v10, :cond_82

    .line 416
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 417
    const-string v11, "MODE"

    invoke-virtual {v10, v11, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 418
    const-string v11, "MODE_DIRECTION"

    .line 419
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "WAIT_DIRECTION"

    .line 420
    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    .line 421
    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-ne v2, v7, :cond_80

    .line 422
    invoke-virtual {v10, v8, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 423
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 424
    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v2, :cond_7e

    .line 425
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v2, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_42

    .line 426
    :cond_7e
    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 427
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 428
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    const/4 v4, 0x0

    .line 429
    invoke-direct {v2, v3, v10, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 430
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_42

    :cond_7f
    const/4 v4, 0x0

    .line 431
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "CAMERA_TYPE"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 432
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    .line 433
    invoke-direct {v2, v3, v10, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 434
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_42

    :cond_80
    const/4 v4, 0x0

    .line 435
    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v10, v8, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 436
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 437
    invoke-direct {v2, v3, v10, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 438
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    .line 439
    :cond_81
    :goto_42
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v5, -0x1

    .line 440
    invoke-virtual {v0, v9, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_43

    .line 441
    :cond_82
    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 442
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 443
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_43

    .line 444
    :cond_83
    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 445
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v0

    if-ne v6, v0, :cond_84

    .line 446
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_43

    .line 447
    :cond_84
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_43

    .line 448
    :cond_85
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    .line 449
    :cond_86
    :goto_43
    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 450
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 451
    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    .line 452
    invoke-virtual {v0}, Lcom/motorola/camera/device/CameraStateManager;->getOpenCameraIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "camera:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/Result;->add(Ljava/lang/String;)V

    goto :goto_44

    :cond_87
    const/16 v17, -0x1

    .line 455
    sput v17, Lcom/motorola/camera/utility/ZoomHelper;->sLastSessionDataKeptMode:I

    :cond_88
    return-void

    .line 456
    :pswitch_13
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 457
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_89

    .line 458
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TIMES_OPENED_PHOTO_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 459
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 460
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 461
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v18, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 462
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_89
    return-void

    .line 463
    :pswitch_14
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 464
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 465
    const-string v1, "MODE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    :pswitch_15
    move v4, v9

    .line 466
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 467
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 468
    const-string v1, "MODE"

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 469
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    .line 470
    :pswitch_16
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 471
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_8a

    .line 472
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 473
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->START_WAIT_FOR_RESUME_ACTIVITY:Lcom/motorola/camera/CameraKpi$KPI;

    .line 474
    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_8a
    return-void

    .line 475
    :pswitch_17
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 476
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 477
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 478
    const-string v1, "SLIDER_TAG"

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    .line 479
    :pswitch_18
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 480
    const-string v1, "USE_CASE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v1, v2, :cond_8b

    .line 481
    const-string v1, "CAMERA_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 482
    const-string v1, "IS_MANUAL_JUMP"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 483
    const-string v1, "ORIGIN_CAMERA_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_8b
    return-void

    :pswitch_19
    move/from16 v16, v9

    .line 484
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v18, 0x1

    .line 485
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 486
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 487
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 488
    const-string v2, "MODE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 489
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v1

    .line 490
    invoke-static {v5, v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getModeSupportFacing(IZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 491
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 492
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 493
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 494
    const-string v9, "FROM_FACING"

    invoke-virtual {v0, v9, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 495
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_90

    const/4 v9, 0x6

    const/16 v10, 0x12

    if-eq v5, v9, :cond_8c

    if-ne v5, v10, :cond_90

    .line 496
    :cond_8c
    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_GAO_DING_NAME:Z

    if-eqz v1, :cond_8e

    if-ne v5, v9, :cond_8d

    .line 497
    invoke-static {v6, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 498
    invoke-static {v10, v9}, Lcom/motorola/camera/settings/ModeSettingsHelper;->adjustSliderMode(II)V

    goto :goto_45

    .line 499
    :cond_8d
    invoke-static {v6, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 500
    invoke-static {v9, v10}, Lcom/motorola/camera/settings/ModeSettingsHelper;->adjustSliderMode(II)V

    goto :goto_45

    :cond_8e
    if-nez v8, :cond_8f

    .line 501
    invoke-static {v9, v10}, Lcom/motorola/camera/settings/ModeSettingsHelper;->adjustSliderMode(II)V

    .line 502
    invoke-virtual {v0, v2, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_45

    :cond_8f
    const/4 v14, 0x1

    if-ne v8, v14, :cond_93

    .line 503
    invoke-static {v10, v9}, Lcom/motorola/camera/settings/ModeSettingsHelper;->adjustSliderMode(II)V

    .line 504
    invoke-virtual {v0, v2, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_45

    .line 505
    :cond_90
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 506
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 507
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 508
    invoke-static {v6, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_45

    .line 509
    :cond_91
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 510
    invoke-static {v6, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_45

    .line 511
    :cond_92
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_93

    const/4 v4, 0x0

    .line 512
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v6, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_93
    :goto_45
    return-void

    .line 513
    :pswitch_1a
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 514
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v1

    new-instance v2, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/16 v3, 0x19

    invoke-direct {v2, v3, v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 515
    iput-object v2, v1, Lcom/motorola/camera/PermissionsManager;->mCallback:Lcom/motorola/camera/PermissionsManager$PermissionResultCallback;

    return-void

    .line 516
    :pswitch_1b
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 517
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CHECK_LOCATION_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    .line 518
    :pswitch_1c
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 519
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    nop

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

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 3
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 4
    :pswitch_2
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 5
    :pswitch_3
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 6
    :pswitch_4
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 7
    :pswitch_5
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 8
    :pswitch_6
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 9
    :pswitch_7
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 10
    :pswitch_8
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 11
    :pswitch_9
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 12
    :pswitch_a
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 13
    :pswitch_b
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 14
    :pswitch_c
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 15
    :pswitch_d
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 16
    :pswitch_e
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 17
    :pswitch_f
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 18
    :pswitch_10
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 19
    :pswitch_11
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 20
    :pswitch_12
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 21
    :pswitch_13
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 22
    :pswitch_14
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 23
    :pswitch_15
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 24
    :pswitch_16
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 25
    :pswitch_17
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 26
    :pswitch_18
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 27
    :pswitch_19
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 28
    :pswitch_1a
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 29
    :pswitch_1b
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 30
    :pswitch_1c
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

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
