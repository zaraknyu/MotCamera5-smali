.class public abstract Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# static fields
.field public static final sShotTimeoutCallbacks:Landroid/util/ArrayMap;


# instance fields
.field public mCameraId:Ljava/lang/String;

.field public final mCaptureRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;

.field public mFirstFrame:Z

.field public mFirstFrameNumber:J

.field public mIsComplete:Z

.field public mIsQcfaCompleteSent:Z

.field public mIsQcfaShot:Z

.field public final mRepeatingBurstRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;

.field public mRequestCount:I

.field public mRequestNumber:J

.field public mRequestsCompleted:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sShotTimeoutCallbacks:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/CameraRunnable;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCaptureRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;-><init>(Lcom/motorola/camera/fsm/camera/CameraRunnable;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRepeatingBurstRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;

    return-void
.end method

.method public static applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;J)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_ISO_PRI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p0, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static postShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;ILjava/lang/Runnable;J)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sShotTimeoutCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;I)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sShotTimeoutCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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


# virtual methods
.method public captureBufferLost()V
    .locals 0

    return-void
.end method

.method public captureFailed()V
    .locals 0

    return-void
.end method

.method public getBuilders()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isQcfaEarlierShot()Z
    .locals 1

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsQcfaShot:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_EARLIER_RELEASE_SHUTTER_EVENT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 3

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public processCaptureBufferLost(I)V
    .locals 0

    return-void
.end method

