.class public final Landroidx/media3/exoplayer/DefaultMediaClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/MediaClock;


# instance fields
.field public isUsingStandaloneClock:Z

.field public final listener:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

.field public rendererClock:Landroidx/media3/exoplayer/MediaClock;

.field public rendererClockSource:Landroidx/media3/exoplayer/Renderer;

.field public final standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

.field public standaloneClockIsStarted:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/common/util/SystemClock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->listener:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    new-instance p1, Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/StandaloneMediaClock;-><init>(Landroidx/media3/common/util/SystemClock;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    return-void
.end method


# virtual methods
.method public final getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/MediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    iget-object p0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object p0
.end method

.method public final getPositionUs()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/media3/exoplayer/MediaClock;->getPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final hasSkippedSilenceSinceLastCall()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/media3/exoplayer/MediaClock;->hasSkippedSilenceSinceLastCall()Z

    move-result p0

    return p0
.end method

.method public final onRendererEnabled(Landroidx/media3/exoplayer/Renderer;)V
    .locals 2

    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getMediaClock()Landroidx/media3/exoplayer/MediaClock;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    iget-object p0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    check-cast v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Multiple renderer media clocks enabled."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v0, 0x2

    const/16 v1, 0x3e8

    invoke-direct {p1, v0, p0, v1}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    throw p1

    :cond_1
    return-void
.end method

.method public final setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/MediaClock;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    invoke-interface {p1}, Landroidx/media3/exoplayer/MediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/StandaloneMediaClock;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method
