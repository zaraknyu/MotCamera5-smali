.class public final Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v0, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->$r8$classId:I

    const/16 v4, 0x3c

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/16 v9, 0x1e

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v3, :pswitch_data_0

    .line 31
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    .line 33
    new-instance v1, Lcom/motorola/camera/panorama/PanoCleanupCallable;

    .line 34
    invoke-direct {v1, v8, v11}, Lcom/motorola/camera/panorama/PanoCleanupCallable;-><init>(Lcom/motorola/camera/panorama/PanoListener;I)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/motorola/camera/panorama/PanoramaService;->addCallable(Lcom/motorola/camera/panorama/PanoCallable;)V

    return-void

    .line 36
    :pswitch_0
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 37
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    .line 38
    :pswitch_1
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 39
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 40
    iput-boolean v11, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    .line 41
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "SEQ_ID"

    .line 42
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz v3, :cond_0

    .line 43
    invoke-static {v3}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 44
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 45
    :cond_0
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    .line 46
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    .line 47
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    .line 49
    sget-object v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 50
    invoke-static {v3, v4, v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->containsTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 51
    invoke-static {v3, v4, v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 52
    :cond_1
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    invoke-direct {v3, v0, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Z)V

    move-object/from16 v12, p1

    invoke-virtual {v3, v12, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    move-object/from16 v12, p1

    .line 53
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 55
    iput-boolean v11, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    .line 56
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 57
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CS_KEY_AVAILABLE_MODES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    .line 58
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 61
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->P2_KEY_SUPPORT_MODES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    .line 62
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 64
    invoke-virtual {v1, v3, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 65
    array-length v2, v0

    move v3, v11

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v0, v3

    if-ne v4, v10, :cond_2

    .line 66
    sput-boolean v10, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->mMtkCshotSupport:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    :cond_3
    :goto_1
    array-length v0, v1

    :goto_2
    if-ge v11, v0, :cond_5

    aget v2, v1, v11

    if-ne v2, v10, :cond_4

    .line 68
    sput-boolean v10, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->mMtkSpeedUpSupported:Z

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void

    :pswitch_3
    move-object/from16 v12, p1

    .line 69
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->handleStorageFull()V

    return-void

    :pswitch_4
    move-object/from16 v12, p1

    .line 71
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->EXITED_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 73
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 74
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v7, :cond_6

    add-int/2addr v1, v10

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 76
    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_7

    .line 77
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_EXIT_CAMERA_AFTER_SUB_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_7
    return-void

    :pswitch_5
    move-object/from16 v12, p1

    .line 78
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "perm_request_code"

    invoke-virtual {v0, v1, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    :pswitch_6
    move-object/from16 v12, p1

    .line 81
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 83
    const-string/jumbo v1, "perm_request_code"

    invoke-virtual {v0, v1, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    :pswitch_7
    move-object/from16 v12, p1

    .line 84
    const-string v3, "SKIP_FSM_REINIT"

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 86
    iget v2, v0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    if-lez v2, :cond_8

    move v2, v10

    goto :goto_4

    :cond_8
    move v2, v11

    .line 87
    :goto_4
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isCameraActivityStarted()Z

    move-result v0

    .line 88
    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "OPEN_AFTER_CLOSE"

    invoke-virtual {v5, v6, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 89
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "CLOSE_AFTER_OPEN"

    invoke-virtual {v4, v5, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 90
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;->sActiveInstance:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    monitor-enter v4

    .line 91
    :try_start_0
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_a

    .line 92
    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mIdentifier:Ljava/lang/Integer;

    if-ne v4, v5, :cond_9

    goto :goto_5

    :cond_9
    move v10, v11

    .line 93
    :cond_a
    :goto_5
    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v3, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 94
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    if-eqz v10, :cond_b

    if-nez v5, :cond_b

    .line 95
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    .line 96
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_8
    move-object/from16 v12, p1

    .line 97
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CHECK_LOCATION_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 99
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 100
    invoke-virtual {v2, v1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 101
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 102
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 103
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 104
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 105
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_c

    .line 106
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionsManager;->isAnyPermissionGranted([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 107
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 108
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 109
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_c
    return-void

    :pswitch_9
    move-object/from16 v12, p1

    .line 110
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ON_DESTROY"

    invoke-virtual {v2, v3, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 112
    sget-object v2, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 113
    iget-object v2, v2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/device/CameraStateManager;

    .line 114
    invoke-virtual {v2}, Lcom/motorola/camera/device/CameraStateManager;->allCamerasClosed()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 115
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 116
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_6

    .line 117
    :cond_d
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 118
    const-string v0, "Main$DestroyContextRunnable"

    const-string v1, "Wait for close camera and destroy FSM context"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_6
    return-void

    :pswitch_a
    move-object/from16 v12, p1

    .line 119
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 120
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 121
    const-string v1, "OPEN_GALLERY_HAS_VISIBLE_DATA"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 122
    invoke-static {}, Lcom/motorola/camera/Util;->setupGalleryWithCustomAnimation()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_f
    move v10, v11

    .line 123
    :goto_7
    const-string v1, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {v0, v1, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :pswitch_b
    move-object/from16 v12, p1

    .line 124
    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v4, Lcom/motorola/camera/device/exception/CameraErrorTypes;->VID_REC_START_ERR:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    sget-object v7, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_OPEN_ERROR:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    sget-object v9, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_DISABLED_ERROR:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    const-string v13, "error_retry_count"

    const-string v14, "error_retry"

    const-string v15, "ErrorState$ErrorAlwaysCodeRunnable"

    const-string v5, "OPEN_CAMERA_ERROR"

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 125
    iget-object v12, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 126
    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v12, v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v8

    .line 127
    instance-of v12, v2, Landroid/os/Bundle;

    if-eqz v12, :cond_11

    move-object v6, v2

    check-cast v6, Landroid/os/Bundle;

    .line 128
    invoke-virtual {v6, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    const-string v11, "IS_EXTERNAL_CAMERA"

    .line 129
    invoke-virtual {v6, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 130
    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    const v4, 0x7f120135

    if-eqz v2, :cond_10

    .line 131
    new-instance v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {v2}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    const v3, 0x7f120136

    .line 132
    iput v3, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    .line 133
    iput v4, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    .line 134
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v1

    .line 135
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v10}, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;I)V

    .line 136
    iput-object v3, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const v0, 0x7f120141

    .line 137
    iput v0, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    .line 138
    iput-boolean v1, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->keepOrientation:Z

    .line 139
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 140
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 142
    :cond_10
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 143
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 145
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto/16 :goto_13

    :cond_11
    if-eqz v12, :cond_14

    .line 146
    move-object v6, v2

    check-cast v6, Landroid/os/Bundle;

    .line 147
    invoke-virtual {v6, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12

    .line 148
    invoke-virtual {v6, v14}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 149
    :cond_12
    invoke-virtual {v8, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v11, 0x2

    if-ge v6, v11, :cond_14

    .line 150
    invoke-virtual {v8, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v11, :cond_13

    goto :goto_8

    :cond_13
    const/4 v10, 0x0

    .line 151
    :goto_8
    invoke-virtual {v8, v14, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 153
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    const/4 v2, 0x0

    .line 154
    invoke-direct {v1, v3, v8, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 155
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto/16 :goto_13

    .line 156
    :cond_14
    instance-of v6, v2, Ljava/io/IOException;

    if-nez v6, :cond_15

    instance-of v6, v2, Landroid/database/sqlite/SQLiteException;

    if-eqz v6, :cond_16

    .line 157
    :cond_15
    sget-object v6, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    .line 158
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 159
    const-string v11, "getInstance(...)"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v6}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v13

    const-wide/32 v17, 0x9600000

    cmp-long v6, v13, v17

    if-gez v6, :cond_16

    .line 161
    new-instance v1, Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData;-><init>(Ljava/lang/Integer;)V

    .line 162
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;I)V

    .line 163
    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const v0, 0x1040009

    .line 164
    iput v0, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    .line 165
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 166
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_16
    if-eqz v12, :cond_17

    .line 167
    move-object v6, v2

    check-cast v6, Landroid/os/Bundle;

    const-string v11, "NO_CAMERAS_ERROR"

    .line 168
    invoke-virtual {v6, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    goto/16 :goto_13

    .line 169
    :cond_17
    invoke-virtual {v8}, Landroid/os/Bundle;->clear()V

    .line 170
    sget-object v6, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_ERROR_UNKNOWN:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    .line 171
    iget-object v8, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mLastError:Ljava/lang/Object;

    .line 172
    instance-of v11, v8, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    if-eqz v11, :cond_18

    .line 173
    check-cast v8, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    goto :goto_a

    .line 174
    :cond_18
    instance-of v11, v8, Lcom/motorola/camera/fsm/camera/StateKey;

    if-eqz v11, :cond_19

    .line 175
    new-instance v11, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    check-cast v8, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-direct {v11, v8, v13, v12}, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;-><init>(Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Exception;I)V

    :goto_9
    move-object v8, v11

    goto :goto_a

    :cond_19
    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 176
    instance-of v11, v8, Ljava/lang/Integer;

    if-eqz v11, :cond_1a

    .line 177
    new-instance v11, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v11, v13, v13, v8}, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;-><init>(Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Exception;I)V

    goto :goto_9

    .line 178
    :cond_1a
    new-instance v8, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    invoke-direct {v8, v13, v13, v12}, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;-><init>(Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Exception;I)V

    .line 179
    :goto_a
    iget-object v11, v8, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 180
    iget-object v12, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mLastError:Ljava/lang/Object;

    .line 181
    instance-of v13, v12, Landroid/os/Bundle;

    if-eqz v13, :cond_1b

    .line 182
    check-cast v12, Landroid/os/Bundle;

    .line 183
    invoke-virtual {v12, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    move/from16 v16, v5

    goto :goto_b

    :cond_1b
    const/16 v16, 0x0

    :goto_b
    const v5, 0x7f120128

    const v12, 0x7f12012b

    const v13, 0x7f120122

    if-eqz v11, :cond_1f

    .line 184
    sget-object v14, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v14, v11}, Lcom/motorola/camera/fsm/camera/StateKey;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 185
    iget-object v6, v8, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mException:Ljava/lang/Exception;

    .line 186
    instance-of v8, v6, Lcom/motorola/camera/device/exception/CameraDisabledException;

    if-eqz v8, :cond_1d

    .line 187
    check-cast v6, Lcom/motorola/camera/device/exception/CameraDisabledException;

    .line 188
    iget v5, v6, Lcom/motorola/camera/device/exception/CameraDisabledException;->mSource:I

    const/4 v11, 0x2

    if-ne v5, v11, :cond_1c

    const v5, 0x7f120124

    const v6, 0x7f120123

    :goto_c
    move v12, v5

    move v5, v6

    goto :goto_d

    :cond_1c
    const v5, 0x7f120126

    const v6, 0x7f120125

    goto :goto_c

    :goto_d
    move-object v7, v9

    goto :goto_f

    :cond_1d
    const v12, 0x7f120129

    goto :goto_f

    :cond_1e
    move-object v7, v6

    :goto_e
    move v5, v13

    goto :goto_f

    :cond_1f
    if-eqz v16, :cond_20

    goto :goto_f

    .line 189
    :cond_20
    iget v5, v8, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mHalErrorCode:I

    const/16 v7, 0x64

    if-ne v5, v7, :cond_1e

    .line 190
    sget-object v7, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_ERROR_SERVER_DIED:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    goto :goto_e

    :goto_f
    if-eqz v2, :cond_23

    .line 191
    instance-of v6, v2, Landroid/os/Bundle;

    if-eqz v6, :cond_23

    .line 192
    check-cast v2, Landroid/os/Bundle;

    const-string v6, "error_message"

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    const-string v6, "Quota exceeded"

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 194
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 195
    new-instance v6, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/16 v8, 0xb

    invoke-direct {v6, v8}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v2, v6}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_10

    .line 196
    :cond_21
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v8, 0x7f12065a

    .line 197
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 199
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v8, 0x7f120659

    .line 200
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 201
    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    const v12, 0x7f120178

    const v5, 0x7f120177

    move-object v7, v4

    .line 202
    :cond_23
    :goto_10
    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    if-nez v2, :cond_25

    if-eq v7, v4, :cond_25

    if-ne v7, v9, :cond_24

    goto :goto_11

    .line 203
    :cond_24
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 204
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 206
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_12

    .line 207
    :cond_25
    :goto_11
    new-instance v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {v2}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    const/4 v3, -0x1

    if-eq v12, v3, :cond_26

    .line 208
    iput v12, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    :cond_26
    if-eq v5, v3, :cond_27

    .line 209
    iput v5, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    .line 210
    :cond_27
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v1

    .line 211
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v10}, Lcom/motorola/camera/fsm/camera/states/ErrorState$ErrorAlwaysCodeRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;I)V

    .line 212
    iput-object v3, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const v0, 0x7f120141

    .line 213
    iput v0, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    .line 214
    iput-boolean v1, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->keepOrientation:Z

    .line 215
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 216
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 218
    :goto_12
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 219
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    .line 220
    iget-object v0, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    .line 221
    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 222
    const-string v1, "ERRTYP"

    .line 223
    iget-object v2, v7, Lcom/motorola/camera/device/exception/CameraErrorTypes;->mName:Ljava/lang/String;

    .line 224
    invoke-virtual {v0, v1, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :pswitch_c
    move-object/from16 v12, p1

    .line 225
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 226
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 227
    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 228
    check-cast v1, Lcom/motorola/camera/VideoFormat;

    .line 229
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCodecVideoSize()Landroid/util/Size;

    move-result-object v2

    .line 230
    iget-object v3, v1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, v1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 231
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-le v3, v5, :cond_2b

    .line 232
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    .line 233
    invoke-virtual {v0, v3}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/VideoFormat;

    .line 235
    invoke-static {v4}, Lcom/motorola/camera/utility/ColorUtil;->getAspectRatio(Landroid/util/Size;)F

    move-result v5

    iget-object v6, v3, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 236
    invoke-static {v6}, Lcom/motorola/camera/utility/ColorUtil;->getAspectRatio(Landroid/util/Size;)F

    move-result v7

    .line 237
    invoke-static {v5, v7}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v5

    .line 238
    iget-object v7, v3, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    iget-object v8, v1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 239
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    .line 240
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 241
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 242
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-gt v6, v8, :cond_29

    move v6, v10

    goto :goto_14

    :cond_29
    const/4 v6, 0x0

    :goto_14
    if-eqz v5, :cond_28

    if-eqz v7, :cond_28

    if-eqz v6, :cond_28

    move-object v1, v3

    .line 243
    :cond_2a
    iget-object v0, v1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 244
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 245
    invoke-static {v0}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object v3

    .line 246
    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 247
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 248
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 249
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 250
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_2b
    return-void

    :pswitch_d
    move-object/from16 v12, p1

    move/from16 v16, v11

    .line 251
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 252
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 253
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v0

    .line 254
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 255
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    .line 256
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 257
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 258
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 259
    const-string v4, "PREVIOUS_ZOOM"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_2c
    if-eqz v0, :cond_2f

    .line 260
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 261
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 262
    invoke-virtual {v2, v1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 263
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 264
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v10, :cond_2d

    .line 265
    invoke-static {v0, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 266
    :cond_2d
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 267
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DOLBY_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 268
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcOn()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 269
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 270
    :cond_2e
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 271
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f120607

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    .line 272
    iput-object v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    .line 273
    invoke-static {v2, v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_2f
    return-void

    :pswitch_e
    move-object/from16 v12, p1

    .line 274
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 275
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 276
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v1

    .line 277
    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 278
    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_PORTRAIT_HD:Lcom/motorola/camera/AppFeatures$Feature;

    .line 279
    iget-object v2, v2, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v2, Ljava/util/EnumSet;

    .line 280
    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 281
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getNormalVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v1

    .line 282
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    .line 283
    :cond_30
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 284
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 285
    check-cast v0, Lcom/motorola/camera/VideoFormat;

    .line 286
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCodecVideoPortraitSize()Landroid/util/Size;

    move-result-object v2

    .line 287
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/VideoFormat;

    .line 288
    iget-object v4, v3, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    .line 289
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 290
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    iget-object v4, v3, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 291
    invoke-static {v4}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v4

    .line 292
    invoke-static {v2}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v5

    if-gt v4, v5, :cond_31

    move-object v0, v3

    .line 293
    :cond_32
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 294
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 295
    invoke-static {v2}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object v2

    .line 296
    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 297
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 298
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 299
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 300
    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_f
    move-object/from16 v12, p1

    .line 301
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 302
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 303
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 304
    check-cast v0, Lcom/motorola/camera/VideoFormat;

    .line 305
    iget-object v0, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v0

    .line 306
    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 307
    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_PORTRAIT_HD:Lcom/motorola/camera/AppFeatures$Feature;

    .line 308
    iget-object v2, v2, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v2, Ljava/util/EnumSet;

    .line 309
    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 310
    sget-object v2, Lcom/motorola/camera/VideoFormat;->HD:Landroid/util/Size;

    goto :goto_15

    :cond_33
    sget-object v2, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    .line 311
    :goto_15
    invoke-static {v2}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v2

    if-gt v0, v2, :cond_34

    move v0, v10

    goto :goto_16

    :cond_34
    const/4 v0, 0x0

    .line 312
    :goto_16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v2

    if-eqz v2, :cond_35

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 313
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 314
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 315
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_35

    move v2, v10

    goto :goto_17

    :cond_35
    const/4 v2, 0x0

    .line 316
    :goto_17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyEnabled()Z

    move-result v3

    .line 317
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionOn()Z

    move-result v4

    .line 318
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v5

    .line 319
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v6

    if-eqz v6, :cond_36

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 320
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 321
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 322
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_36

    move v6, v10

    goto :goto_18

    :cond_36
    const/4 v6, 0x0

    .line 323
    :goto_18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDolbyVisionMode()Z

    move-result v7

    .line 324
    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 325
    const-string v8, "MODE"

    .line 326
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode(I)Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_19

    :cond_37
    const/4 v10, 0x0

    :goto_19
    if-nez v3, :cond_38

    if-nez v2, :cond_38

    if-eqz v0, :cond_38

    if-nez v4, :cond_38

    if-nez v6, :cond_38

    if-nez v7, :cond_38

    if-nez v5, :cond_38

    if-eqz v10, :cond_39

    .line 327
    :cond_38
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_39
    return-void

    :pswitch_10
    move-object/from16 v12, p1

    .line 328
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 329
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoFamilyMode()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 330
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcOn()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 331
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 332
    :cond_3a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupVideoStabilization()V

    :cond_3b
    return-void

    :pswitch_11
    move-object/from16 v12, p1

    .line 333
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 334
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 335
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 336
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 337
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_3c

    move v0, v10

    goto :goto_1a

    :cond_3c
    const/4 v0, 0x0

    .line 338
    :goto_1a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyEnabled()Z

    move-result v2

    .line 339
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v3

    .line 340
    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 341
    const-string v4, "MODE"

    .line 342
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_1b

    :cond_3d
    const/4 v10, 0x0

    :goto_1b
    if-eqz v2, :cond_3e

    if-nez v0, :cond_3f

    :cond_3e
    if-nez v3, :cond_3f

    if-eqz v10, :cond_40

    .line 343
    :cond_3f
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_40
    return-void

    :pswitch_12
    move-object/from16 v12, p1

    .line 344
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 345
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorToneFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    const/16 v16, 0x0

    .line 346
    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/SettingsHelper;->updateImagePreferenceSelector(I)V

    :cond_41
    return-void

    :pswitch_13
    move-object/from16 v12, p1

    .line 347
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 348
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 349
    const-string v1, "SETTING"

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v1, "TEN_BIT_MODE_SWITCH_CASE"

    .line 351
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 352
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void

    :pswitch_14
    move-object/from16 v12, p1

    .line 353
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 354
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 355
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimitedDueToNoFastFrameRate(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 356
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldDisplayZoomLimitedToast()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 357
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 358
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v2, 0x7f1205d1

    .line 359
    invoke-static {v2, v0, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_42
    return-void

    :pswitch_15
    move-object/from16 v12, p1

    .line 360
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 361
    move-object v0, v2

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "TEN_BIT_MODE_SWITCH_CASE"

    .line 362
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    .line 363
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 364
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDolbyVisionMode()Z

    move-result v2

    if-eqz v2, :cond_43

    const v2, 0x7f120600

    .line 365
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    .line 366
    :cond_43
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10PlusSupported()Z

    move-result v2

    if-eqz v2, :cond_44

    const v2, 0x7f1202d1

    .line 367
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    :cond_44
    const v2, 0x7f1202d0

    .line 368
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1c
    const v3, 0x7f120601

    .line 369
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 370
    :goto_1d
    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_ENTER_TEN_BIT_MODE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-ne v0, v2, :cond_45

    .line 371
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 372
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    invoke-static {v2, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_45
    return-void

    :pswitch_16
    move-object/from16 v12, p1

    .line 374
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 375
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 376
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 377
    check-cast v0, Lcom/motorola/camera/VideoFormat;

    .line 378
    iget-boolean v0, v0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    if-nez v0, :cond_46

    .line 379
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_46
    return-void

    :pswitch_17
    move-object/from16 v12, p1

    .line 380
    const-string v3, "MODE"

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 381
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 382
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 383
    check-cast v0, Lcom/motorola/camera/VideoFormat;

    .line 384
    iget-object v2, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    iget-object v0, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 385
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v9, :cond_47

    move v2, v10

    goto :goto_1e

    :cond_47
    const/4 v2, 0x0

    .line 386
    :goto_1e
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 387
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 388
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 389
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getFilterVideoThreshold()I

    move-result v4

    if-gt v0, v4, :cond_48

    move v11, v10

    goto :goto_1f

    :cond_48
    const/4 v11, 0x0

    .line 390
    :goto_1f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode()Z

    move-result v0

    if-eqz v0, :cond_4a

    if-eqz v2, :cond_49

    if-nez v11, :cond_4a

    .line 391
    :cond_49
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "Original"

    invoke-static {v2, v0}, Lcom/motorola/camera/settings/SettingsHelper;->setMeisheVideoFilterValues(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 392
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 393
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 394
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 395
    invoke-virtual {v0, v3, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4a
    return-void

    :pswitch_18
    move-object/from16 v12, p1

    .line 396
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 397
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 398
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 399
    check-cast v0, Lcom/motorola/camera/VideoFormat;

    .line 400
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 401
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 402
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 403
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 404
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 405
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 406
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoEnabled()Z

    move-result v4

    .line 407
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode()Z

    move-result v5

    .line 408
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result v6

    if-nez v6, :cond_4c

    .line 409
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v6

    if-nez v6, :cond_4c

    .line 410
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v6

    if-eqz v6, :cond_4b

    if-nez v1, :cond_4b

    if-ne v3, v10, :cond_4b

    goto :goto_20

    :cond_4b
    const/4 v1, 0x0

    goto :goto_21

    :cond_4c
    :goto_20
    move v1, v10

    .line 411
    :goto_21
    iget-object v0, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v0

    sget-object v3, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    .line 412
    invoke-static {v3}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v3

    if-gt v0, v3, :cond_4d

    goto :goto_22

    :cond_4d
    const/4 v10, 0x0

    :goto_22
    if-nez v4, :cond_4e

    if-nez v5, :cond_4e

    if-eqz v1, :cond_4f

    if-nez v10, :cond_4f

    :cond_4e
    const/16 v16, 0x0

    .line 413
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_4f
    return-void

    .line 414
    :pswitch_19
    invoke-static {}, Lcom/motorola/camera/VideoHelper;->isDisableExternalDisplayVideoSize()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 415
    invoke-static {}, Lcom/motorola/camera/VideoHelper;->updateExternalDisplayLimitVideoSize()V

    :cond_50
    return-void

    .line 416
    :pswitch_1a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, v2, :cond_51

    .line 417
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v19, v2

    move-object v2, v0

    move-object/from16 v0, v19

    goto :goto_23

    .line 418
    :cond_51
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    .line 419
    :goto_23
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 420
    const-string v4, "CAMERA_TYPE"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 421
    const-string v2, "ORIGIN_CAMERA_TYPE"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 422
    const-string v0, "IS_MANUAL_JUMP"

    invoke-virtual {v3, v0, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 423
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v4, 0x0

    .line 424
    invoke-direct {v0, v2, v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 425
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    .line 426
    :pswitch_1b
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "WAIT_MODE"

    const/4 v12, -0x1

    .line 427
    invoke-virtual {v2, v3, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 428
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    .line 429
    const-string v4, "MODE"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 430
    const-string v2, "MODE_DIRECTION"

    .line 431
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "WAIT_DIRECTION"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    .line 432
    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 433
    const-string v2, "SWITCH_CASE"

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 434
    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PREVIOUS_ZOOM"

    const/4 v2, 0x0

    .line 435
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_52

    .line 436
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_52
    return-void

    :pswitch_1c
    move-object/from16 v12, p1

    .line 437
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 438
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->clearModesBuilders()V

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

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 3
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 4
    :pswitch_2
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 5
    :pswitch_3
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 6
    :pswitch_4
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 7
    :pswitch_5
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 8
    :pswitch_6
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 9
    :pswitch_7
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 10
    :pswitch_8
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 11
    :pswitch_9
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 12
    :pswitch_a
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 13
    :pswitch_b
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 14
    :pswitch_c
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 15
    :pswitch_d
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 16
    :pswitch_e
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 17
    :pswitch_f
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 18
    :pswitch_10
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 19
    :pswitch_11
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 20
    :pswitch_12
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 21
    :pswitch_13
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 22
    :pswitch_14
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 23
    :pswitch_15
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 24
    :pswitch_16
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 25
    :pswitch_17
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 26
    :pswitch_18
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 27
    :pswitch_19
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 28
    :pswitch_1a
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 29
    :pswitch_1b
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 30
    :pswitch_1c
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

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
