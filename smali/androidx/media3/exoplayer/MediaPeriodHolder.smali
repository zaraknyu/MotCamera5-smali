.class public final Landroidx/media3/exoplayer/MediaPeriodHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allRenderersInCorrectState:Z

.field public hasEnabledTracks:Z

.field public info:Landroidx/media3/exoplayer/MediaPeriodInfo;

.field public final mayRetainStreamFlags:[Z

.field public final mediaPeriod:Ljava/lang/Object;

.field public final mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

.field public next:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public prepareCalled:Z

.field public prepared:Z

.field public final rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

.field public rendererPositionOffsetUs:J

.field public final sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

.field public trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

.field public final trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

.field public trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Landroidx/media3/exoplayer/RendererCapabilities;JLandroidx/media3/exoplayer/trackselection/MappingTrackSelector;Landroidx/media3/exoplayer/upstream/DefaultAllocator;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    iput-wide p2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iput-object p4, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    iput-object p6, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p2, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p3, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    sget-object p3, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iput-object p8, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    array-length p3, p1

    new-array p3, p3, [Landroidx/media3/exoplayer/source/SampleStream;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    iget-wide p3, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v5, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    iget-boolean p1, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->isPrecededByTransitionFromSameStream:Z

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p7, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    sget p8, Landroidx/media3/exoplayer/PlaylistTimeline;->$r8$clinit:I

    check-cast p7, Landroid/util/Pair;

    iget-object p8, p7, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object p7, p7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, p7}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p2

    iget-object p7, p6, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByUid:Ljava/lang/Object;

    check-cast p7, Ljava/util/HashMap;

    invoke-virtual {p7, p8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p8, p6, Landroidx/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/lang/Object;

    check-cast p8, Ljava/util/HashSet;

    invoke-virtual {p8, p7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p8, p6, Landroidx/media3/exoplayer/MediaSourceList;->childSources:Ljava/lang/Object;

    check-cast p8, Ljava/util/HashMap;

    invoke-virtual {p8, p7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    if-eqz p8, :cond_0

    iget-object v0, p8, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iget-object p8, p8, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p8}, Landroidx/media3/exoplayer/source/BaseMediaSource;->enable(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    :cond_0
    iget-object p8, p7, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    invoke-virtual {p8, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p8, p7, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {p8, p2, p5, p3, p4}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    move-result-object v1

    iget-object p2, p6, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/lang/Object;

    check-cast p2, Ljava/util/IdentityHashMap;

    invoke-virtual {p2, v1, p7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p6}, Landroidx/media3/exoplayer/MediaSourceList;->disableUnusedMediaSources()V

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v5, p2

    if-eqz p2, :cond_1

    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    xor-int/lit8 v2, p1, 0x1

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJ)V

    move-object v1, v0

    :cond_1
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    if-nez p4, :cond_0

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-virtual {v1, v4, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isEquivalent(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_2
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length v6, v4

    const/4 v7, -0x2

    iget-object v8, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    if-ge v3, v6, :cond_3

    aget-object v4, v4, v3

    invoke-interface {v4}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v4

    if-ne v4, v7, :cond_2

    const/4 v4, 0x0

    aput-object v4, v8, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    iput-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    iget-object v10, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v11, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    iget-object v12, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    iget-object v9, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    move-wide/from16 v14, p2

    move-object/from16 v13, p5

    invoke-interface/range {v9 .. v15}, Landroidx/media3/exoplayer/source/MediaPeriod;->selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide v9

    move v3, v2

    :goto_3
    array-length v6, v4

    if-ge v3, v6, :cond_5

    aget-object v6, v4, v3

    invoke-interface {v6}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v6

    if-ne v6, v7, :cond_4

    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-virtual {v6, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lcom/google/mlkit/common/internal/zzb;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    aput-object v6, v8, v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    iput-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    move v3, v2

    :goto_4
    array-length v6, v8

    if-ge v3, v6, :cond_9

    aget-object v6, v8, v3

    if-eqz v6, :cond_6

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v6

    invoke-static {v6}, Landroidx/media3/common/util/Log;->checkState(Z)V

    aget-object v6, v4, v3

    invoke-interface {v6}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v6

    if-eq v6, v7, :cond_8

    iput-boolean v5, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    goto :goto_6

    :cond_6
    iget-object v6, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v6, v6, v3

    if-nez v6, :cond_7

    move v6, v5

    goto :goto_5

    :cond_7
    move v6, v2

    :goto_5
    invoke-static {v6}, Landroidx/media3/common/util/Log;->checkState(Z)V

    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    return-wide v9
.end method

.method public final disableTrackSelectionsInResult()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget v2, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v2, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->disable()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final enableTrackSelectionsInResult()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget v2, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v2, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->enable()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getBufferedPositionUs()J
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method public final getStartPositionRendererTime()J
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final handlePrepared(FLandroidx/media3/common/Timeline;Z)V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->selectTracks(FLandroidx/media3/common/Timeline;Z)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v2

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide p2, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v0, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v3

    if-eqz p1, :cond_0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    const-wide/16 p1, 0x1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    :cond_0
    move-wide v3, p2

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length p1, p1

    new-array v6, p1, [Z

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide p0

    iget-wide p2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-object v0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v2, p0

    add-long/2addr v2, p2

    iput-wide v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    invoke-virtual {v0, p0, p1}, Landroidx/media3/exoplayer/MediaPeriodInfo;->copyWithStartPositionUs(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p0

    iput-object p0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    return-void
.end method

.method public final isFullyBuffered()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isFullyPreloaded()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v0, v2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final release()V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    :try_start_0
    instance-of v1, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    if-eqz v1, :cond_0

    :try_start_1
    check-cast v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/MediaSourceList;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/MediaSourceList;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "MediaPeriodHolder"

    const-string v1, "Period release failed."

    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final selectTracks(FLandroidx/media3/common/Timeline;Z)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    new-array v4, v4, [I

    array-length v6, v2

    add-int/2addr v6, v5

    new-array v7, v6, [[Landroidx/media3/common/TrackGroup;

    array-length v8, v2

    add-int/2addr v8, v5

    new-array v13, v8, [[[I

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_0

    iget v10, v3, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    new-array v11, v10, [Landroidx/media3/common/TrackGroup;

    aput-object v11, v7, v9

    new-array v10, v10, [[I

    aput-object v10, v13, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    array-length v6, v2

    new-array v12, v6, [I

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_1

    aget-object v10, v2, v9

    invoke-interface {v10}, Landroidx/media3/exoplayer/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v10

    aput v10, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_2
    iget v9, v3, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v6, v9, :cond_a

    invoke-virtual {v3, v6}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v9

    iget v10, v9, Landroidx/media3/common/TrackGroup;->type:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_2

    move v10, v5

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    :goto_3
    array-length v11, v2

    move/from16 v16, v5

    const/16 p2, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    array-length v8, v2

    if-ge v14, v8, :cond_7

    aget-object v8, v2, v14

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move/from16 v17, v5

    move/from16 v1, p2

    move v5, v1

    :goto_5
    iget v3, v9, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v5, v3, :cond_3

    iget-object v3, v9, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v3, v3, v5

    invoke-interface {v8, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->supportsFormat(Landroidx/media3/common/Format;)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3
    aget v3, v4, v14

    if-nez v3, :cond_4

    move/from16 v3, v17

    goto :goto_6

    :cond_4
    move/from16 v3, p2

    :goto_6
    if-gt v1, v15, :cond_5

    if-ne v1, v15, :cond_6

    if-eqz v10, :cond_6

    if-nez v16, :cond_6

    if-eqz v3, :cond_6

    :cond_5
    move v15, v1

    move/from16 v16, v3

    move v11, v14

    :cond_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v17

    move-object/from16 v1, v18

    move-object/from16 v3, v19

    goto :goto_4

    :cond_7
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move/from16 v17, v5

    array-length v1, v2

    if-ne v11, v1, :cond_8

    iget v1, v9, Landroidx/media3/common/TrackGroup;->length:I

    new-array v1, v1, [I

    goto :goto_8

    :cond_8
    aget-object v1, v2, v11

    iget v3, v9, Landroidx/media3/common/TrackGroup;->length:I

    new-array v3, v3, [I

    move/from16 v5, p2

    :goto_7
    iget v8, v9, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v5, v8, :cond_9

    iget-object v8, v9, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v8, v8, v5

    invoke-interface {v1, v8}, Landroidx/media3/exoplayer/RendererCapabilities;->supportsFormat(Landroidx/media3/common/Format;)I

    move-result v8

    aput v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_9
    move-object v1, v3

    :goto_8
    aget v3, v4, v11

    aget-object v5, v7, v11

    aput-object v9, v5, v3

    aget-object v5, v13, v11

    aput-object v1, v5, v3

    add-int/lit8 v3, v3, 0x1

    aput v3, v4, v11

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v17

    move-object/from16 v1, v18

    move-object/from16 v3, v19

    goto/16 :goto_2

    :cond_a
    move-object/from16 v18, v1

    move/from16 v17, v5

    const/16 p2, 0x0

    array-length v1, v2

    new-array v11, v1, [Landroidx/media3/exoplayer/source/TrackGroupArray;

    array-length v1, v2

    new-array v1, v1, [Ljava/lang/String;

    array-length v3, v2

    new-array v10, v3, [I

    move/from16 v3, p2

    :goto_9
    array-length v5, v2

    if-ge v3, v5, :cond_b

    aget v5, v4, v3

    new-instance v6, Landroidx/media3/exoplayer/source/TrackGroupArray;

    aget-object v8, v7, v3

    invoke-static {v5, v8}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v6, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    aput-object v6, v11, v3

    aget-object v6, v13, v3

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    aput-object v5, v13, v3

    aget-object v5, v2, v3

    invoke-interface {v5}, Landroidx/media3/exoplayer/RendererCapabilities;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    aget-object v5, v2, v3

    invoke-interface {v5}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v5

    aput v5, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_b
    array-length v1, v2

    aget v1, v4, v1

    new-instance v14, Landroidx/media3/exoplayer/source/TrackGroupArray;

    array-length v2, v2

    aget-object v2, v7, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v14, v1}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    new-instance v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-direct/range {v9 .. v14}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([I[Landroidx/media3/exoplayer/source/TrackGroupArray;[I[[[ILandroidx/media3/exoplayer/source/TrackGroupArray;)V

    move-object/from16 v1, v18

    check-cast v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v2, v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v2, :cond_c

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x20

    if-lt v2, v4, :cond_c

    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Landroidx/compose/runtime/Latch;

    if-nez v2, :cond_c

    new-instance v2, Landroidx/compose/runtime/Latch;

    iget-object v4, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    invoke-direct {v2, v4, v1}, Landroidx/compose/runtime/Latch;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;)V

    iput-object v2, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Landroidx/compose/runtime/Latch;

    :cond_c
    iget v2, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    iget-object v4, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    new-array v5, v2, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    move/from16 v6, p2

    :goto_a
    iget v7, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    const/4 v8, 0x2

    if-ge v6, v7, :cond_e

    aget v7, v10, v6

    if-ne v8, v7, :cond_d

    aget-object v7, v11, v6

    iget v7, v7, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-lez v7, :cond_d

    move/from16 v6, v17

    goto :goto_b

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_e
    move/from16 v6, p2

    :goto_b
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1, v3, v6, v12}, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Z[I)V

    new-instance v6, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v14, 0xa

    invoke-direct {v6, v14}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    move/from16 v14, v17

    invoke-static {v14, v9, v13, v7, v6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTracksForType(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_f

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v14, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object v14, v5, v7

    :cond_f
    if-nez v6, :cond_10

    const/4 v6, 0x0

    goto :goto_c

    :cond_10
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    iget-object v14, v6, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iget-object v6, v6, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    aget v6, v6, p2

    iget-object v14, v14, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v6, v14, v6

    iget-object v6, v6, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    :goto_c
    iget-object v14, v3, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v14, v3, Landroidx/media3/common/TrackSelectionParameters;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    if-eqz v14, :cond_19

    if-eqz v4, :cond_19

    const-string v14, "display"

    invoke-virtual {v4, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/display/DisplayManager;

    if-eqz v14, :cond_11

    move/from16 v7, p2

    const/16 v16, 0x0

    invoke-virtual {v14, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v14

    goto :goto_d

    :cond_11
    const/16 v16, 0x0

    move-object/from16 v14, v16

    :goto_d
    if-nez v14, :cond_12

    const-string/jumbo v7, "window"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    :cond_12
    sget v7, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v14}, Landroid/view/Display;->getDisplayId()I

    move-result v18

    if-nez v18, :cond_16

    invoke-static {v4}, Landroidx/media3/common/util/Util;->isTv(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_16

    const/16 v8, 0x1c

    if-ge v7, v8, :cond_13

    const-string/jumbo v8, "sys.display-size"

    invoke-static {v8}, Landroidx/media3/common/util/Util;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :cond_13
    const-string/jumbo v8, "vendor.display-size"

    invoke-static {v8}, Landroidx/media3/common/util/Util;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_e
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_15

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v20, v10

    :try_start_2
    const-string/jumbo v10, "x"
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v21, v11

    const/4 v11, -0x1

    :try_start_3
    invoke-virtual {v15, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v15, 0x2

    if-ne v11, v15, :cond_14

    const/4 v11, 0x0

    aget-object v15, v10, v11

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/16 v17, 0x1

    aget-object v10, v10, v17

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-lez v11, :cond_14

    if-lez v10, :cond_14

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v11, v10}, Landroid/graphics/Point;-><init>(II)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_13

    :catch_0
    :goto_f
    move-object/from16 v21, v11

    goto :goto_10

    :catch_1
    move-object/from16 v20, v10

    goto :goto_f

    :catch_2
    :cond_14
    :goto_10
    const-string v10, "Util"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v15, "Invalid display size: "

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_15
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    :goto_11
    const-string v8, "Sony"

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "BRAVIA"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v10, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    new-instance v7, Landroid/graphics/Point;

    const/16 v8, 0xf00

    const/16 v10, 0x870

    invoke-direct {v7, v8, v10}, Landroid/graphics/Point;-><init>(II)V

    move-object v15, v7

    goto :goto_13

    :cond_16
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    :cond_17
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    const/16 v10, 0x17

    if-lt v7, v10, :cond_18

    invoke-virtual {v14}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v10

    iput v10, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v7

    iput v7, v8, Landroid/graphics/Point;->y:I

    goto :goto_12

    :cond_18
    invoke-virtual {v14, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_12
    move-object v15, v8

    goto :goto_13

    :cond_19
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    const/16 v16, 0x0

    move-object/from16 v15, v16

    :goto_13
    new-instance v7, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;

    invoke-direct {v7, v3, v6, v12, v15}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;[ILandroid/graphics/Point;)V

    new-instance v8, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v10, 0x9

    invoke-direct {v8, v10}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v15, 0x2

    invoke-static {v15, v9, v13, v7, v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTracksForType(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v7

    const/4 v8, 0x4

    if-nez v7, :cond_1a

    new-instance v10, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/16 v11, 0xd

    invoke-direct {v10, v11, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    new-instance v11, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v12, 0x8

    invoke-direct {v11, v12}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v8, v9, v13, v10, v11}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTracksForType(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v10

    goto :goto_14

    :cond_1a
    move-object/from16 v10, v16

    :goto_14
    if-eqz v10, :cond_1b

    iget-object v7, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object v10, v5, v7

    goto :goto_15

    :cond_1b
    if-eqz v7, :cond_1c

    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object v7, v5, v10

    :cond_1c
    :goto_15
    iget-boolean v7, v3, Landroidx/media3/common/TrackSelectionParameters;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    if-eqz v7, :cond_20

    if-nez v4, :cond_1d

    goto :goto_16

    :cond_1d
    const-string v7, "captioning"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/CaptioningManager;

    if-eqz v4, :cond_20

    invoke-virtual {v4}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1e

    goto :goto_16

    :cond_1e
    invoke-virtual {v4}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v4

    if-nez v4, :cond_1f

    goto :goto_16

    :cond_1f
    sget v7, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    goto :goto_17

    :cond_20
    :goto_16
    move-object/from16 v4, v16

    :goto_17
    new-instance v7, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;

    const/4 v14, 0x1

    invoke-direct {v7, v3, v6, v4, v14}, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    new-instance v4, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v6, 0xb

    invoke-direct {v4, v6}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v6, 0x3

    invoke-static {v6, v9, v13, v7, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTracksForType(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_21

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object v4, v5, v7

    :cond_21
    const/4 v4, 0x0

    :goto_18
    if-ge v4, v2, :cond_29

    aget v7, v20, v4

    const/4 v15, 0x2

    if-eq v7, v15, :cond_28

    const/4 v14, 0x1

    if-eq v7, v14, :cond_28

    if-eq v7, v6, :cond_28

    if-eq v7, v8, :cond_28

    aget-object v7, v21, v4

    aget-object v10, v13, v4

    move-object/from16 v14, v16

    move-object v15, v14

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_19
    iget v8, v7, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v11, v8, :cond_26

    invoke-virtual {v7, v11}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v8

    aget-object v22, v10, v11

    move/from16 v23, v4

    move-object v6, v15

    move-object v15, v14

    move v14, v12

    const/4 v12, 0x0

    :goto_1a
    iget v4, v8, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v12, v4, :cond_25

    aget v4, v22, v12

    move-object/from16 v24, v7

    iget-boolean v7, v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v4, v7}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result v4

    if-eqz v4, :cond_23

    iget-object v4, v8, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v4, v4, v12

    new-instance v7, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;

    move-object/from16 v25, v8

    aget v8, v22, v12

    invoke-direct {v7, v4, v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;-><init>(Landroidx/media3/common/Format;I)V

    if-eqz v6, :cond_22

    sget-object v4, Lcom/google/common/collect/ComparisonChain;->ACTIVE:Lcom/google/common/collect/ComparisonChain$1;

    iget-boolean v8, v7, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isWithinRendererCapabilities:Z

    move-object/from16 v26, v10

    iget-boolean v10, v6, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isWithinRendererCapabilities:Z

    invoke-virtual {v4, v8, v10}, Lcom/google/common/collect/ComparisonChain$1;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v4

    iget-boolean v8, v7, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isDefault:Z

    iget-boolean v10, v6, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isDefault:Z

    invoke-virtual {v4, v8, v10}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result v4

    if-lez v4, :cond_24

    goto :goto_1b

    :cond_22
    move-object/from16 v26, v10

    :goto_1b
    move-object v6, v7

    move v14, v12

    move-object/from16 v15, v25

    goto :goto_1c

    :cond_23
    move-object/from16 v25, v8

    move-object/from16 v26, v10

    :cond_24
    :goto_1c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v10, v26

    goto :goto_1a

    :cond_25
    move-object/from16 v24, v7

    move-object/from16 v26, v10

    add-int/lit8 v11, v11, 0x1

    move v12, v14

    move-object v14, v15

    move/from16 v4, v23

    move-object v15, v6

    const/4 v6, 0x3

    goto :goto_19

    :cond_26
    move/from16 v23, v4

    if-nez v14, :cond_27

    move-object/from16 v4, v16

    goto :goto_1d

    :cond_27
    new-instance v4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    filled-new-array {v12}, [I

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v14, v6}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(ILandroidx/media3/common/TrackGroup;[I)V

    :goto_1d
    aput-object v4, v5, v23

    goto :goto_1e

    :cond_28
    move/from16 v23, v4

    :goto_1e
    add-int/lit8 v4, v23, 0x1

    const/4 v6, 0x3

    const/4 v8, 0x4

    goto/16 :goto_18

    :cond_29
    iget v4, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    iget-object v6, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    :goto_1f
    if-ge v8, v4, :cond_2a

    aget-object v10, v6, v8

    invoke-static {v10, v3, v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->collectTrackSelectionOverrides(Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/util/HashMap;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    :cond_2a
    iget-object v8, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->unmappedTrackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-static {v8, v3, v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->collectTrackSelectionOverrides(Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/util/HashMap;)V

    const/4 v8, 0x0

    :goto_20
    if-ge v8, v4, :cond_2e

    iget-object v10, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v10, v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/common/TrackSelectionOverride;

    if-nez v10, :cond_2b

    goto :goto_24

    :cond_2b
    iget-object v11, v10, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget-object v10, v10, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v10}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2d

    aget-object v12, v6, v8

    iget-object v12, v12, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {v12, v11}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    if-ltz v12, :cond_2c

    :goto_21
    const/4 v13, -0x1

    goto :goto_22

    :cond_2c
    const/4 v12, -0x1

    goto :goto_21

    :goto_22
    if-eq v12, v13, :cond_2d

    new-instance v12, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    invoke-static {v10}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v10

    const/4 v13, 0x0

    invoke-direct {v12, v13, v11, v10}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(ILandroidx/media3/common/TrackGroup;[I)V

    goto :goto_23

    :cond_2d
    move-object/from16 v12, v16

    :goto_23
    aput-object v12, v5, v8

    :goto_24
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_2e
    iget v4, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    const/4 v6, 0x0

    :goto_25
    if-ge v6, v4, :cond_32

    iget-object v7, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    aget-object v7, v7, v6

    iget-object v8, v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-eqz v8, :cond_31

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    iget-object v8, v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-eqz v8, :cond_30

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2f

    goto :goto_26

    :cond_2f
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_30
    :goto_26
    aput-object v16, v5, v6

    :cond_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_32
    const/4 v4, 0x0

    :goto_27
    if-ge v4, v2, :cond_35

    iget-object v6, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v6, v6, v4

    iget-object v7, v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_33

    iget-object v7, v3, Landroidx/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    :cond_33
    aput-object v16, v5, v4

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_35
    iget-object v4, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->trackSelectionFactory:Lcom/google/mlkit/common/internal/zzc;

    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_28
    array-length v6, v5

    const-wide/16 v7, 0x0

    if-ge v4, v6, :cond_37

    aget-object v6, v5, v4

    if-eqz v6, :cond_36

    iget-object v6, v6, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v6, v6

    const/4 v14, 0x1

    if-le v6, v14, :cond_36

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v6

    new-instance v10, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    invoke-direct {v10, v7, v8, v7, v8}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v6, v10}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v16

    goto :goto_29

    :cond_36
    move-object/from16 v6, v16

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_29
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v16, v6

    goto :goto_28

    :cond_37
    move-object/from16 v6, v16

    array-length v4, v5

    new-array v10, v4, [[J

    const/4 v11, 0x0

    :goto_2a
    array-length v12, v5

    const-wide/16 v13, -0x1

    if-ge v11, v12, :cond_3b

    aget-object v12, v5, v11

    if-nez v12, :cond_38

    const/4 v15, 0x0

    new-array v12, v15, [J

    aput-object v12, v10, v11

    goto :goto_2c

    :cond_38
    iget-object v15, v12, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v6, v15

    new-array v6, v6, [J

    aput-object v6, v10, v11

    const/4 v6, 0x0

    :goto_2b
    array-length v7, v15

    if-ge v6, v7, :cond_3a

    iget-object v7, v12, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    aget v8, v15, v6

    iget-object v7, v7, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v7, v7, v8

    iget v7, v7, Landroidx/media3/common/Format;->bitrate:I

    int-to-long v7, v7

    aget-object v22, v10, v11

    cmp-long v23, v7, v13

    if-nez v23, :cond_39

    const-wide/16 v7, 0x0

    :cond_39
    aput-wide v7, v22, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_3a
    aget-object v6, v10, v11

    invoke-static {v6}, Ljava/util/Arrays;->sort([J)V

    :goto_2c
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    goto :goto_2a

    :cond_3b
    new-array v6, v4, [I

    new-array v7, v4, [J

    const/4 v8, 0x0

    :goto_2d
    if-ge v8, v4, :cond_3d

    aget-object v11, v10, v8

    array-length v12, v11

    if-nez v12, :cond_3c

    const-wide/16 v11, 0x0

    goto :goto_2e

    :cond_3c
    const/4 v15, 0x0

    aget-wide v11, v11, v15

    :goto_2e
    aput-wide v11, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    :cond_3d
    invoke-static {v1, v7}, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->addCheckpoint(Ljava/util/ArrayList;[J)V

    const-string v8, "expectedValuesPerKey"

    const/4 v15, 0x2

    invoke-static {v15, v8}, Lcom/google/common/collect/Maps;->checkNonnegative(ILjava/lang/String;)V

    new-instance v8, Ljava/util/TreeMap;

    sget-object v11, Lcom/google/common/collect/NaturalOrdering;->INSTANCE:Lcom/google/common/collect/NaturalOrdering;

    invoke-direct {v8, v11}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    new-instance v11, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;

    invoke-direct {v11}, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;-><init>()V

    new-instance v12, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6c

    iput-object v8, v12, Lcom/google/common/collect/Multimaps$CustomListMultimap;->map:Ljava/util/Map;

    iput-object v11, v12, Lcom/google/common/collect/Multimaps$CustomListMultimap;->factory:Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;

    const/4 v8, 0x0

    :goto_2f
    if-ge v8, v4, :cond_46

    aget-object v11, v10, v8

    array-length v15, v11

    move-wide/from16 v20, v13

    const/4 v13, 0x1

    if-gt v15, v13, :cond_3e

    move/from16 v18, v4

    move-object/from16 v22, v10

    :goto_30
    move-object/from16 v25, v6

    move/from16 v26, v8

    goto/16 :goto_37

    :cond_3e
    array-length v11, v11

    new-array v13, v11, [D

    const/4 v14, 0x0

    :goto_31
    aget-object v15, v10, v8

    move/from16 v18, v4

    array-length v4, v15

    const-wide/16 v23, 0x0

    if-ge v14, v4, :cond_40

    move-object v4, v10

    move/from16 v22, v11

    aget-wide v10, v15, v14

    cmp-long v15, v10, v20

    if-nez v15, :cond_3f

    goto :goto_32

    :cond_3f
    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v23

    :goto_32
    aput-wide v23, v13, v14

    add-int/lit8 v14, v14, 0x1

    move-object v10, v4

    move/from16 v4, v18

    move/from16 v11, v22

    goto :goto_31

    :cond_40
    move-object v4, v10

    move/from16 v22, v11

    add-int/lit8 v11, v22, -0x1

    aget-wide v14, v13, v11

    const/4 v10, 0x0

    aget-wide v25, v13, v10

    sub-double v14, v14, v25

    const/4 v10, 0x0

    :goto_33
    if-ge v10, v11, :cond_45

    aget-wide v25, v13, v10

    add-int/lit8 v10, v10, 0x1

    aget-wide v27, v13, v10

    add-double v25, v25, v27

    const-wide/high16 v27, 0x3fe0000000000000L    # 0.5

    mul-double v25, v25, v27

    cmpl-double v22, v14, v23

    if-nez v22, :cond_41

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    :goto_34
    move-object/from16 v22, v4

    goto :goto_35

    :cond_41
    const/16 v22, 0x0

    aget-wide v27, v13, v22

    sub-double v25, v25, v27

    div-double v25, v25, v14

    goto :goto_34

    :goto_35
    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v25, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move/from16 v26, v8

    iget-object v8, v12, Lcom/google/common/collect/Multimaps$CustomListMultimap;->map:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move/from16 v28, v10

    move-object/from16 v10, v27

    check-cast v10, Ljava/util/Collection;

    if-nez v10, :cond_43

    iget-object v10, v12, Lcom/google/common/collect/Multimaps$CustomListMultimap;->factory:Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;

    invoke-virtual {v10}, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    iget v6, v12, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    const/16 v17, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v12, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    invoke-interface {v8, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    :cond_42
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "New Collection violated the Collection spec"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_43
    const/16 v17, 0x1

    invoke-interface {v10, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    iget v4, v12, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v12, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    :cond_44
    :goto_36
    move-object/from16 v4, v22

    move-object/from16 v6, v25

    move/from16 v8, v26

    move/from16 v10, v28

    goto :goto_33

    :cond_45
    move-object/from16 v22, v4

    goto/16 :goto_30

    :goto_37
    add-int/lit8 v8, v26, 0x1

    move/from16 v4, v18

    move-wide/from16 v13, v20

    move-object/from16 v10, v22

    move-object/from16 v6, v25

    goto/16 :goto_2f

    :cond_46
    move-object/from16 v25, v6

    move-object/from16 v22, v10

    iget-object v4, v12, Lcom/google/common/collect/AbstractMultimap;->values:Lcom/google/common/collect/Maps$Values;

    if-nez v4, :cond_47

    new-instance v4, Lcom/google/common/collect/Maps$Values;

    const/4 v6, 0x3

    invoke-direct {v4, v12, v6}, Lcom/google/common/collect/Maps$Values;-><init>(Ljava/io/Serializable;I)V

    iput-object v4, v12, Lcom/google/common/collect/AbstractMultimap;->values:Lcom/google/common/collect/Maps$Values;

    :cond_47
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const/4 v6, 0x0

    :goto_38
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v6, v8, :cond_48

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget v10, v25, v8

    const/16 v17, 0x1

    add-int/lit8 v10, v10, 0x1

    aput v10, v25, v8

    aget-object v11, v22, v8

    aget-wide v10, v11, v10

    aput-wide v10, v7, v8

    invoke-static {v1, v7}, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->addCheckpoint(Ljava/util/ArrayList;[J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    :cond_48
    const/4 v4, 0x0

    :goto_39
    array-length v6, v5

    if-ge v4, v6, :cond_4a

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_49

    aget-wide v10, v7, v4

    const-wide/16 v12, 0x2

    mul-long/2addr v10, v12

    aput-wide v10, v7, v4

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_4a
    invoke-static {v1, v7}, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->addCheckpoint(Ljava/util/ArrayList;[J)V

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    const/4 v6, 0x0

    :goto_3a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4c

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/collect/ImmutableList$Builder;

    if-nez v7, :cond_4b

    sget-object v7, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    goto :goto_3b

    :cond_4b
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object v7

    :goto_3b
    invoke-virtual {v4, v7}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    :cond_4c
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    array-length v4, v5

    new-array v4, v4, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    const/4 v7, 0x0

    :goto_3c
    array-length v6, v5

    if-ge v7, v6, :cond_51

    aget-object v6, v5, v7

    if-eqz v6, :cond_4d

    iget-object v8, v6, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iget-object v6, v6, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v10, v6

    if-nez v10, :cond_4e

    :cond_4d
    move-object/from16 v18, v1

    goto :goto_3e

    :cond_4e
    array-length v10, v6

    const/4 v14, 0x1

    if-ne v10, v14, :cond_4f

    new-instance v10, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;

    const/4 v15, 0x0

    aget v6, v6, v15

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v10, v15, v8, v6}, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;-><init>(ILandroidx/media3/common/TrackGroup;[I)V

    move-object/from16 v18, v1

    goto :goto_3d

    :cond_4f
    invoke-virtual {v1, v7}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/common/collect/ImmutableList;

    new-instance v11, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;

    const/16 v12, 0x2710

    int-to-long v12, v12

    const/16 v14, 0x61a8

    int-to-long v14, v14

    move-object/from16 v18, v1

    const/4 v1, 0x1

    invoke-direct {v11, v1, v8, v6}, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;-><init>(ILandroidx/media3/common/TrackGroup;[I)V

    cmp-long v1, v14, v12

    if-gez v1, :cond_50

    const-string v1, "AdaptiveTrackSelection"

    const-string v6, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs"

    invoke-static {v1, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    invoke-static {v10}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-object v10, v11

    :goto_3d
    aput-object v10, v4, v7

    :goto_3e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v18

    goto :goto_3c

    :cond_51
    new-array v1, v2, [Landroidx/media3/exoplayer/RendererConfiguration;

    const/4 v7, 0x0

    :goto_3f
    const/4 v5, -0x2

    if-ge v7, v2, :cond_55

    iget-object v6, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v6, v6, v7

    iget-object v8, v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_54

    iget-object v8, v3, Landroidx/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    goto :goto_40

    :cond_52
    iget-object v6, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v6, v6, v7

    if-eq v6, v5, :cond_53

    aget-object v5, v4, v7

    if-eqz v5, :cond_54

    :cond_53
    sget-object v5, Landroidx/media3/exoplayer/RendererConfiguration;->DEFAULT:Landroidx/media3/exoplayer/RendererConfiguration;

    goto :goto_41

    :cond_54
    :goto_40
    const/4 v5, 0x0

    :goto_41
    aput-object v5, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    :cond_55
    iget-object v2, v3, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v3, v2

    new-array v3, v3, [Ljava/util/List;

    const/4 v7, 0x0

    :goto_42
    array-length v4, v2

    if-ge v7, v4, :cond_57

    aget-object v4, v2, v7

    if-eqz v4, :cond_56

    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v4

    goto :goto_43

    :cond_56
    sget-object v4, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v4, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    :goto_43
    aput-object v4, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    :cond_57
    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;-><init>(I)V

    const/4 v7, 0x0

    :goto_44
    iget v4, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    iget-object v6, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    if-ge v7, v4, :cond_63

    aget-object v4, v6, v7

    aget-object v8, v3, v7

    const/4 v10, 0x0

    :goto_45
    iget v11, v4, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v10, v11, :cond_62

    invoke-virtual {v4, v10}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v11

    aget-object v12, v6, v7

    invoke-virtual {v12, v10}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v12

    iget v12, v12, Landroidx/media3/common/TrackGroup;->length:I

    new-array v13, v12, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_46
    if-ge v14, v12, :cond_59

    iget-object v5, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    aget-object v5, v5, v7

    aget-object v5, v5, v10

    aget v5, v5, v14

    and-int/lit8 v5, v5, 0x7

    move-object/from16 v20, v3

    const/4 v3, 0x4

    if-eq v5, v3, :cond_58

    goto :goto_47

    :cond_58
    add-int/lit8 v5, v15, 0x1

    aput v14, v13, v15

    move v15, v5

    :goto_47
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v20

    const/4 v5, -0x2

    goto :goto_46

    :cond_59
    move-object/from16 v20, v3

    const/4 v3, 0x4

    invoke-static {v13, v15}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    const/16 v12, 0x10

    move-object/from16 v21, v4

    move v15, v12

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_48
    array-length v4, v5

    if-ge v12, v4, :cond_5b

    aget v4, v5, v12

    move/from16 v22, v4

    aget-object v4, v6, v7

    invoke-virtual {v4, v10}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v4

    iget-object v4, v4, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v4, v4, v22

    iget-object v4, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    add-int/lit8 v22, v14, 0x1

    if-nez v14, :cond_5a

    move-object v3, v4

    const/16 v17, 0x1

    goto :goto_49

    :cond_5a
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/16 v17, 0x1

    xor-int/lit8 v4, v4, 0x1

    or-int/2addr v4, v13

    move v13, v4

    :goto_49
    iget-object v4, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    aget-object v4, v4, v7

    aget-object v4, v4, v10

    aget v4, v4, v12

    and-int/lit8 v4, v4, 0x18

    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    add-int/lit8 v12, v12, 0x1

    move/from16 v14, v22

    goto :goto_48

    :cond_5b
    const/16 v17, 0x1

    if-eqz v13, :cond_5c

    iget-object v3, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererMixedMimeTypeAdaptiveSupports:[I

    aget v3, v3, v7

    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_5c
    if-eqz v15, :cond_5d

    move/from16 v14, v17

    goto :goto_4a

    :cond_5d
    const/4 v14, 0x0

    :goto_4a
    iget v3, v11, Landroidx/media3/common/TrackGroup;->length:I

    new-array v4, v3, [I

    new-array v3, v3, [Z

    const/4 v5, 0x0

    :goto_4b
    iget v12, v11, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v5, v12, :cond_61

    iget-object v12, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    aget-object v12, v12, v7

    aget-object v12, v12, v10

    aget v12, v12, v5

    and-int/lit8 v12, v12, 0x7

    aput v12, v4, v5

    const/4 v12, 0x0

    :goto_4c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_60

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v13}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5e

    invoke-interface {v13, v5}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->indexOf(I)I

    move-result v13

    const/4 v15, -0x1

    if-eq v13, v15, :cond_5f

    move/from16 v12, v17

    goto :goto_4d

    :cond_5e
    const/4 v15, -0x1

    :cond_5f
    add-int/lit8 v12, v12, 0x1

    goto :goto_4c

    :cond_60
    const/4 v15, -0x1

    const/4 v12, 0x0

    :goto_4d
    aput-boolean v12, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    :cond_61
    const/4 v15, -0x1

    new-instance v5, Landroidx/media3/common/Tracks$Group;

    invoke-direct {v5, v11, v14, v4, v3}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    const/4 v5, -0x2

    goto/16 :goto_45

    :cond_62
    move-object/from16 v20, v3

    const/4 v15, -0x1

    const/16 v17, 0x1

    add-int/lit8 v7, v7, 0x1

    const/4 v5, -0x2

    goto/16 :goto_44

    :cond_63
    const/16 v17, 0x1

    iget-object v3, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->unmappedTrackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    const/4 v7, 0x0

    :goto_4e
    iget v4, v3, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v7, v4, :cond_64

    invoke-virtual {v3, v7}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v4

    iget v5, v4, Landroidx/media3/common/TrackGroup;->length:I

    new-array v5, v5, [I

    const/4 v15, 0x0

    invoke-static {v5, v15}, Ljava/util/Arrays;->fill([II)V

    iget v6, v4, Landroidx/media3/common/TrackGroup;->length:I

    new-array v6, v6, [Z

    new-instance v8, Landroidx/media3/common/Tracks$Group;

    invoke-direct {v8, v4, v15, v5, v6}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    invoke-virtual {v2, v8}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    :cond_64
    const/4 v15, 0x0

    new-instance v3, Landroidx/media3/common/Tracks;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object v2

    invoke-direct {v3, v2}, Landroidx/media3/common/Tracks;-><init>(Lcom/google/common/collect/RegularImmutableList;)V

    new-instance v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Landroidx/media3/exoplayer/RendererConfiguration;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-direct {v2, v4, v1, v3, v9}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V

    move v7, v15

    :goto_4f
    iget v1, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    if-ge v7, v1, :cond_69

    invoke-virtual {v2, v7}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v1, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v1, v1, v7

    if-nez v1, :cond_66

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v1, v1, v7

    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v3, -0x2

    if-ne v1, v3, :cond_65

    goto :goto_50

    :cond_65
    move v14, v15

    goto :goto_51

    :cond_66
    const/4 v3, -0x2

    :goto_50
    move/from16 v14, v17

    :goto_51
    invoke-static {v14}, Landroidx/media3/common/util/Log;->checkState(Z)V

    goto :goto_53

    :cond_67
    const/4 v3, -0x2

    iget-object v1, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v1, v1, v7

    if-nez v1, :cond_68

    move/from16 v14, v17

    goto :goto_52

    :cond_68
    move v14, v15

    :goto_52
    invoke-static {v14}, Landroidx/media3/common/util/Log;->checkState(Z)V

    :goto_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    :cond_69
    iget-object v0, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v1, v0

    move v8, v15

    :goto_54
    if-ge v8, v1, :cond_6b

    aget-object v3, v0, v8

    move/from16 v4, p1

    if-eqz v3, :cond_6a

    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    move/from16 v5, p3

    invoke-interface {v3, v5}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    goto :goto_55

    :cond_6a
    move/from16 v5, p3

    :goto_55
    add-int/lit8 v8, v8, 0x1

    goto :goto_54

    :cond_6b
    return-object v2

    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final updateClipping()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    :cond_0
    check-cast v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    iput-wide v1, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    :cond_1
    return-void
.end method
