.class public final Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public accumulatedRawTimestampFramePosition:J

.field public final audioTimestamp:Landroid/media/AudioTimestamp;

.field public final audioTrack:Landroid/media/AudioTrack;

.field public expectTimestampFramePositionReset:Z

.field public lastTimestampPositionFrames:J

.field public lastTimestampRawPositionFrames:J

.field public rawTimestampFramePositionWrapCount:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTrack:Landroid/media/AudioTrack;

    new-instance p1, Landroid/media/AudioTimestamp;

    invoke-direct {p1}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTimestamp:Landroid/media/AudioTimestamp;

    return-void
.end method
