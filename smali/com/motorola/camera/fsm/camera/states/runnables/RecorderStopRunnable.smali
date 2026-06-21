.class public final Lcom/motorola/camera/fsm/camera/states/runnables/RecorderStopRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CallableListener;


# instance fields
.field public mSaveStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 9

    check-cast p1, Ljava/lang/Long;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->requestAudioFocus(Z)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "SDCARD_MOUNTED"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v6, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v7, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v8, 0x7f12011a

    invoke-direct {v7, v8}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    invoke-virtual {v7}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-eqz v3, :cond_5

    iget-object v5, v3, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v3, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-virtual {v6, p1}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setEndTime(Ljava/lang/Long;)V

    invoke-virtual {v3}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-virtual {v6, p1}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setEndTime(Ljava/lang/Long;)V

    invoke-virtual {v3}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p1

    iget v6, p1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mStatus:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    move v0, v4

    :cond_1
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapsePostprocessVideo(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1}, Lcom/motorola/camera/saving/SaveImageService;->finishVideoFile(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    new-instance v6, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/16 v7, 0x1d

    invoke-direct {v6, v7, p1, v4}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    :goto_1
    iget-object p1, v3, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderStopRunnable;->mSaveStartTime:J

    sub-long/2addr v3, v6

    const-string p1, "SAVE_TIME"

    invoke-virtual {v5, p1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "INITIAL_LUX"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v5, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_5
    if-nez v0, :cond_7

    if-nez v1, :cond_6

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_STOPPED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderStopRunnable;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v0, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->getVideoDuration()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setEndTime(Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->getVideoDuration()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_1
    const-wide/16 v3, 0x1f4

    cmp-long v0, v1, v3

    if-lez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f12012f

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    invoke-static {v2, v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_3
    instance-of p1, p1, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 2

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderStopRunnable;->mSaveStartTime:J

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->turnOff()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 7
    sget-object p2, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 8
    new-instance p3, Lcom/motorola/camera/device/callables/RecorderStopCallable;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-direct {p3, v0, p0, p1, v1}, Lcom/motorola/camera/device/callables/RecorderStopCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;I)V

    .line 10
    invoke-virtual {p2, p3}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    const/4 p0, 0x0

    .line 11
    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/DnDHandler;->muteNotifications(Z)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderStopRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
