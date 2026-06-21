.class public final Landroidx/media3/exoplayer/RendererHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public index:I

.field public prewarmingState:I

.field public primaryRenderer:Ljava/lang/Object;

.field public primaryRequiresReset:Z

.field public secondaryRenderer:Ljava/lang/Object;

.field public secondaryRequiresReset:Z


# direct methods
.method public static isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z
    .locals 0

    .line 6
    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setCurrentStreamFinalInternal(Landroidx/media3/exoplayer/Renderer;J)V
    .locals 1

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->setCurrentStreamFinal()V

    instance-of v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/media3/exoplayer/text/TextRenderer;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    :cond_0
    return-void
.end method


# virtual methods
.method public disableRenderer(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/Renderer;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/Renderer;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    invoke-static {p1}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    iget-object p0, p2, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    if-ne p1, p0, :cond_3

    const/4 p0, 0x0

    iput-object p0, p2, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    iput-object p0, p2, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    iput-boolean v1, p2, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    :cond_3
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result p0

    const/4 p2, 0x2

    if-ne p0, p2, :cond_4

    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->stop()V

    :cond_4
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->disable()V

    return-void
.end method

.method public getEnabledRendererCount()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/Renderer;

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public getRendererReadingFromPeriod(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/Renderer;

    iget-object v1, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/Renderer;

    iget p0, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v2, p1, p0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v2

    aget-object v3, p1, p0

    if-ne v2, v3, :cond_1

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v1

    aget-object p0, p1, p0

    if-ne v1, p0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasFinishedReadingFromPeriodInternal(Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/Renderer;)Z
    .locals 6

    iget p0, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    const/4 v0, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v1, v1, p0

    invoke-interface {p2}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v2

    if-ne v2, v1, :cond_2

    if-eqz v1, :cond_4

    invoke-interface {p2}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v2, :cond_2

    instance-of v2, p2, Landroidx/media3/exoplayer/text/TextRenderer;

    if-nez v2, :cond_1

    instance-of v2, p2, Landroidx/media3/exoplayer/metadata/MetadataRenderer;

    if-nez v2, :cond_1

    invoke-interface {p2}, Landroidx/media3/exoplayer/Renderer;->getReadingPositionUs()J

    move-result-wide v2

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz p1, :cond_3

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object p0, p1, p0

    invoke-interface {p2}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object p1

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public isPrewarming()Z
    .locals 1

    iget p0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isRendererEnabled()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/Renderer;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 5
    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/Renderer;

    invoke-static {p0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result p0

    return p0
.end method

.method public isRendererPrewarming(I)Z
    .locals 5

    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    iget p0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    if-ne p1, v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v4, 0x3

    if-ne p0, v4, :cond_2

    if-eq p1, v0, :cond_2

    move p0, v3

    goto :goto_1

    :cond_2
    move p0, v2

    :goto_1
    if-nez v1, :cond_4

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    return v2

    :cond_4
    :goto_2
    return v3
.end method

.method public maybeResetRenderer(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->reset()V

    iput-boolean v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    return-void

    :cond_0
    iget-boolean p1, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->reset()V

    iput-boolean v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    :cond_1
    return-void
.end method

.method public replaceStreamsOrDisableRendererForTransitionInternal(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/DefaultMediaClock;)I
    .locals 11

    iget-object v4, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/Renderer;

    iget v5, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    const/4 v6, 0x1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v7

    if-eqz v7, :cond_b

    if-ne p1, v4, :cond_1

    iget v7, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    :cond_0
    return v6

    :cond_1
    iget-object v7, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v7, Landroidx/media3/exoplayer/Renderer;

    const/4 v8, 0x3

    if-ne p1, v7, :cond_2

    iget v7, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    if-ne v7, v8, :cond_2

    return v6

    :cond_2
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v7

    iget-object v9, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v9, v9, v5

    const/4 v10, 0x0

    if-eq v7, v9, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v10

    :goto_0
    invoke-virtual {p3, v5}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_4

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->isCurrentStreamFinal()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v0, p3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v0, v0, v5

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v3

    goto :goto_1

    :cond_5
    move v3, v10

    :goto_1
    new-array v1, v3, [Landroidx/media3/common/Format;

    :goto_2
    if-ge v10, v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v10}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v4

    aput-object v4, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v3

    iget-wide v5, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-object v2, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v7, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v2, v0

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Landroidx/media3/exoplayer/Renderer;->replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return v8

    :cond_7
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0, p1, p4}, Landroidx/media3/exoplayer/RendererHolder;->disableRenderer(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Landroidx/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    if-ne p1, v4, :cond_9

    move v10, v6

    :cond_9
    invoke-virtual {p0, v10}, Landroidx/media3/exoplayer/RendererHolder;->maybeResetRenderer(Z)V

    return v6

    :cond_a
    return v10

    :cond_b
    :goto_3
    return v6
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/Renderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/RendererHolder;->maybeResetRenderer(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/Renderer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/RendererHolder;->maybeResetRenderer(Z)V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/Renderer;

    iget-object v1, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->start()V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget p0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->start()V

    :cond_1
    return-void
.end method
