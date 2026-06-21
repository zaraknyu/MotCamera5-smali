.class public Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->$r8$classId:I

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->$r8$classId:I

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    iget v3, v1, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->$r8$classId:I

    const/16 v4, 0x10e

    const/16 v5, 0xb4

    const/16 v6, 0x5a

    sget-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v3, :pswitch_data_0

    .line 12
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/os/Bundle;

    .line 13
    const-string v4, "ISC_LUX_IDX_THRESH_MET"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v5

    .line 15
    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    .line 16
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 17
    invoke-virtual {v5, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->setupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 19
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    if-eqz v2, :cond_1

    .line 20
    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 21
    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    .line 22
    const-string v5, "ANTI_BANDING_MODE"

    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    :cond_1
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->setupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 24
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 25
    :pswitch_1
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->setupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 26
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 27
    :pswitch_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup(I)Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    .line 28
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mRequestBuilders:Lcom/motorola/camera/fsm/RequestBuilders;

    .line 29
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/RequestBuilders;->getCaptureBuilders()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 30
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 31
    invoke-static {v4, v0, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoAutoFps(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_2
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_3
    if-eqz v0, :cond_6

    .line 33
    sget-object v3, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of v3, v3, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    if-nez v3, :cond_3

    goto :goto_1

    .line 34
    :cond_3
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 35
    sget-object v4, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    const-string v5, "null cannot be cast to non-null type com.motorola.camera.scenedetection.scene.VendorTagScene"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->revertTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V

    .line 36
    :cond_4
    :goto_1
    sget-object v3, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v3, :cond_6

    .line 37
    instance-of v4, v3, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    if-nez v4, :cond_5

    goto :goto_2

    .line 38
    :cond_5
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 39
    check-cast v3, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->applyTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V

    .line 40
    :cond_6
    :goto_2
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 41
    :pswitch_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 42
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v4

    .line 43
    invoke-virtual {v4, v10}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    .line 44
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 45
    invoke-virtual {v4, v9}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 46
    move-object v7, v2

    check-cast v7, Landroid/os/Bundle;

    .line 47
    const-string v8, "TORCH_AUTO_TYPE"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 48
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v3, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v4, v3, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 50
    :cond_7
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v4, v6, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 52
    :goto_3
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 53
    :pswitch_5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 54
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 55
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTorchControlEnabledForCurrentCamera()Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_8

    .line 56
    :cond_8
    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 57
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;

    .line 58
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v6

    .line 59
    invoke-virtual {v5, v6}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->getExposureInfo(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 60
    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mFlashMode:Ljava/lang/Integer;

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    :goto_4
    if-nez v5, :cond_a

    goto :goto_8

    .line 61
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v9, :cond_b

    move v5, v10

    goto :goto_5

    :cond_b
    move v5, v11

    .line 62
    :goto_5
    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->TORCH_CONTROL:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 63
    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;

    if-eqz v6, :cond_c

    .line 64
    iget-boolean v6, v6, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mIsTorchOn:Z

    if-eqz v6, :cond_c

    move v6, v10

    goto :goto_6

    :cond_c
    move v6, v11

    .line 65
    :goto_6
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    if-nez v6, :cond_d

    .line 66
    iget-object v6, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 67
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_e

    :cond_d
    move v11, v10

    :cond_e
    if-ne v5, v11, :cond_f

    goto :goto_8

    .line 68
    :cond_f
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v5

    .line 69
    invoke-virtual {v5, v10}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v6

    .line 70
    invoke-virtual {v5, v9}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    if-eqz v11, :cond_10

    .line 71
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v6, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v5, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_7

    .line 73
    :cond_10
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v6, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v5, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 75
    :goto_7
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    :goto_8
    return-void

    .line 76
    :pswitch_6
    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine;

    .line 77
    sget v7, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 78
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    if-eq v7, v6, :cond_12

    if-eq v7, v5, :cond_11

    if-eq v7, v4, :cond_13

    move v8, v11

    goto :goto_9

    :cond_11
    move v8, v9

    goto :goto_9

    :cond_12
    move v8, v10

    .line 80
    :cond_13
    :goto_9
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 81
    iget-object v5, v5, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 82
    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_ORIENTATION_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    .line 83
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 84
    invoke-virtual {v6, v3, v5, v7}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_a

    .line 85
    :cond_14
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 86
    :pswitch_7
    instance-of v3, v2, Landroid/os/Bundle;

    if-nez v3, :cond_15

    goto/16 :goto_e

    .line 87
    :cond_15
    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine;

    .line 88
    move-object v7, v2

    check-cast v7, Landroid/os/Bundle;

    const-string v12, "LOCATION"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 89
    iget v12, v7, Landroid/graphics/PointF;->x:F

    float-to-int v12, v12

    .line 90
    iget v7, v7, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    .line 91
    sget-object v13, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    .line 92
    iget-object v13, v13, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 93
    check-cast v13, Landroid/graphics/Point;

    .line 94
    new-instance v14, Lcom/motorola/camera/PreviewSize;

    iget v15, v13, Landroid/graphics/Point;->x:I

    iget v13, v13, Landroid/graphics/Point;->y:I

    invoke-direct {v14, v15, v13}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    int-to-float v12, v12

    int-to-float v7, v7

    .line 95
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 96
    iget v15, v14, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v15, v15

    const/high16 v16, -0x40000000    # -2.0f

    div-float v15, v15, v16

    iget v8, v14, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v8, v8

    const/high16 v17, 0x40000000    # 2.0f

    div-float v8, v8, v17

    invoke-virtual {v13, v15, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v15, -0x40800000    # -1.0f

    .line 97
    invoke-virtual {v13, v8, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    move/from16 v18, v10

    .line 98
    new-array v10, v9, [F

    aput v12, v10, v11

    aput v7, v10, v18

    .line 99
    new-array v7, v9, [F

    .line 100
    invoke-virtual {v13, v7, v10}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 101
    new-instance v10, Landroid/graphics/PointF;

    aget v12, v7, v11

    aget v7, v7, v18

    invoke-direct {v10, v12, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 102
    iget v7, v10, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v10, v10, Landroid/graphics/PointF;->y:F

    float-to-int v10, v10

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v3, v7

    int-to-float v7, v10

    .line 103
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v10

    .line 104
    new-instance v12, Landroid/graphics/RectF;

    .line 105
    sget-object v13, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 106
    iget-object v13, v13, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 107
    invoke-direct {v12, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 108
    new-instance v13, Landroid/graphics/PointF;

    move/from16 v19, v11

    iget v11, v14, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v11, v11

    iget v14, v14, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v14, v14

    invoke-direct {v13, v11, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 109
    iget v11, v12, Landroid/graphics/RectF;->left:F

    iget v14, v13, Landroid/graphics/PointF;->x:F

    div-float v14, v14, v17

    sub-float/2addr v11, v14

    .line 110
    iget v13, v13, Landroid/graphics/PointF;->y:F

    iget v4, v12, Landroid/graphics/RectF;->top:F

    sub-float v4, v13, v4

    div-float v20, v13, v17

    sub-float v4, v4, v20

    .line 111
    iget v5, v12, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v14

    .line 112
    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v13, v12

    sub-float v13, v13, v20

    .line 113
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v11, v4, v5, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 114
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    .line 115
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    neg-float v11, v4

    neg-float v13, v5

    .line 116
    invoke-virtual {v12, v11, v13}, Landroid/graphics/RectF;->offset(FF)V

    sub-float/2addr v3, v4

    sub-float/2addr v7, v5

    .line 117
    iget v4, v12, Landroid/graphics/RectF;->left:F

    iget v5, v12, Landroid/graphics/RectF;->right:F

    cmpg-float v11, v4, v5

    if-gez v11, :cond_16

    iget v11, v12, Landroid/graphics/RectF;->top:F

    iget v13, v12, Landroid/graphics/RectF;->bottom:F

    cmpl-float v14, v11, v13

    if-lez v14, :cond_16

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_16

    cmpg-float v4, v3, v5

    if-gtz v4, :cond_16

    cmpg-float v4, v7, v11

    if-gtz v4, :cond_16

    cmpl-float v4, v7, v13

    if-ltz v4, :cond_16

    .line 118
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 119
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 120
    check-cast v4, Landroid/util/Size;

    .line 121
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 122
    invoke-virtual {v5, v15, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 123
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v8

    .line 124
    invoke-static {v8, v10}, Lcom/motorola/camera/settings/SettingsManager;->getDisplayOrientation(Ljava/lang/String;Z)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 125
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    .line 126
    iget v10, v12, Landroid/graphics/RectF;->top:F

    iget v11, v12, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v11

    div-float/2addr v8, v10

    .line 127
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    .line 128
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v11

    div-float/2addr v10, v11

    .line 129
    invoke-virtual {v5, v8, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 130
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v17

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v17

    invoke-virtual {v5, v8, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 131
    new-array v4, v9, [F

    aput v3, v4, v19

    aput v7, v4, v18

    .line 132
    new-array v3, v9, [F

    .line 133
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 134
    new-instance v4, Landroid/graphics/PointF;

    aget v5, v3, v19

    aget v3, v3, v18

    invoke-direct {v4, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_b

    .line 135
    :cond_16
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v15, v15}, Landroid/graphics/PointF;-><init>(FF)V

    .line 136
    :goto_b
    iget v3, v4, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    .line 137
    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    .line 138
    filled-new-array {v3, v4, v3, v4}, [I

    move-result-object v3

    .line 139
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    .line 140
    sget v5, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    if-eq v5, v6, :cond_19

    const/16 v6, 0xb4

    if-eq v5, v6, :cond_18

    const/16 v6, 0x10e

    if-eq v5, v6, :cond_17

    move/from16 v8, v19

    goto :goto_c

    :cond_17
    const/4 v8, 0x3

    goto :goto_c

    :cond_18
    move v8, v9

    goto :goto_c

    :cond_19
    move/from16 v8, v18

    .line 141
    :goto_c
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 142
    iget-object v7, v6, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 143
    sget-object v10, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    .line 144
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 145
    invoke-virtual {v10, v4, v7, v11}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 146
    iget-object v7, v6, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 147
    sget-object v10, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_REGISTER_ROI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v10, v4, v7, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 148
    iget-object v6, v6, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 149
    sget-object v7, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_ORIENTATION_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    .line 150
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 151
    invoke-virtual {v7, v4, v6, v10}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_d

    .line 152
    :cond_1a
    :goto_e
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_8
    move/from16 v18, v10

    move/from16 v19, v11

    .line 153
    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine;

    .line 154
    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_FOCUS_TRACKING_AUTO_MODE:Z

    if-eqz v4, :cond_1b

    .line 155
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 158
    iget-object v5, v5, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 159
    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    .line 160
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 161
    invoke-virtual {v6, v3, v5, v7}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_f

    .line 162
    :cond_1b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 165
    iget-object v5, v5, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 166
    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    .line 167
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 168
    invoke-virtual {v6, v3, v5, v7}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_10

    .line 169
    :cond_1c
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_9
    move/from16 v18, v10

    move/from16 v19, v11

    .line 170
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_1d

    move-object v3, v2

    check-cast v3, Landroid/os/Bundle;

    .line 171
    const-string v4, "ZOOM_JUMP_X"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 172
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    .line 173
    const-string v5, "CAMERA_TYPE"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/settings/CameraType;

    .line 174
    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 175
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    .line 176
    iput-object v3, v5, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 177
    iput v9, v5, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomState:I

    move/from16 v6, v19

    .line 178
    iput-boolean v6, v5, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    move/from16 v6, v18

    .line 179
    iput-boolean v6, v5, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mFirstFrame:Z

    .line 180
    invoke-static {v4}, Lcom/motorola/camera/utility/ZoomHelper;->getReciprocal(F)F

    move-result v4

    iput v4, v5, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    .line 181
    invoke-static {v4, v3}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    .line 182
    iget v4, v5, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    invoke-static {v4, v3, v0}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->smoothZoom(FLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 183
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    :cond_1d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 3
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 4
    :pswitch_2
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 5
    :pswitch_3
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 6
    :pswitch_4
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 7
    :pswitch_5
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 8
    :pswitch_6
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 9
    :pswitch_7
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 10
    :pswitch_8
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 11
    :pswitch_9
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
