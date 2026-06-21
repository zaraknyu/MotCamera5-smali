.class public Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# static fields
.field public static final sOneShotErrorCallbacks:Landroid/util/ArrayMap;


# instance fields
.field public airGestureSupport:Z

.field public final mAutoFocusStateListener:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;

.field public final mHighSpeedCreateRequestsListener:Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;

.field public mMcfSupport:Z

.field public mRefCnt:I

.field public mReprocAllow:Z


# direct methods
.method public static -$$Nest$smpostOneShotErrorCallback(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Ljava/lang/Runnable;J)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->sOneShotErrorCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->sOneShotErrorCallbacks:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/CameraRunnable;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mHighSpeedCreateRequestsListener:Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mAutoFocusStateListener:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;

    return-void
.end method

.method public static getCameraId(Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/fsm/RequestWrapper;->getCameraType(Z)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isCameraSessionClosed(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/device/CameraStateManager;->getCameraSession(Ljava/lang/String;)Lcom/motorola/camera/device/CameraStateManager$Status;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/device/CameraStateManager$Status;->OPEN:Lcom/motorola/camera/device/CameraStateManager$Status;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static removePreviousOneShotErrorCallback(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->sOneShotErrorCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static updateMcfInSensorCropMode(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v3, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getInSensorCropEnableKey()Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    move-result-object v3

    iget-object v2, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3, p1, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropVendorTagsVersion:I

    new-instance p1, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p1, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iput-boolean v0, p1, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    iget-object v0, p1, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v3, "SetInSensorCropMode"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v3, "\":{\"cameraId\":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v2, ",\"iscEnabled\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"vendorTagsVersion\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/zxing/Result;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    return-void
.end method


# virtual methods
.method public buildRequests(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)Ljava/util/List;
    .locals 3

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-eqz p3, :cond_2

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p4, Ljava/util/ArrayList;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {p4, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    invoke-static {v1, p1, p2, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    invoke-static {p0, p1, p2, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p4

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onComplete()V
    .locals 0

    .line 2
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    if-eqz p1, :cond_0

    const-string p0, "SetRepeatingRequestRunnable"

    const-string p1, "ignore CameraNotOpenException while continuous knife switching"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public processForChanges(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->isCameraSessionClosed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public processForPartialChanges(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 11

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mReprocAllow:Z

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mMcfSupport:Z

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGestureVideoSupportedModes()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->airGestureSupport:Z

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 p1, 0x25

    .line 10
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 p1, 0x2e

    .line 11
    :cond_2
    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup(I)Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    iget-object v7, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 12
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v4

    .line 13
    iput v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mRefCnt:I

    .line 14
    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p2, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v3, :cond_3

    .line 15
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    .line 17
    iget-object v3, v3, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    .line 18
    sget-object v5, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 19
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 20
    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 21
    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    .line 22
    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mAutoFocusStateListener:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_3
    const/4 v3, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x5

    if-ne p1, v3, :cond_7

    .line 23
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 25
    iget p3, p3, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    if-ne p3, v5, :cond_4

    .line 26
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    goto :goto_1

    .line 27
    :cond_5
    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 28
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 29
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    new-instance p3, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;

    iget-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->airGestureSupport:Z

    invoke-direct {p3, p0, v2, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;ZLjava/lang/String;)V

    invoke-static {v4, p1, p0, p3, v7}, Lcom/google/zxing/Result;->setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;)V

    move-object v10, v4

    goto/16 :goto_b

    .line 30
    :cond_6
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    .line 31
    sget-object p1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 32
    iget-object p3, p1, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast p3, Landroid/os/Handler;

    .line 33
    invoke-virtual {p3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 34
    new-instance v3, Lcom/motorola/camera/device/callables/McfSetEventsCallable;

    const/4 v8, 0x3

    iget-object v6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mHighSpeedCreateRequestsListener:Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/device/callables/McfSetEventsCallable;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;I)V

    move-object v10, v4

    .line 35
    iget-object p0, p1, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, v9, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_b

    :cond_7
    move-object v10, v4

    .line 36
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoTypeMode(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 37
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p3

    .line 38
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 39
    iget v3, v3, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    if-ne v3, v5, :cond_8

    .line 40
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p3

    .line 41
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 42
    invoke-virtual {p2, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    .line 43
    iget v2, v2, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomState:I

    if-ne v2, v9, :cond_9

    .line 44
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 45
    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ZOOM_EXIT"

    .line 46
    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_2

    :cond_9
    move v2, v0

    :goto_2
    const/16 v3, 0xd

    if-ne p1, v3, :cond_b

    if-nez v2, :cond_b

    .line 47
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 48
    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    .line 49
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_TIMELAPSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 50
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 51
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 52
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 53
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 56
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 57
    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    .line 58
    invoke-static {v4, v10, p3, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    move v3, v0

    :goto_3
    add-int/lit8 v4, p1, -0x1

    if-ge v3, v4, :cond_a

    .line 59
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 60
    :cond_a
    sget-object p1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 61
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 62
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    .line 63
    invoke-static {v3, v10, p3, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    .line 64
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 65
    :cond_b
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 66
    :goto_4
    new-instance p1, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;

    iget-boolean p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->airGestureSupport:Z

    invoke-direct {p1, p0, p3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;ZLjava/lang/String;)V

    invoke-static {v10, v2, p0, p1, v7}, Lcom/google/zxing/Result;->setRepeatingBurst(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;)V

    goto :goto_5

    .line 67
    :cond_c
    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    new-instance p3, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;

    iget-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->airGestureSupport:Z

    invoke-direct {p3, p0, v2, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;ZLjava/lang/String;)V

    invoke-static {v10, p1, p0, p3, v7}, Lcom/google/zxing/Result;->setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;)V

    .line 69
    :goto_5
    sget-object p0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 70
    iget-object p0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/device/CameraStateManager;

    .line 71
    invoke-virtual {p0, v1, v10}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus(ILjava/lang/String;)Z

    goto/16 :goto_b

    .line 72
    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 73
    iput v9, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mRefCnt:I

    .line 74
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object p1

    .line 75
    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_AUX_MASTER_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1, p3}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 76
    invoke-virtual {p0, p2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->setRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 77
    :cond_e
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->shouldStreamSlaveInLpm()Z

    move-result p3

    if-nez p3, :cond_f

    .line 78
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result p3

    if-eqz p3, :cond_10

    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 79
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    .line 80
    iget-object p3, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 81
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_10

    :cond_f
    move-object v5, p0

    goto :goto_8

    .line 82
    :cond_10
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->stopRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 83
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;

    iget-boolean p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mReprocAllow:Z

    if-nez p3, :cond_12

    iget-boolean p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mMcfSupport:Z

    if-eqz p3, :cond_11

    goto :goto_6

    :cond_11
    move p3, v0

    goto :goto_7

    :cond_12
    :goto_6
    move p3, v1

    .line 84
    :goto_7
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, p0, p3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;ZLjava/lang/String;)V

    const/4 p3, 0x6

    .line 85
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p3

    .line 86
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    const/4 v8, 0x0

    move-object v5, p0

    .line 88
    invoke-static/range {v3 .. v8}, Lcom/google/zxing/Result;->capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_common/zzje;Landroid/os/Handler;Z)V

    goto :goto_9

    .line 89
    :goto_8
    invoke-virtual {v5, p2, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->setRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    :goto_9
    if-eqz p1, :cond_17

    .line 90
    invoke-virtual {v5, p2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->setRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    goto :goto_b

    :cond_13
    move-object v5, p0

    .line 91
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 92
    instance-of p0, p3, Landroid/os/Bundle;

    if-eqz p0, :cond_15

    check-cast p3, Landroid/os/Bundle;

    const-string p0, "DUAL_CAPTURE_ZOOM"

    .line 93
    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 94
    const-string p0, "CAMERA_TYPE"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/settings/CameraType;

    .line 95
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    if-ne p0, p1, :cond_14

    move p0, v1

    goto :goto_a

    :cond_14
    move p0, v0

    .line 96
    :goto_a
    invoke-virtual {v5, p2, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->setDualCaptureModeRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    goto :goto_b

    .line 97
    :cond_15
    invoke-virtual {v5, p2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->setDualCaptureModeRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 98
    invoke-virtual {v5, p2, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->setDualCaptureModeRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    goto :goto_b

    .line 99
    :cond_16
    invoke-virtual {v5, p2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->setRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 100
    :cond_17
    :goto_b
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p1, v0

    :cond_18
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 101
    iget-object p3, p3, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez p3, :cond_19

    goto :goto_c

    .line 102
    :cond_19
    iget-object v2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    .line 103
    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v2, v10, p3, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->containsTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Z

    move-result p3

    if-eqz p3, :cond_18

    move p1, v1

    goto :goto_c

    .line 104
    :cond_1a
    new-instance p0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {p0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    .line 105
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p3

    .line 106
    iget-boolean v1, p0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v1, :cond_1b

    .line 107
    iget-object v1, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    :cond_1b
    iput-boolean v0, p0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 109
    iget-object v0, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v0, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, "SetFullFrameStreamingMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v0, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, "\":{\"cameraId\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v0, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v0, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object p3, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object p3, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v0, ",\"mode\":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object p3, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    iget-object p1, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo p3, "}}"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {p0}, Lcom/google/zxing/Result;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    .line 119
    invoke-static {p2, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->updateMcfInSensorCropMode(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public sendComplete(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mRefCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mRefCnt:I

    if-gtz v0, :cond_0

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_0
    return-void
.end method

.method public final setDualCaptureModeRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 7

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p2

    :goto_1
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getPreviewFullFrameSkipCount(Lcom/motorola/camera/settings/CameraType;)I

    move-result p2

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;ZLjava/lang/String;)V

    iget-object v5, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    sget-object v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v5, v2, v1, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->containsTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Z

    move-result v5

    invoke-virtual {p0, v2, v1, p2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->buildRequests(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CaptureRequest;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-static {v2, p2, p0, v3, p1}, Lcom/google/zxing/Result;->setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;)V

    sget-object p0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object p0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/device/CameraStateManager;

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus(ILjava/lang/String;)Z

    return-void
.end method

.method public final setRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 7

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-static {p2}, Lcom/motorola/camera/fsm/RequestWrapper;->getCameraType(Z)Lcom/motorola/camera/settings/CameraType;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getPreviewFullFrameSkipCount(Lcom/motorola/camera/settings/CameraType;)I

    move-result p2

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;

    iget-boolean v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mReprocAllow:Z

    const/4 v5, 0x0

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mMcfSupport:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v0

    :goto_2
    invoke-direct {v3, p0, v4, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;ZLjava/lang/String;)V

    iget-object v4, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    sget-object v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v4, v2, v1, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->containsTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Z

    move-result v4

    invoke-virtual {p0, v2, v1, p2, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->buildRequests(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getInSensorCropEnableKey()Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    move-result-object v1

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v1, v2, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    if-eqz v1, :cond_3

    sget-object v4, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v4, v4, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/dynamite/zzo;

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    monitor-enter v4

    :try_start_0
    iput v1, v4, Lcom/google/android/gms/dynamite/zzo;->zza:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_3
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CaptureRequest;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-static {v2, p2, p0, v3, p1}, Lcom/google/zxing/Result;->setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;)V

    goto :goto_4

    :cond_4
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-static {v2, p2, p0, v3, p1}, Lcom/google/zxing/Result;->setRepeatingBurst(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;)V

    :goto_4
    sget-object p0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object p0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/device/CameraStateManager;

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus(ILjava/lang/String;)Z

    return-void
.end method

.method public shouldStreamSlaveInLpm()Z
    .locals 0

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE_SHOW_SLAVE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final stopRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v2, v1, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/device/CameraStateManager;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/device/CameraStateManager;->getPreviewStatus(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v3, v2, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, p1}, Lcom/google/zxing/Result;->stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    iget-object p0, v1, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/device/CameraStateManager;

    invoke-virtual {p0, v3, v0}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus(ILjava/lang/String;)Z

    return-void
.end method
