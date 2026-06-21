.class public final Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;->$r8$classId:I

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;->$r8$classId:I

    const/4 v0, 0x6

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    return-void
.end method

.method public static preserveExposure(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 4

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v0, "PANO_SENSOR_EXPOSURE_TIME"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "PANO_SENSOR_SENSITIVITY"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    if-lez p1, :cond_0

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v0, Lcom/motorola/camera/panorama/PanoHelper;->PANO_SENSOR_FRAME_DURATION:Ljava/lang/Long;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final processForPartialChanges$com$motorola$camera$fsm$camera$states$runnables$PanoFocusExposureLockRunnable(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public configureBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 6

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    xor-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    invoke-static {p1, v3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v4, :cond_0

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-eqz p0, :cond_1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v5

    if-nez v5, :cond_6

    if-ne v0, v4, :cond_3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v2, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTorchAutoRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    :cond_2
    if-eq v3, v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne v3, v4, :cond_4

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_5

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_6
    :goto_0
    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p2

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isStreamingSupportedByCurrentMode(Z)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object p2

    if-eqz p0, :cond_7

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    sget-object p1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p0, p2, v2, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    return-void

    :cond_7
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    sget-object p1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p0, p2, v2, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public processForPartialChanges(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->processForPartialChanges(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 3
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 5
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->PANORAMA_CAPTURE_FPS_24:Lcom/motorola/camera/AppFeatures$Feature;

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->setupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-static {p2, v0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 10
    invoke-static {p2, v0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 11
    invoke-static {v1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;->preserveExposure(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 12
    invoke-static {v0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;->preserveExposure(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 13
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;->configureBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;->configureBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
