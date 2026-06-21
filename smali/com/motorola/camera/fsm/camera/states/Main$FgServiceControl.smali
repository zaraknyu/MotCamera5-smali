.class public final Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/AbortCapturesListener;
.implements Lcom/motorola/camera/device/callables/StopRepeatingListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mEnter:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->$r8$classId:I

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbortCaptures()V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->STOP_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public onStopRepeating()V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->STOP_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    .line 32
    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->POPUP_EARLY_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1, p3}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    if-nez p0, :cond_1

    .line 34
    const-string p0, "0"

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object p0

    .line 36
    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq p0, p1, :cond_2

    goto :goto_1

    .line 37
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 38
    const-string p0, "1"

    goto :goto_0

    .line 39
    :cond_3
    const-string p0, "2"

    .line 40
    :goto_0
    sget-object p1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 41
    new-instance p2, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;

    invoke-direct {p2, p0}, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    :goto_1
    return-void

    .line 42
    :pswitch_0
    const-string v0, "fsmContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->teardown(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 45
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    if-nez p0, :cond_4

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_4
    return-void

    .line 46
    :pswitch_1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 48
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isInSensorCropSupportedInSession()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 49
    invoke-static {}, Lcom/motorola/camera/JsonConfig;->inSensorCropHasLuxIdxThresholdRequirement()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 50
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    .line 51
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    .line 52
    const-string p3, "ISC_LUX_IDX_THRESH_MET"

    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 53
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 55
    invoke-static {p2, v1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->getNewLuxIdxThreshMetCond(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Z

    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 57
    invoke-virtual {p1, p3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    if-nez p0, :cond_5

    .line 59
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FULL_FRAME_CONFIG_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_5
    return-void

    .line 60
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 61
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 62
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_2

    :cond_6
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_2
    if-eqz p1, :cond_7

    .line 63
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_3

    :cond_7
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_3
    if-eqz p1, :cond_8

    .line 64
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_4

    :cond_8
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_4
    if-eqz p1, :cond_9

    .line 65
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_5

    .line 66
    :cond_9
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 67
    :goto_5
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    if-eqz p0, :cond_a

    .line 68
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 69
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 70
    check-cast v1, Lcom/motorola/camera/PreviewSize$AspectRatio;

    const/4 v2, 0x1

    .line 71
    invoke-static {p2, v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    .line 72
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 73
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 74
    check-cast p2, Landroid/util/Size;

    .line 75
    invoke-static {p3, p2, v2}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    .line 76
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 77
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 78
    check-cast p2, Ljava/lang/Integer;

    .line 79
    invoke-static {v0, p2, v2}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    goto :goto_6

    .line 80
    :cond_a
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 81
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 82
    check-cast v1, Lcom/motorola/camera/PreviewSize$AspectRatio;

    const/4 v2, 0x0

    .line 83
    invoke-static {p2, v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    .line 84
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 85
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 86
    check-cast p2, Landroid/util/Size;

    .line 87
    invoke-static {p3, p2, v2}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    .line 88
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 89
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 90
    check-cast p2, Ljava/lang/Integer;

    .line 91
    invoke-static {v0, p2, v2}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    .line 92
    :goto_6
    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    return-void

    .line 93
    :pswitch_3
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 94
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/DnDHandler;->muteNotifications(Z)V

    return-void

    .line 95
    :pswitch_4
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 96
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->setupMicSetting(ZZ)V

    return-void

    .line 97
    :pswitch_5
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 98
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    if-eqz p1, :cond_c

    if-eqz p0, :cond_b

    .line 99
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 100
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 101
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 102
    check-cast p1, Ljava/lang/Integer;

    .line 103
    invoke-static {p0, p1, p3}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    goto :goto_9

    .line 104
    :cond_b
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x0

    .line 105
    invoke-static {p0, p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    goto :goto_9

    .line 106
    :cond_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDebugVstabOptionsOn()Z

    move-result p1

    if-nez p1, :cond_e

    .line 107
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_7

    .line 108
    :cond_d
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_8

    .line 109
    :cond_e
    :goto_7
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 110
    :goto_8
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 111
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 112
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_f

    .line 113
    invoke-static {p1, v0, p3}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    goto :goto_9

    .line 114
    :cond_f
    invoke-static {p1, v0, p2}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    :goto_9
    return-void

    .line 115
    :pswitch_6
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionFHDSupported()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_a

    .line 117
    :cond_10
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    if-eqz p0, :cond_11

    .line 118
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 119
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 120
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    .line 121
    invoke-static {p0, p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    goto :goto_a

    .line 122
    :cond_11
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 123
    invoke-static {p0, p2, p1}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    :cond_12
    :goto_a
    return-void

    .line 124
    :pswitch_7
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 125
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 126
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_b

    .line 127
    :cond_13
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    :cond_14
    :goto_b
    return-void

    .line 128
    :pswitch_8
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 129
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 130
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result p2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentCliCamera()Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/motorola/camera/settings/SettingsHelper;->isDolbyVisionSupported(IIZ)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_c

    .line 131
    :cond_15
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DOLBY_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    :cond_16
    :goto_c
    return-void

    .line 132
    :pswitch_9
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 133
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionFHDSupported()Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_e

    .line 134
    :cond_17
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 135
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    if-eqz p0, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionOnAndAllowedSupported()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_d

    :cond_18
    const/4 p0, 0x0

    .line 136
    :goto_d
    iget-boolean p2, p2, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-eq p0, p2, :cond_19

    .line 137
    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    :cond_19
    :goto_e
    return-void

    .line 138
    :pswitch_a
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 139
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SETTINGS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    return-void

    .line 140
    :pswitch_b
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 141
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    if-eqz p0, :cond_1a

    .line 142
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    .line 143
    iget-object p3, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 144
    check-cast p3, Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 145
    invoke-static {p2, p3, v0}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    goto :goto_f

    .line 146
    :cond_1a
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p3, 0x0

    .line 147
    invoke-static {p2, p3, p1}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    .line 148
    :goto_f
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->EXTERNAL_MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 149
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    if-nez p0, :cond_1b

    .line 150
    iget-object p0, p2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 151
    invoke-virtual {p0, p2}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    goto :goto_10

    .line 152
    :cond_1b
    iget-object p0, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 153
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p3, 0x2

    if-ne p0, p3, :cond_1d

    .line 154
    :cond_1c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 155
    invoke-virtual {p2, p0, p1}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    :cond_1d
    :goto_10
    return-void

    .line 156
    :pswitch_c
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 157
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGestureVideoEnabledModes()Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_11

    .line 158
    :cond_1e
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    if-eqz p0, :cond_1f

    .line 159
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    goto :goto_11

    .line 160
    :cond_1f
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 161
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 162
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    .line 163
    invoke-static {p0, p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    :goto_11
    return-void

    .line 164
    :pswitch_d
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 166
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExternalDisplaySupport()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 167
    invoke-static {}, Lcom/motorola/camera/VideoHelper;->isDisableExternalDisplayVideoSize()Z

    move-result p1

    if-nez p1, :cond_20

    .line 168
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode()Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_12

    .line 169
    :cond_20
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    if-eqz p0, :cond_21

    .line 170
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    goto :goto_12

    .line 171
    :cond_21
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 172
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 173
    check-cast p1, Ljava/lang/Integer;

    const/4 p2, 0x0

    .line 174
    invoke-static {p0, p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    :cond_22
    :goto_12
    return-void

    .line 175
    :pswitch_e
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 176
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    return-void

    .line 177
    :pswitch_f
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 178
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result p1

    .line 179
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoSupported()Z

    move-result p3

    .line 180
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_24

    .line 181
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_13

    :cond_23
    move v0, v1

    goto :goto_14

    :cond_24
    :goto_13
    move v0, v2

    .line 182
    :goto_14
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p2

    if-nez p1, :cond_25

    if-eqz p2, :cond_27

    :cond_25
    if-eqz p3, :cond_27

    if-eqz v0, :cond_27

    .line 183
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    if-eqz p0, :cond_26

    .line 184
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 185
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 186
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    invoke-static {p0, p1, v2}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    goto :goto_15

    .line 188
    :cond_26
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x0

    .line 189
    invoke-static {p0, p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    :cond_27
    :goto_15
    return-void

    .line 190
    :pswitch_10
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    .line 191
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "VIDEO_RECORDING"

    const/4 v3, 0x0

    .line 192
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_29

    .line 193
    iget-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    if-eqz v2, :cond_28

    if-eqz v1, :cond_29

    .line 194
    :cond_28
    invoke-virtual {v0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v0

    .line 195
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    if-eqz v0, :cond_29

    .line 196
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    .line 197
    sget-object v1, Lcom/motorola/camera/saving/SavingFileKeepAlive;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v2, Lcom/motorola/camera/saving/SavingFileKeepAlive$addSavingJob$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/saving/SavingFileKeepAlive$addSavingJob$1;-><init>(ILkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {v1, v3, v3, v2, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 198
    :cond_29
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 199
    :pswitch_11
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 200
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AF_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    .line 201
    :pswitch_12
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 202
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "CANCELLED"

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 203
    :pswitch_13
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/DnDHandler;->muteNotifications(Z)V

    return-void

    .line 204
    :pswitch_14
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_17

    .line 206
    :cond_2a
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "IS_SPLIT_SCREEN"

    .line 207
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 208
    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IS_FOLD_FULL_SCREEN"

    .line 209
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 210
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p2

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getAllSettings(ZZZZ)Ljava/util/ArrayList;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2b
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 212
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result p3

    if-eqz p3, :cond_2c

    iget-object p3, p2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 213
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2c

    goto :goto_16

    .line 214
    :cond_2c
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    .line 215
    iget-object p3, p3, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 216
    sget-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    if-eq p3, v0, :cond_2d

    sget-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_RESTART:Lcom/motorola/camera/settings/Setting$UpdateType;

    if-ne p3, v0, :cond_2b

    .line 217
    :cond_2d
    iget-boolean p3, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    invoke-static {p2, p3}, Lcom/motorola/camera/settings/SettingsManager;->setLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    goto :goto_16

    :cond_2e
    :goto_17
    return-void

    .line 218
    :pswitch_15
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 219
    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p1, :cond_2f

    .line 220
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 221
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object p3, Lcom/motorola/camera/CameraKpi$KPI;->FRAME_COLLECTED:Lcom/motorola/camera/CameraKpi$KPI;

    .line 222
    invoke-virtual {p1, p3}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 223
    :cond_2f
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result p1

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->STOP_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_32

    .line 224
    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->isStarTrailCapture(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 225
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 226
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto/16 :goto_18

    :cond_30
    if-eqz v0, :cond_31

    .line 227
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 228
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    .line 229
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 230
    invoke-static {p1, p0, v1, p2}, Lcom/google/zxing/Result;->stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    goto :goto_18

    .line 231
    :cond_31
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 232
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_18

    .line 233
    :cond_32
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 234
    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->isStarTrailCapture(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 235
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 236
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_18

    :cond_33
    if-eqz v0, :cond_35

    .line 237
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "CLOSED"

    const/4 v2, 0x0

    .line 238
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 239
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 240
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_18

    .line 241
    :cond_34
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    .line 242
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 243
    invoke-static {p1, p0, v1, p2}, Lcom/google/zxing/Result;->stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    goto :goto_18

    .line 244
    :cond_35
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 245
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_18

    .line 246
    :cond_36
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    .line 247
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 248
    invoke-static {p1, p0, v1, p2}, Lcom/google/zxing/Result;->stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    :goto_18
    return-void

    .line 249
    :pswitch_16
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 250
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/4 v1, 0x5

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(IZ)V

    .line 251
    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 252
    :pswitch_17
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 253
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    .line 254
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    const/4 p2, 0x1

    const-string p3, "IS_FOLD_FULL_SCREEN"

    const/4 v0, 0x0

    const-string v1, "IS_FOLD_DUAL_PANE_SCREEN"

    if-eqz p0, :cond_37

    .line 255
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 256
    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_19

    .line 257
    :cond_37
    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    invoke-virtual {p1, p3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_19
    return-void

    .line 259
    :pswitch_18
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 260
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->FIRST_USE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    if-eqz p0, :cond_38

    .line 261
    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    .line 262
    const-string p1, "BACK_KEY"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1a

    .line 263
    :cond_38
    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->clearBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    :goto_1a
    return-void

    .line 264
    :pswitch_19
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 265
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "SKIP"

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 266
    :pswitch_1a
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 267
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    if-eqz p0, :cond_39

    .line 268
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x2

    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 270
    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1b

    .line 271
    :cond_39
    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_FOCUS_TRACKING_AUTO_MODE:Z

    if-eqz p0, :cond_3a

    .line 272
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x1

    .line 273
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 274
    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1b

    .line 275
    :cond_3a
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x0

    .line 276
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 277
    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_1b
    return-void

    .line 278
    :pswitch_1b
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 279
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBGServiceProcessingSupported()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 280
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupBGServiceProcessing()V

    .line 281
    :cond_3b
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->mEnter:Z

    const-string p1, "Fg Service"

    if-eqz p0, :cond_3c

    .line 282
    invoke-static {p1}, Lcom/google/zxing/Result;->add(Ljava/lang/String;)V

    goto :goto_1c

    .line 283
    :cond_3c
    invoke-static {p1}, Lcom/google/zxing/Result;->remove(Ljava/lang/String;)V

    :goto_1c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 3
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 4
    :pswitch_2
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 5
    :pswitch_3
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 6
    :pswitch_4
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 7
    :pswitch_5
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 8
    :pswitch_6
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 9
    :pswitch_7
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 10
    :pswitch_8
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 11
    :pswitch_9
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 12
    :pswitch_a
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 13
    :pswitch_b
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 14
    :pswitch_c
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 15
    :pswitch_d
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 16
    :pswitch_e
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 17
    :pswitch_f
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 18
    :pswitch_10
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 19
    :pswitch_11
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 20
    :pswitch_12
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 21
    :pswitch_13
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 22
    :pswitch_14
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 23
    :pswitch_15
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 24
    :pswitch_16
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 25
    :pswitch_17
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 26
    :pswitch_18
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 27
    :pswitch_19
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 28
    :pswitch_1a
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 29
    :pswitch_1b
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
