.class public final Lcom/motorola/camera/capturedmediadata/RecordingTime;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mEndTime:J

.field public mPauseCount:I

.field public mPauseDuration:J

.field public mPauseTime:J

.field public mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    return-void
.end method


# virtual methods
.method public final getVideoDuration()Ljava/lang/Long;
    .locals 4

    iget-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    sub-long/2addr v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final setEndTime(Ljava/lang/Long;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    iget-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setResumeTime(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method public final setResumeTime(Ljava/lang/Long;)V
    .locals 6

    iget-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecordingTime{mStartTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPauseDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPauseCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureRate=0.0, mEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->getVideoDuration()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
