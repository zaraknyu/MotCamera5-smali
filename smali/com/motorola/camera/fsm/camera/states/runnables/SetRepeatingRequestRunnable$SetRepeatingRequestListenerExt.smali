.class public Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;
.super Lcom/motorola/camera/device/callables/CaptureRequestAdapter;
.source "SourceFile"


# instance fields
.field public final mCameraId:Ljava/lang/String;

.field public final mCaptureZsl:Z

.field public mFailedCaptures:I

.field public mOneShot:Z

.field public final mSendErrorDelayTime:J

.field public final mSendErrorRunnable:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt$$ExternalSyntheticLambda0;

.field public final mSendRetryErrorRunnable:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt$$ExternalSyntheticLambda0;

.field public mStopCalled:Z

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;ZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/camera/device/callables/CaptureRequestAdapter;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    new-instance p1, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;I)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mSendErrorRunnable:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;I)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mSendRetryErrorRunnable:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt$$ExternalSyntheticLambda0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mOneShot:Z

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mCaptureZsl:Z

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mCameraId:Ljava/lang/String;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_PREVIEW_ERROR_DELAY_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget p2, p2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSetRepeatingSendErrorDelay:I

    int-to-long p2, p2

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p2, p1

    :goto_0
    iput-wide p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mSendErrorDelayTime:J

    return-void
.end method


# virtual methods
.method public final onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->isCameraSessionClosed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->HAL_SET_REPEATING:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    const-string v0, "SetRepeating"

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/motorola/camera/shared/MotSysTrace;->endAsync(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mCaptureZsl:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    iget-boolean v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mReprocAllow:Z

    iget-boolean v2, v2, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mMcfSupport:Z

    const-class v4, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v4

    :try_start_0
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v3, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    if-nez v2, :cond_3

    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslResultMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    invoke-virtual {v2, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/saving/CaptureHolder;

    if-eqz v0, :cond_4

    iput-object p1, v0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iput-object p2, v0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHoldersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0, p1, p2, v3, v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->sendMcfOnCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Z)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    :goto_0
    monitor-exit v4

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p0

    :goto_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mOneShot:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->removePreviousOneShotErrorCallback(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->sendComplete(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mOneShot:Z

    iput v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mFailedCaptures:I

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->processForChanges(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->processCaptureCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 5

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->isCameraSessionClosed(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeWithSwHwQcfaSensor()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0x23

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_KEEP_PREVIEW_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->QCFA_KEEP_PREVIEW:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object p1, p1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p1, Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mOneShot:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mStopCalled:Z

    if-nez p1, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureCapture()Z

    move-result p1

    if-eqz p1, :cond_4

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mStopCalled:Z

    return-void

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->removePreviousOneShotErrorCallback(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mSendErrorRunnable:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt$$ExternalSyntheticLambda0;

    iget-wide v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mSendErrorDelayTime:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->-$$Nest$smpostOneShotErrorCallback(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Ljava/lang/Runnable;J)V

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mStopCalled:Z

    return-void

    :cond_5
    iget p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mFailedCaptures:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->sOneShotErrorCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mSendRetryErrorRunnable:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt$$ExternalSyntheticLambda0;

    iget-wide v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mSendErrorDelayTime:J

    invoke-static {p1, v1, v2, v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->-$$Nest$smpostOneShotErrorCallback(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Ljava/lang/Runnable;J)V

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mOneShot:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_6
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    add-int/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mFailedCaptures:I

    :cond_8
    :goto_2
    return-void
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->isCameraSessionClosed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->processForPartialChanges(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public final onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mCaptureZsl:Z

    if-eqz p0, :cond_0

    const-class p0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter p0

    monitor-exit p0

    :cond_0
    return-void
.end method

.method public processCaptureCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    return-void
.end method

.method public processCaptureFailed()V
    .locals 0

    return-void
.end method