.method public processForChanges(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public processForFailures(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->isQcfaEarlierShot()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSingleSessionEarlierTimeout()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->removeShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    :cond_0
    return-void
.end method

.method public processForPartial(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsQcfaShot:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_SUPPORT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_BURST_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-gtz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete()V

    return-void

    :cond_4
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkMfnrCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONTROL_CAPTURE_NEXT_READY_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete()V

    :cond_6
    :goto_0
    return-void
.end method

.method public processForStarted(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    return-void
.end method

.method public repeating(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v2, v1, v0, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    const/4 v2, 0x0

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v0, p0, v2, p1}, Lcom/google/zxing/Result;->setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    .line 2
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    const/4 v7, 0x0

    .line 3
    iput-boolean v7, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    .line 4
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->getCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    .line 5
    iput v7, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRequestsCompleted:I

    .line 6
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v6, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v4, v6, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const-string v1, "HAL_PROCESSING"

    .line 7
    invoke-virtual {v0, v1, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v6, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "QCFA_SHOT"

    .line 9
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsQcfaShot:Z

    .line 10
    iput-boolean v7, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsQcfaCompleteSent:Z

    .line 11
    invoke-virtual {v6, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isNonMcfShotInQcfaMode(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v6, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "SHUTTER_PLAYED"

    .line 14
    invoke-virtual {v1, v3, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    :cond_0
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->getBuilders()Ljava/util/List;

    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 17
    iget-object v8, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->appendAppInfoToMetadata(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRequestCount:I

    .line 19
    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCaptureRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;

    const-string v8, "CaptureRequestRunnable"

    const/4 v9, 0x1

    if-ne v3, v9, :cond_d

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 21
    invoke-static {v6}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->isLongExposureCapture(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 22
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 23
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 24
    sget-boolean v5, Lcom/motorola/camera/FeaturesUtil;->ENABLE_LP_DEBUG:Z

    .line 25
    invoke-static {v6}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->isStarTrailCapture(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v6

    iget-object v10, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRepeatingBurstRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;

    if-eqz v6, :cond_8

    .line 26
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Rational;

    .line 27
    iget-object v11, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 28
    invoke-virtual {v11, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v11

    .line 29
    const-string v12, "CAPTURE_NUM"

    invoke-virtual {v11, v12, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 30
    iget-object v11, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 31
    invoke-virtual {v11, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 32
    const-string v11, "CUR_LUX_INDEX"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v11, 0x42c80000    # 100.0f

    if-nez v7, :cond_3

    .line 33
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/high16 v14, -0x3ff0000000000000L    # -4.0

    .line 34
    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v16

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 35
    invoke-virtual {v1, v9, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 36
    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getLpStarIso(F)J

    move-result-wide v14

    long-to-float v6, v14

    div-float v9, v6, v11

    const/high16 v11, 0x41800000    # 16.0f

    cmpl-float v14, v9, v11

    if-lez v14, :cond_2

    move v9, v11

    .line 37
    :cond_2
    sget-object v14, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_ISO_PRI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v15, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    div-float/2addr v6, v9

    move/from16 p3, v11

    const-wide/16 p1, 0x0

    float-to-long v11, v6

    .line 38
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 39
    invoke-virtual {v14, v15, v1, v6}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 40
    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getLpStarShutter(F)J

    move-result-wide v11

    .line 41
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_EXP_PRI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v6, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    long-to-float v11, v11

    div-float v9, v9, p3

    mul-float/2addr v9, v11

    float-to-long v11, v9

    .line 42
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 43
    invoke-virtual {v0, v6, v1, v9}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    if-eqz v5, :cond_6

    .line 44
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 45
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 46
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v5, p1

    if-eqz v0, :cond_6

    .line 47
    const-string v0, "debug iso: 100"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    const-wide/16 v5, 0x64

    invoke-static {v1, v0, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_3
    const-wide/16 p1, 0x0

    if-ne v7, v9, :cond_5

    .line 49
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/high16 v12, -0x4000000000000000L    # -2.0

    .line 50
    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 51
    invoke-virtual {v1, v9, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 52
    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getLpStarIso(F)J

    move-result-wide v12

    long-to-float v6, v12

    div-float v9, v6, v11

    const/high16 v11, 0x40800000    # 4.0f

    cmpl-float v12, v9, v11

    if-lez v12, :cond_4

    move v9, v11

    .line 53
    :cond_4
    sget-object v12, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_ISO_PRI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v13, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    div-float/2addr v6, v9

    float-to-long v14, v6

    .line 54
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 55
    invoke-virtual {v12, v13, v1, v6}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 56
    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getLpStarShutter(F)J

    move-result-wide v12

    .line 57
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_EXP_PRI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v6, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    long-to-float v12, v12

    div-float/2addr v9, v11

    mul-float/2addr v9, v12

    float-to-long v11, v9

    .line 58
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 59
    invoke-virtual {v0, v6, v1, v9}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    if-eqz v5, :cond_6

    .line 60
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 61
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 62
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v5, p1

    if-eqz v0, :cond_6

    .line 63
    const-string v0, "debug iso:200"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    const-wide/16 v5, 0xc8

    invoke-static {v1, v0, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;J)V

    goto :goto_1

    .line 65
    :cond_5
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v6, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 66
    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_EXP_PRI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v9, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    .line 67
    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getLpStarShutter(F)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 68
    invoke-virtual {v6, v9, v1, v11}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 69
    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_ISO_PRI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v9, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    .line 70
    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getLpStarIso(F)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 71
    invoke-virtual {v6, v9, v1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    if-eqz v5, :cond_6

    .line 72
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 73
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 74
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v5, p1

    if-eqz v0, :cond_6

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "debug iso:"

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;J)V

    .line 77
    :cond_6
    :goto_1
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 78
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 79
    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 81
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, v10

    .line 82
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/Result;->capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_common/zzje;Landroid/os/Handler;Z)V

    return-void

    :cond_8
    move-object v3, v10

    .line 83
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    .line 84
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/zxing/Result;->setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;)V

    return-void

    .line 85
    :cond_9
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 86
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 87
    invoke-static {v6}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->isStarTrailCapture(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    move v9, v7

    .line 88
    :goto_2
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    move-object v3, v5

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/Result;->capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_common/zzje;Landroid/os/Handler;Z)V

    .line 89
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->repeating(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 90
    :cond_b
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->isQcfaEarlierShot()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSingleSessionEarlierTimeout()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 91
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 92
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/16 v4, 0xc

    invoke-direct {v3, v4, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 93
    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-wide v4, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mQcfaFastCaptureUITimeout:J

    .line 94
    invoke-static {v0, v1, v3, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->postShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;ILjava/lang/Runnable;J)V

    goto/16 :goto_4

    .line 95
    :cond_c
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isSwHwQcfaShot(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 96
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v3, 0x9

    invoke-direct {v1, v3, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 97
    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleSessionRemosaicEstimate:[J

    .line 98
    aget-wide v2, v2, v7

    .line 99
    invoke-static {v6, v0, v1, v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->postShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;ILjava/lang/Runnable;J)V

    goto :goto_4

    :cond_d
    if-le v3, v9, :cond_f

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    iget v7, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRequestCount:I

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 102
    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 103
    :cond_e
    invoke-virtual {v6, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ON_DOWN"

    .line 104
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 105
    invoke-static {v0, v1}, Lcom/motorola/camera/SensorTime;->convertTime(J)J

    move-result-wide v7

    .line 106
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    .line 107
    sget-object v9, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 108
    new-instance v0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    .line 109
    iget-object v6, v9, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v6, Landroid/os/Handler;

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v18

    .line 110
    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_common/zzje;Landroid/os/Handler;Landroid/os/Handler;J)V

    .line 111
    invoke-virtual {v9, v0}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    goto :goto_4

    .line 112
    :cond_f
    const-string v0, "No builders available for capture"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 114
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 115
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 116
    invoke-direct {v1, v3, v2, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 117
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    .line 118
    :cond_10
    :goto_4
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-nez v0, :cond_11

    .line 119
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 120
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_YUV_CAPTURE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 121
    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_11
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public sendComplete()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    return-void
.end method

.method public final sendComplete(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 4

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 4
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    xor-int/lit8 v2, v2, 0x1

    .line 5
    const-string v3, "HAL_PROCESSING"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    .line 7
    const-string v1, "SEQ_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 9
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->isStarTrailCapture(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 11
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "CLOSED"

    .line 12
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    const-string p0, "CaptureRequestRunnable"

    const-string/jumbo p1, "wait for jpeg then complete"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 15
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 16
    invoke-direct {p1, v2, v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method
