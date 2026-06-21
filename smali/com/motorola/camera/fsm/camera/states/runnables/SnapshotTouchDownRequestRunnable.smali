.class public final Lcom/motorola/camera/fsm/camera/states/runnables/SnapshotTouchDownRequestRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final mIsKeyDown:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SnapshotTouchDownRequestRunnable;->mIsKeyDown:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SnapshotTouchDownRequestRunnable;->mIsKeyDown:Z

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "TOUCH_DOWN_EV_LIST_TIME"

    const-string v3, "TOUCH_DOWN_EV_LIST"

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v5, "SnapshotTouchDownRequestRunnable"

    const-class v6, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v6

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v0, v7}, Lcom/motorola/camera/saving/ImageCaptureManager;->canDoNextCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    const/4 v6, 0x1

    if-nez v8, :cond_0

    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "touch down canDoNextCapture is false"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    move-object/from16 v8, p0

    iget-boolean v8, v8, Lcom/motorola/camera/fsm/camera/states/runnables/SnapshotTouchDownRequestRunnable;->mIsKeyDown:Z

    if-eqz v8, :cond_5

    move-object v8, v1

    check-cast v8, Landroid/os/Bundle;

    if-eqz v8, :cond_1

    const-string v9, "KEY_EVENT"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/view/KeyEvent;

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    if-nez v8, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "KeyEvent is missing from an Event.KEY Trigger with data="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_2
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->CAPTURE_KEYS:[I

    move v10, v7

    :goto_1
    const/4 v11, 0x7

    if-ge v10, v11, :cond_4

    aget v11, v9, v10

    if-ne v11, v1, :cond_3

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v8}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v7

    :cond_5
    invoke-static {v0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->lockCurrentScene(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {v0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getNextCaptureScene(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v1

    sget-boolean v8, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v8, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "touch down guard scene:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v9

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v10

    iget v10, v10, Lcom/motorola/camera/IqConfigManager;->mLastLux:F

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTouchDownFrameCollection()Z

    move-result v11

    if-eqz v11, :cond_11

    sget-object v11, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v11, v11, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFastFrameScenes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v11

    iget-object v11, v11, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_7

    invoke-static {v0, v6}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->unlockCurrentScene(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    return v6

    :cond_7
    sget-object v11, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v11, v11, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFastFrameExcludeLux:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_8

    sget-object v11, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v11, v11, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFastFrameExcludeLux:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v9, :cond_8

    sget-object v9, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v9, v9, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFastFrameExcludeLux:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v11, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v11, v11, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFastFrameExcludeLux:Ljava/util/ArrayList;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v9, v9

    cmpl-float v9, v10, v9

    if-lez v9, :cond_8

    int-to-float v9, v11

    cmpg-float v9, v10, v9

    if-gez v9, :cond_8

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TOUCH_DOWN_EV_LIST_EXCLUDE_LUX"

    invoke-virtual {v0, v1, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v8, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "disable evList lux:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_8
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v9

    instance-of v10, v9, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    if-eqz v10, :cond_a

    sget-object v10, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v1, v10, :cond_9

    check-cast v9, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    invoke-virtual {v9, v7}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isLatestSensorCropConverged(Z)Z

    move-result v9

    goto :goto_3

    :cond_9
    sget-object v10, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v10}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    iget-boolean v10, v10, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    check-cast v9, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    invoke-virtual {v9, v6}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isLatestSensorCropConverged(Z)Z

    move-result v9

    if-eqz v9, :cond_b

    if-eqz v10, :cond_b

    :cond_a
    move v9, v6

    goto :goto_3

    :cond_b
    move v9, v7

    :goto_3
    if-nez v9, :cond_d

    invoke-static {v0, v6}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->unlockCurrentScene(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    if-eqz v8, :cond_c

    invoke-static {v1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getSceneParams(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disable evList:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v6

    :cond_d
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v9

    const-wide/16 v9, 0xc8

    cmp-long v5, v11, v9

    if-gez v5, :cond_e

    invoke-static {v0, v6}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->unlockCurrentScene(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    return v7

    :cond_e
    invoke-static {v1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getSceneParams(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    check-cast v1, [I

    array-length v5, v1

    if-le v5, v6, :cond_10

    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-virtual {v4, v2, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    array-length v4, v1

    sget-object v5, Lcom/motorola/camera/settings/CustomKeyHelper;->USE_CUSTOM_ZSL:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v5, v3, v2, v9}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object v9, Lcom/motorola/camera/settings/CustomKeyHelper;->CUSTOM_ZSL_NUM:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v9, v3, v2, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->convertEvListToEvInfo([I)[I

    move-result-object v4

    sget-object v10, Lcom/motorola/camera/settings/CustomKeyHelper;->EV_LIST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v10, v3, v2, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v5, v3, v2, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    invoke-virtual {v9, v3, v2, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    new-array v4, v6, [I

    invoke-virtual {v10, v3, v2, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->DEBUG_EV_LIST_TOAST:Z

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "touch down evList:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v8, :cond_f

    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v4, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v1, v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-boolean v6, v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    invoke-static {v4, v2, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/SnapshotTouchDownRequestRunnable$1;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/SnapshotTouchDownRequestRunnable$2;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iget-object v15, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/google/zxing/Result;->capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_common/zzje;Landroid/os/Handler;Z)V

    return v6

    :cond_10
    invoke-static {v0, v6}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->unlockCurrentScene(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    return v6

    :cond_11
    invoke-static {v0, v6}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->unlockCurrentScene(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    return v6

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
