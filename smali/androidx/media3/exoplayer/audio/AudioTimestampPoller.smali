.class public final Landroidx/media3/exoplayer/audio/AudioTimestampPoller;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

.field public initialTimestampPositionFrames:J

.field public initializeSystemTimeUs:J

.field public lastTimestampSampleTimeUs:J

.field public sampleIntervalUs:J

.field public state:I


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    :cond_0
    return-void
.end method

.method public final updateState(I)V
    .locals 6

    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-wide/32 v0, 0x7a120

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    return-void

    :cond_2
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    return-void

    :cond_3
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    return-void
.end method
