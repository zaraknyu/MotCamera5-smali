.class public final Landroidx/media3/exoplayer/source/ClippingMediaSource;
.super Landroidx/media3/exoplayer/source/WrappingMediaSource;
.source "SourceFile"


# instance fields
.field public clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

.field public clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

.field public final enableInitialDiscontinuity:Z

.field public final endUs:J

.field public final mediaPeriods:Ljava/util/ArrayList;

.field public periodEndUs:J

.field public periodStartUs:J

.field public final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;)V
    .locals 2

    iget-object v0, p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;-><init>(Landroidx/media3/exoplayer/source/BaseMediaSource;)V

    iget-wide v0, p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->endPositionUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->endUs:J

    iget-boolean p1, p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->enableInitialDiscontinuity:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    return-void
.end method


# virtual methods
.method public final createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 7

    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/BaseMediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v1

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJ)V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final maybeThrowSourceInfoRefreshError()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void

    :cond_0
    throw v0
.end method

.method public final onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;->refreshClippedTimeline(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public final refreshClippedTimeline(Landroidx/media3/common/Timeline;)V
    .locals 13

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v1, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)V

    iget-wide v4, v0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    iget-wide v6, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->endUs:J

    const-wide/high16 v8, -0x8000000000000000L

    iget-object v10, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v11, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    sub-long/2addr v11, v4

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    move-wide v6, v8

    goto :goto_0

    :cond_0
    iget-wide v6, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    sub-long/2addr v6, v4

    :goto_0
    move-wide v4, v11

    goto :goto_3

    :cond_1
    iput-wide v4, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    add-long v8, v4, v6

    :goto_1
    iput-wide v8, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_3

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-wide v8, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v11, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    iput-wide v8, v4, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    iput-wide v11, v4, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const-wide/16 v11, 0x0

    goto :goto_0

    :goto_3
    :try_start_0
    new-instance v2, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;-><init>(Landroidx/media3/common/Timeline;JJ)V

    iput-object v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;
    :try_end_0
    .catch Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    iput-object v2, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public final releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    check-cast p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;->refreshClippedTimeline(Landroidx/media3/common/Timeline;)V

    :cond_0
    return-void
.end method

.method public final releaseSourceInternal()V
    .locals 1

    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->releaseSourceInternal()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    return-void
.end method
