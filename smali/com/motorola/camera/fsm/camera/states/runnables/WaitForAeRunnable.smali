.class public final Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;


# instance fields
.field public mFrameCount:I

.field public mIsAeReady:Z

.field public mStartFrameCount:Z

.field public mTimeoutFrames:I

.field public mWaitSensorCrop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mFrameCount:I

    return-void
.end method


# virtual methods
.method public final isStreamingSensorCropConverged()Z
    .locals 5

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/dynamite/zzo;

    monitor-enter v0

    :try_start_0
    iget v1, v0, Lcom/google/android/gms/dynamite/zzo;->zza:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "PhotoMode"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isStreamingSensorCropConverged:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isLatestSensorCropConverged(Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mLastSensorCrop:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x6

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSensorCropEnableCounter:I

    if-lt p0, v0, :cond_2

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSensorCropDisableCounter:I

    if-lt p0, v0, :cond_2

    :goto_0
    return v3

    :cond_2
    return v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onCaptureCompleted()V
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mWaitSensorCrop:Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AE_READY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->isStreamingSensorCropConverged()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mWaitSensorCrop:Z

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mIsAeReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mStartFrameCount:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mFrameCount:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mFrameCount:I

    iget v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mTimeoutFrames:I

    if-lt v0, v4, :cond_2

    const-string v0, "WaitForAeRunnable"

    const-string v4, "AE converge timeout"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mIsAeReady:Z

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mWaitSensorCrop:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_1
    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mStartFrameCount:Z

    :cond_2
    return-void
.end method

.method public final onExposureChange(Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;)V
    .locals 0

    return-void
.end method

.method public final onExposureStateChange(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mIsAeReady:Z

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mWaitSensorCrop:Z

    if-eqz p1, :cond_0

    sget-boolean p0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "WaitForAeRunnable"

    const-string p1, "ae ok, wait sensor crop"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AE_READY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mStartFrameCount:Z

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mFrameCount:I

    :cond_1
    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 4

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 4
    sget-object p3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;

    const/4 p3, 0x0

    .line 5
    iput-boolean p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mWaitSensorCrop:Z

    .line 6
    invoke-static {}, Lcom/motorola/camera/JsonConfig;->isSupportFastFrameScene()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTouchDownFrameCollection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getNextCaptureScene(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v0

    .line 9
    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFastFrameScenes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v0, v2, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->isStreamingSensorCropConverged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mWaitSensorCrop:Z

    .line 13
    :cond_0
    monitor-enter p1

    .line 14
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->getExposureInfo(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, p3

    :goto_1
    const/4 v2, 0x6

    .line 17
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p2

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualStreamDepthMode(Z)Z

    move-result p2

    if-eqz p2, :cond_3

    move v0, p3

    .line 19
    :cond_3
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 20
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 21
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 22
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne v1, p2, :cond_4

    move p2, v1

    goto :goto_2

    :cond_4
    move p2, p3

    .line 23
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v2

    if-nez v2, :cond_6

    if-nez p2, :cond_6

    if-nez v0, :cond_5

    goto :goto_3

    .line 24
    :cond_5
    sget-object p2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget p2, p2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->m3ATimeoutFrames:I

    .line 25
    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mTimeoutFrames:I

    .line 26
    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mStartFrameCount:Z

    .line 27
    iput p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mFrameCount:I

    .line 28
    iput-boolean p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mIsAeReady:Z

    .line 29
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_4

    .line 30
    :cond_6
    :goto_3
    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mIsAeReady:Z

    .line 31
    iget-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mWaitSensorCrop:Z

    if-eqz p2, :cond_7

    .line 32
    sget-object p2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget p2, p2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->m3ATimeoutFrames:I

    .line 33
    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mTimeoutFrames:I

    .line 34
    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mStartFrameCount:Z

    .line 35
    iput p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->mFrameCount:I

    .line 36
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_4

    .line 37
    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 38
    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AE_READY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    .line 39
    :goto_4
    monitor-exit p1

    return-void

    :goto_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
