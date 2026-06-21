.class public final Landroidx/media3/exoplayer/source/MaskingMediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;


# instance fields
.field public final allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

.field public callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field public final id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

.field public mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

.field public preparePositionOverrideUs:J

.field public final preparePositionUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionUs:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    return-void
.end method


# virtual methods
.method public final continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/SequenceableLoader;->continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionUs:J

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {v2, p1, v3, v0, v1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    if-eqz v2, :cond_1

    invoke-interface {p1, p0, v0, v1}, Landroidx/media3/exoplayer/source/MediaPeriod;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    :cond_1
    return-void
.end method

.method public final discardBuffer(J)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(J)V

    return-void
.end method

.method public final getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getBufferedPositionUs()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNextLoadPositionUs()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object p0

    return-object p0
.end method

.method public final isLoading()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->isLoading()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final maybeThrowPrepareError()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->maybeThrowSourceInfoRefreshError()V

    :cond_1
    return-void
.end method

.method public final onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public final onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public final prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-eqz p1, :cond_1

    iget-wide p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionUs:J

    :goto_0
    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    :cond_1
    return-void
.end method

.method public final readDiscontinuity()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public final reevaluateBuffer(J)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->reevaluateBuffer(J)V

    return-void
.end method

.method public final seekToUs(J)J
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 6

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionUs:J

    cmp-long v4, p5, v4

    if-nez v4, :cond_0

    move-wide p5, v0

    :cond_0
    iput-wide v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-interface/range {p0 .. p6}, Landroidx/media3/exoplayer/source/MediaPeriod;->selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide p0

    return-wide p0
.end method
