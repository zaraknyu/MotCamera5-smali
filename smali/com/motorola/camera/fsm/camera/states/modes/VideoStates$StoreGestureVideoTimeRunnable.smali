.class public final Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StoreGestureVideoTimeRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final mAction:I

.field public final mIsCodecVideo:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StoreGestureVideoTimeRunnable;->mIsCodecVideo:Z

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StoreGestureVideoTimeRunnable;->mAction:I

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 5

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p1

    .line 5
    iget-object p2, p1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    .line 6
    iget-boolean p3, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StoreGestureVideoTimeRunnable;->mIsCodecVideo:Z

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 7
    :goto_0
    iget-wide v2, p2, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    .line 8
    iget-wide p2, p2, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 10
    check-cast p1, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;

    .line 11
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StoreGestureVideoTimeRunnable;->mAction:I

    if-nez p0, :cond_1

    .line 12
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->mGesturePauseTime:Ljava/util/ArrayList;

    sub-long/2addr v0, v2

    sub-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 v4, 0x1

    if-ne p0, v4, :cond_2

    sub-long/2addr v0, v2

    sub-long/2addr v0, p2

    .line 13
    iput-wide v0, p1, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->mGestureStopTime:J

    :cond_2
    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StoreGestureVideoTimeRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
