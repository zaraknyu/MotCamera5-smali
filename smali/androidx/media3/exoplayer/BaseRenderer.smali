.class public abstract Landroidx/media3/exoplayer/BaseRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/Renderer;
.implements Landroidx/media3/exoplayer/RendererCapabilities;


# instance fields
.field public clock:Landroidx/media3/common/util/SystemClock;

.field public configuration:Landroidx/media3/exoplayer/RendererConfiguration;

.field public final formatHolder:Landroidx/room/concurrent/FileLock;

.field public index:I

.field public lastResetPositionUs:J

.field public final lock:Ljava/lang/Object;

.field public playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public readingPositionUs:J

.field public rendererCapabilitiesListener:Landroidx/media3/exoplayer/RendererCapabilities$Listener;

.field public state:I

.field public stream:Landroidx/media3/exoplayer/source/SampleStream;

.field public streamFormats:[Landroidx/media3/common/Format;

.field public streamIsFinal:Z

.field public streamOffsetUs:J

.field public throwRendererExceptionIsExecuting:Z

.field public timeline:Landroidx/media3/common/Timeline;

.field public final trackType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->lock:Ljava/lang/Object;

    iput p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->trackType:I

    new-instance p1, Landroidx/room/concurrent/FileLock;

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/room/concurrent/FileLock;-><init>(IZ)V

    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/room/concurrent/FileLock;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    sget-object p1, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline$1;

    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->timeline:Landroidx/media3/common/Timeline;

    return-void
.end method


# virtual methods
.method public final clearListener()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->rendererCapabilitiesListener:Landroidx/media3/exoplayer/RendererCapabilities$Listener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final createRendererException(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 9

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    iget-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p0, p2}, Landroidx/media3/exoplayer/RendererCapabilities;->supportsFormat(Landroidx/media3/common/Format;)I

    move-result v3
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x7

    iput-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    throw v0

    :catch_0
    iput-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    :cond_0
    move v3, v0

    :goto_0
    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Landroidx/media3/exoplayer/BaseRenderer;->index:I

    move v1, v0

    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    if-nez p2, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    const/4 v1, 0x1

    move-object v2, p1

    move-object v6, p2

    move v8, p3

    move v3, p4

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;ILjava/lang/String;ILandroidx/media3/common/Format;IZ)V

    return-object v0
.end method

.method public final disable()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/room/concurrent/FileLock;

    invoke-virtual {v0}, Landroidx/room/concurrent/FileLock;->clear()V

    iput v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    iput-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamFormats:[Landroidx/media3/common/Format;

    iput-boolean v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->onDisabled()V

    return-void
.end method

.method public final enable(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;ZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 9

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    const/4 v8, 0x0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    iput v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    invoke-virtual {p0, p4, p5}, Landroidx/media3/exoplayer/BaseRenderer;->onEnabled(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p6

    move-wide/from16 v5, p8

    move-object/from16 v7, p10

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/exoplayer/BaseRenderer;->replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    iput-boolean v8, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    iput-wide v3, p0, Landroidx/media3/exoplayer/BaseRenderer;->lastResetPositionUs:J

    iput-wide v3, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    invoke-virtual {p0, v3, v4, p4}, Landroidx/media3/exoplayer/BaseRenderer;->onPositionReset(JZ)V

    return-void
.end method

.method public final getCapabilities()Landroidx/media3/exoplayer/RendererCapabilities;
    .locals 0

    return-object p0
.end method

.method public getMediaClock()Landroidx/media3/exoplayer/MediaClock;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getReadingPositionUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    return-wide v0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    return p0
.end method

.method public final getStream()Landroidx/media3/exoplayer/source/SampleStream;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    return-object p0
.end method

.method public final getTrackType()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->trackType:I

    return p0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final init(ILandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/util/SystemClock;)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->index:I

    iput-object p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    iput-object p3, p0, Landroidx/media3/exoplayer/BaseRenderer;->clock:Landroidx/media3/common/util/SystemClock;

    return-void
.end method

.method public final isCurrentStreamFinal()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    return p0
.end method

.method public isEnded()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result p0

    return p0
.end method

.method public final maybeThrowStreamError()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SampleStream;->maybeThrowError()V

    return-void
.end method

.method public abstract onDisabled()V
.end method

.method public onEnabled(ZZ)V
    .locals 0

    return-void
.end method

.method public abstract onPositionReset(JZ)V
.end method

.method public onRelease()V
    .locals 0

    return-void
.end method

.method public onReset()V
    .locals 0

    return-void
.end method

.method public onStarted()V
    .locals 0

    return-void
.end method

.method public onStopped()V
    .locals 0

    return-void
.end method

.method public onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    return-void
.end method

.method public final readSource(Landroidx/room/concurrent/FileLock;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/SampleStream;->readData(Landroidx/room/concurrent/FileLock;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    iget-boolean p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, -0x3

    return p0

    :cond_1
    iget-wide v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    return p3

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    iget-object p2, p1, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/common/Format;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p2, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p2

    iget-wide v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    new-instance p0, Landroidx/media3/common/Format;

    invoke-direct {p0, p2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object p0, p1, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    :cond_3
    return p3
.end method

.method public final release()V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->onRelease()V

    return-void
.end method

.method public final replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 7

    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-object p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iput-wide p3, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamFormats:[Landroidx/media3/common/Format;

    iput-wide p5, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamOffsetUs:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/BaseRenderer;->onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public final reset()V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/room/concurrent/FileLock;

    invoke-virtual {v0}, Landroidx/room/concurrent/FileLock;->clear()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->onReset()V

    return-void
.end method

.method public final resetPosition(J)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->lastResetPositionUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/BaseRenderer;->onPositionReset(JZ)V

    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    return-void
.end method

.method public final setListener(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->rendererCapabilitiesListener:Landroidx/media3/exoplayer/RendererCapabilities$Listener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setTimeline(Landroidx/media3/common/Timeline;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->timeline:Landroidx/media3/common/Timeline;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->timeline:Landroidx/media3/common/Timeline;

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->onStarted()V

    return-void
.end method

.method public final stop()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->onStopped()V

    return-void
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
