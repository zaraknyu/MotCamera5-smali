.class public final Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final mCameraListeners:Ljava/util/Map;

.field public final mCreateCaptureSessionListener:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

.field public mMcfSupportCurrentMode:Z

.field public mSessionMode:I


# direct methods
.method public static -$$Nest$mcheckComplete(Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCameraListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object p1, p1, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/device/CameraStateManager;

    invoke-virtual {p1}, Lcom/motorola/camera/device/CameraStateManager;->allCameraSessionsOpened()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/CameraKpi$KPI;->CREATE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_CAMERA_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCameraListeners:Ljava/util/Map;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCreateCaptureSessionListener:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    return-void
.end method

.method public static onSessionClosed(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error_retry"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_c

    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CreateCaptureSessionRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSessionClosed cameraId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    invoke-static {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->removePreviousOneShotErrorCallback(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_MONO_ONLY_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1, v3}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_AUX_BAYER_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1, v3}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v3, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    :goto_1
    invoke-static {v3}, Lcom/motorola/camera/mcf/Mcf;->closePreview(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-static {v3}, Lcom/motorola/camera/mcf/Mcf;->closePreview(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)V

    :cond_4
    sget-object v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStream(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStream(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-static {p1, v4}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStream(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object v3, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfInputStream;->close()V

    :cond_6
    invoke-static {p1}, Lcom/motorola/camera/mcf/Mcf;->closeReprocess(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "cameraId"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v3, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v3, Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->cameraId:Ljava/lang/String;

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-ne v5, v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_8
    sget-boolean v3, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "CreateCaptureSessionRunnable"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mcf close dur:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v5, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_9
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "QCFA_SHOT"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_a
    sget-object v1, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/device/CameraStateManager;->getCameraSession(Ljava/lang/String;)Lcom/motorola/camera/device/CameraStateManager$Status;

    move-result-object v2

    if-ne v1, v2, :cond_b

    goto/16 :goto_c

    :cond_b
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_c

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/device/CameraStateManager;->setLinked(Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;

    if-eqz v2, :cond_e

    iget-object v3, v2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriterLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v5, v2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriter:Landroid/media/ImageWriter;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/media/ImageWriter;->close()V

    iput-object v4, v2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriter:Landroid/media/ImageWriter;

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_d
    :goto_4
    monitor-exit v3

    goto :goto_6

    :goto_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_e
    :goto_6
    iget-object v2, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter p1

    :try_start_1
    invoke-static {}, Lcom/motorola/camera/saving/ImageCaptureManager;->clearZslCaptureMap()V

    iget-object v2, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-static {v5}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    goto :goto_8

    :catchall_1
    move-exception p0

    goto/16 :goto_d

    :cond_f
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_7

    :cond_10
    iget-object v2, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v2, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-virtual {v5}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V

    goto :goto_a

    :cond_11
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_9

    :cond_12
    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    invoke-virtual {v0}, Lcom/motorola/camera/device/CameraStateManager;->allCameraSessionsClosed()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->resetState()V

    goto :goto_b

    :cond_13
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->onCloseSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    iget-object p1, p1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p1, Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->clear()V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_14

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/CameraKpi$KPI;->CLOSE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_14
    :goto_c
    return-void

    :goto_d
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method


# virtual methods
.method public final getOutputConfigurations(Ljava/lang/String;[Z)Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    aput-boolean v1, p2, v1

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->onSurfaceKeysRequired()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    iget-object v4, v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->cameraId:Ljava/lang/String;

    iget-object v5, v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v4, Ljava/util/TreeMap;

    invoke-virtual {v4, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    goto :goto_1

    :cond_1
    move-object v4, v6

    :goto_1
    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "CreateCaptureSessionRunnable"

    const-string v8, "output surface not valid"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v7, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v7, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDolbyVisionMode()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-eq v5, v4, :cond_4

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-ne v5, v4, :cond_5

    :cond_4
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DOLBY_VISION_PROFILE_VALUE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/hardware/camera2/params/OutputConfiguration;->setDynamicRangeProfile(J)V

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-eq v5, v4, :cond_6

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-ne v5, v4, :cond_9

    :cond_6
    const-wide/16 v4, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v8, 0x8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v8

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/params/DynamicRangeProfiles;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/hardware/camera2/params/DynamicRangeProfiles;->getSupportedProfiles()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v6, v5

    goto :goto_2

    :cond_7
    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v6, v4

    goto :goto_2

    :cond_8
    const-string v4, "SettingsHelper"

    const-string v5, "getMtkHDR10Profile: unsupported profiles"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Landroid/hardware/camera2/params/OutputConfiguration;->setDynamicRangeProfile(J)V

    :cond_9
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->physicalCameraId:Ljava/lang/String;

    if-eqz v3, :cond_a

    invoke-virtual {v7, v3}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-boolean v3, p2, v1

    :cond_a
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    return-object v0
.end method

.method public final getReprocInputConfiguration(Lcom/motorola/camera/settings/CameraType;)Landroid/hardware/camera2/params/InputConfiguration;
    .locals 4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/settings/CameraType;->isOfflineReproc()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1, p1}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocPictureSize(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->MAIN:Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->getPhysicalCameraType(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    :cond_2
    invoke-static {p1, v2}, Lcom/motorola/camera/settings/SettingsHelper;->getYuvImageSize(Lcom/motorola/camera/settings/CameraType;Z)Landroid/util/Size;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    const-string p1, "CreateCaptureSessionRunnable"

    const-string v0, "No input sizes defined!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-direct {v0, v3, p0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-object v1

    :cond_3
    new-instance p0, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/16 v1, 0x23

    invoke-direct {p0, v0, p1, v1}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    return-object p0

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    new-instance p1, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaRawImageFormat()I

    move-result v1

    invoke-direct {p1, v0, p0, v1}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    return-object p1

    :cond_5
    :goto_1
    return-object v1
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 3

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mMcfSupportCurrentMode:Z

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mSessionMode:I

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCameraListeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    :goto_0
    const/4 p3, 0x3

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v0, :cond_1

    move p3, v2

    goto :goto_1

    :cond_1
    move p3, v1

    :goto_1
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mMcfSupportCurrentMode:Z

    .line 10
    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->setupSession(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;ZZ)V

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocCameraTypes(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/settings/CameraType;

    .line 15
    invoke-virtual {p0, p2, p3, v1, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->setupSession(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;ZZ)V

    goto :goto_2

    .line 16
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    iget-boolean p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mMcfSupportCurrentMode:Z

    invoke-virtual {p0, p2, p1, v1, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->setupSession(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;ZZ)V

    return-void

    .line 18
    :cond_3
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    .line 19
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_SLAVE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    sget-object p0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 22
    iget-object p0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/device/CameraStateManager;

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/motorola/camera/device/CameraStateManager;->getCameraOpen(Ljava/lang/String;)Lcom/motorola/camera/device/CameraStateManager$Status;

    move-result-object p2

    sget-object p3, Lcom/motorola/camera/device/CameraStateManager$Status;->UNUSED:Lcom/motorola/camera/device/CameraStateManager$Status;

    if-eq p2, p3, :cond_6

    .line 25
    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    return-void

    .line 26
    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 27
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    goto :goto_3

    .line 29
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    .line 30
    :goto_3
    iget-boolean p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mMcfSupportCurrentMode:Z

    invoke-virtual {p0, p2, p1, v1, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->setupSession(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;ZZ)V

    :cond_6
    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final setupSession(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;ZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v5

    sget-object v4, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v6, v4, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/device/CameraStateManager;

    sget-object v7, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v6, v5, v7}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$CreateCaptureSessionCameraListener;

    invoke-direct {v8, v0, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$CreateCaptureSessionCameraListener;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCameraListeners:Ljava/util/Map;

    invoke-interface {v6, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_ACCELERATE:Z

    const/4 v7, 0x0

    const/4 v9, 0x0

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v6, v9

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableSessionKeys()Ljava/util/List;

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_a

    :goto_1
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mRequestBuilders:Lcom/motorola/camera/fsm/RequestBuilders;

    invoke-virtual {v6}, Lcom/motorola/camera/fsm/RequestBuilders;->getPreviewBuilders()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    :cond_3
    if-eqz v6, :cond_4

    move v6, v2

    goto :goto_3

    :cond_4
    const/4 v6, 0x6

    :goto_3
    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v10}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v6

    sget-object v10, Lcom/motorola/camera/settings/CustomKeyHelper;->ISMOTCAMERA_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v10, v5, v6, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMotZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkQuickPreviewOn(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v10

    instance-of v10, v10, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    if-eqz v10, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_4

    :cond_5
    sget-object v10, Lcom/motorola/camera/settings/CustomKeyHelper;->SUPER_NIGHT_MODE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v10, v5, v6, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :goto_4
    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setUwDcAppProcess(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomModeSwitchGains:[F

    sget-object v10, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_CONTROL_SR_ZOOM_RT_GAIN_RANGE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v10, v5, v6, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_7
    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->enableMTKISPTuningData(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVstabPzsEnabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setInsensorZoomForSession(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    instance-of v3, v3, Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    if-eqz v3, :cond_9

    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKSmvrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoHDR10Mode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSHDRMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkSHDRMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoNightVision(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v5, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAutoFocusTrackingEnable(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v1, v5, v6, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVstabIhc(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {v1, v5, v6, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRecordMirror(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_9
    :goto_5
    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    move-object v6, v3

    goto :goto_6

    :cond_a
    move-object v6, v9

    :goto_6
    :try_start_0
    new-array v3, v2, [Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move v10, v7

    :try_start_1
    invoke-virtual {v0, v5, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->getOutputConfigurations(Ljava/lang/String;[Z)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDolbyVisionMode()Z

    move-result v11

    if-eqz v11, :cond_b

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_COLOR_SPACE_VALUE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/ColorSpace$Named;

    :cond_b
    move-object v14, v9

    aget-boolean v9, v3, v10

    if-eqz v6, :cond_c

    goto :goto_7

    :cond_c
    move v2, v10

    :goto_7
    or-int/2addr v2, v9

    aput-boolean v2, v3, v10

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    new-instance v12, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    move/from16 v9, p4

    iput-boolean v9, v12, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mUseMcf:Z

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v9

    iput v9, v12, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mWidth:I

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, v12, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mHeight:I

    const/16 v2, 0x23

    iput v2, v12, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mFormat:I

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->getReprocInputConfiguration(Lcom/motorola/camera/settings/CameraType;)Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v13

    iget-object v9, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCreateCaptureSessionListener:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    aget-boolean v16, v3, v10

    new-instance v2, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v3, v4, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    move-object v11, v3

    check-cast v11, Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move v15, v10

    move-object v10, v1

    move-object v1, v4

    move-object v4, v2

    move v2, v15

    move/from16 v15, p3

    :try_start_2
    invoke-direct/range {v4 .. v16}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$CreateCaptureSessionCameraListener;Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;Landroid/os/Handler;Landroid/os/Handler;Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;Landroid/hardware/camera2/params/InputConfiguration;Landroid/graphics/ColorSpace$Named;ZZ)V

    invoke-virtual {v1, v4}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_0
    move v2, v10

    goto :goto_8

    :catch_1
    move v2, v7

    :catch_2
    :goto_8
    const-string v1, "CreateCaptureSessionRunnable"

    const-string v3, "outputConfigurations surface error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SURFACES_ABANDONED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-direct {v3, v4, v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method
