.class public final Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CallableListener;


# instance fields
.field public final mPausing:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;->mPausing:Z

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Ljava/lang/Long;

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;->mPausing:Z

    const-string v1, "VIDEO_PAUSED"

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p1, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v3, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    iget v5, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseCount:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseCount:I

    invoke-virtual {v0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v3, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    iget v0, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseCount:I

    add-int/2addr v0, v6

    iput v0, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseCount:I

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_PAUSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setResumeTime(Ljava/lang/Long;)V

    invoke-virtual {v0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setResumeTime(Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_RESUMED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 4
    sget-object p2, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 5
    new-instance p3, Lcom/motorola/camera/device/callables/RecorderPauseCallable;

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;->mPausing:Z

    invoke-direct {p3, v0, p0, p1}, Lcom/motorola/camera/device/callables/RecorderPauseCallable;-><init>(ZLcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;Landroid/os/Handler;)V

    invoke-virtual {p2, p3}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/RecorderPauseRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
