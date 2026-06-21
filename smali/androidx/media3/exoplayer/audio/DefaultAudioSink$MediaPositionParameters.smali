.class public final Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final audioTrackPositionUs:J

.field public mediaPositionDriftUs:J

.field public final mediaTimeUs:J

.field public final playbackParameters:Landroidx/media3/common/PlaybackParameters;


# direct methods
.method public constructor <init>(Landroidx/media3/common/PlaybackParameters;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    iput-wide p4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    return-void
.end method
