.class public final Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;
.implements Lcom/motorola/camera/device/callables/StopRepeatingListener;
.implements Lcom/motorola/camera/device/callables/AbortCapturesListener;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeAllCameras(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CameraListener;Z)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    iget-object v0, v0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->clearModesBuilders()V

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isPaused()Z

    move-result v1

    sget-boolean v2, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mcf started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", Mcf paused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ". Shutdown Mcf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CloseCameraRunnable"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_5

    :cond_1
    if-eqz v0, :cond_2

    sget-object p2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopAllModels()V

    :cond_2
    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStreams()V

    sget-object p2, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfInputStream;->close()V

    :cond_3
    sget-object p2, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-static {p2}, Lcom/motorola/camera/mcf/Mcf;->closePreview(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)V

    sget-object p2, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-static {p2}, Lcom/motorola/camera/mcf/Mcf;->closePreview(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)V

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->resume()V

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->stop()V

    :cond_5
    invoke-static {p0, p1}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;->closeAllOpenedCameras(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CameraListener;)V

    return-void
.end method

.method public static closeAllOpenedCameras(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CameraListener;)V
    .locals 9

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/device/CameraStateManager;

    invoke-virtual {v1}, Lcom/motorola/camera/device/CameraStateManager;->getOpenCameraIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->closeAllModeSessionSurfaces()V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    iget-boolean v2, v2, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mNeedCloseAfterError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_1
    move v2, v3

    :goto_1
    monitor-exit v1

    if-eqz v2, :cond_2

    sget-object v2, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v1, v4, v2}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    invoke-virtual {v1, v4, v3}, Lcom/motorola/camera/device/CameraStateManager;->setCloseAfterError(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->closeAllModeSessionSurfaces()V

    :cond_2
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v6, "USE_CASE"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v2, v6, :cond_3

    sget-object v7, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v2, v7, :cond_3

    move v7, v5

    goto :goto_2

    :cond_3
    move v7, v3

    :goto_2
    if-ne v2, v6, :cond_4

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoRecording(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v8, v3

    goto :goto_3

    :cond_4
    move v8, v5

    goto :goto_3

    :cond_5
    move v7, v5

    move v8, v7

    :goto_3
    iget-object v6, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    new-instance v3, Lcom/motorola/camera/device/callables/CloseCameraCallable;

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/device/callables/CloseCameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;ZZ)V

    invoke-virtual {v2, v3}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    goto :goto_0

    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    return-void
.end method

.method private final onError$com$motorola$camera$fsm$camera$states$SingleShotStates$CaptureCancelRunnable(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method private final onError$com$motorola$camera$fsm$camera$states$modes$VideoStates$SetEosRequestRunnable(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method private final onError$com$motorola$camera$fsm$camera$states$modes$VideoStates$UpdateRequestToFlushVstabFrames(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onAbortCaptures()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SEQ_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const-class v1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v1

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "ImageCaptureManager"

    const-string v2, "CaptureRequest tag is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_1
    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    if-nez v2, :cond_1

    const-string v0, "ImageCaptureManager"

    const-string v2, "onCaptureCanceled is fast!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-static {v2}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f1200d2

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v2, 0x4

    iput v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    invoke-static {v1, p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onComplete(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Void;

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Void;

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Void;

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Void;

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->setupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 3

    iget p1, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onStopRepeating()V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->STOP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 7

    iget v1, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    .line 7
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 10
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    const/4 v4, 0x1

    .line 11
    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 13
    iget-object v4, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    move-object v0, v1

    move-object v1, v3

    const/4 v3, 0x0

    move-object v2, p0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/Result;->capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_common/zzje;Landroid/os/Handler;Z)V

    return-void

    .line 15
    :pswitch_0
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabEnableAndSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareQCom()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_END_OF_STREAM_SUPPORT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    .line 21
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 22
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v4

    const/4 v5, 0x5

    .line 23
    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 24
    sget-object v5, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_END_OF_STREAM_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v1, v4, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 26
    iget-object v4, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    move-object v0, v1

    move-object v1, v3

    const/4 v3, 0x0

    move-object v2, p0

    .line 27
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/Result;->capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_common/zzje;Landroid/os/Handler;Z)V

    :cond_1
    :goto_0
    return-void

    .line 28
    :pswitch_1
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    .line 30
    iget-object v4, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 31
    sget-object v6, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 32
    new-instance v0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;

    const/4 v5, 0x1

    move-object v3, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/device/callables/McfSetEventsCallable;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;I)V

    invoke-virtual {v6, v0}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void

    .line 33
    :pswitch_2
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 34
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    const/4 v4, 0x0

    int-to-byte v5, v4

    .line 36
    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->DISABLE_UW_DC_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v6, v1, v3, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 37
    sget-boolean v5, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->mMtkCshotSupport:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->mMtkSpeedUpSupported:Z

    if-eqz v5, :cond_2

    .line 38
    invoke-static {v1, v3, v4}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCShotEnabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 39
    :cond_2
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 40
    invoke-static {v1, p0, p0, v0}, Lcom/google/zxing/Result;->stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    .line 41
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 42
    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    const/4 v2, 0x2

    .line 43
    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus(ILjava/lang/String;)Z

    return-void

    .line 44
    :pswitch_3
    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p2, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    .line 45
    move-object v1, p3

    check-cast v1, Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;

    .line 46
    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "SWITCH_TYPE"

    .line 47
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    :cond_3
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 49
    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p2, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 50
    invoke-static {p2, p0}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;->closeAllOpenedCameras(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CameraListener;)V

    .line 51
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 52
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_CAMERA_CALLED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v4, 0x0

    .line 53
    invoke-direct {v1, v2, v4, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_1

    .line 55
    :cond_4
    invoke-static {p2, p0, v3}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;->closeAllCameras(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CameraListener;Z)V

    :goto_1
    return-void

    .line 56
    :pswitch_4
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v1

    const/4 v3, 0x1

    .line 58
    invoke-virtual {v1, p2, v3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->createCaptureRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x2

    .line 59
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 60
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 61
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_CREATE_REPROC_REQUEST:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_2

    .line 62
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    .line 63
    iget-object v4, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 64
    invoke-static {v3, v1, p0, v4}, Lcom/google/zxing/Result;->createCaptureRequests(Ljava/lang/String;Ljava/util/ArrayList;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    .line 65
    :goto_2
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/RequestBuilders;->ALL_PREVIEW_REQUESTS:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->setStreamingRequests(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 3
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 4
    :pswitch_2
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 5
    :pswitch_3
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 6
    :pswitch_4
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
