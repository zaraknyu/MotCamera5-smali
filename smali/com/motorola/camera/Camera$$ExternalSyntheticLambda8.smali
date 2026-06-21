.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->$r8$classId:I

    const-string v1, "BatteryHandler"

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_THERMAL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    sget-object v2, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->FEATURES_LEVEL_2:Ljava/util/EnumSet;

    const-string v2, "ThermalHandler"

    invoke-static {v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->isHandlerLimited(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoRecording(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isJapanCarrier()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HIGH_THERMAL_LEVEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_1_PERC:Ljava/util/EnumSet;

    invoke-static {v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->isHandlerLimited(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->RECORD_STOP:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoRecording(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDER_STOPPED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->notifyCaptureSave()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/VideoHelper;->getFormatForMode(I)Lcom/motorola/camera/VideoFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/VideoHelper;->isThermalRestricted(Lcom/motorola/camera/VideoFormat;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mVideoSizeLimited:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v2, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mVideoSizeLimited:Z

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mVideoSizeLimited:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v2, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mVideoSizeLimited:Z

    :cond_3
    :goto_0
    sget-object p0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_RESOLUTION:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_6K_SIZES:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->disableValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->disableValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->getFormatForMode(I)Lcom/motorola/camera/VideoFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->isThermalRestricted(Lcom/motorola/camera/VideoFormat;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K:Landroid/util/Size;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_6K_SIZES:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->enableValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->enableValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    :cond_5
    :goto_1
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;

    sget-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->RECORD_STOP:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->notifyCaptureSave()V

    :cond_6
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    sget-object v0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_1_PERC:Ljava/util/EnumSet;

    invoke-static {v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->isHandlerLimited(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoRecording(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDER_STOPPED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->notifyCaptureSave()V

    :cond_7
    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/Controller;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isJapanCarrier()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->CAMERA_EXIT:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    iget-object v0, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/Fsm;

    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoRecording(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->handleHighThermalFeatureLimit()V

    :cond_8
    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/Camera;

    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->handleAlwaysOnToastsStateChange()Z

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldSetupBrightnessBump()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->setupBrightnessBump(Landroid/view/Window;Z)V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
