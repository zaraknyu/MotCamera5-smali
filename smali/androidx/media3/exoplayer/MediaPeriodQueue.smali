.class public final Landroidx/media3/exoplayer/MediaPeriodQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

.field public final analyticsCollectorHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

.field public length:I

.field public loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public final mediaPeriodHolderFactory:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

.field public nextWindowSequenceNumber:J

.field public oldFrontPeriodUid:Ljava/lang/Object;

.field public oldFrontPeriodWindowSequenceNumber:J

.field public final period:Landroidx/media3/common/Timeline$Period;

.field public playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public preloadPriorityList:Ljava/util/ArrayList;

.field public preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public repeatMode:I

.field public shuffleModeEnabled:Z

.field public final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;Landroidx/media3/common/util/SystemHandlerWrapper;Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->analyticsCollectorHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->mediaPeriodHolderFactory:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    return-void
.end method

.method public static resolveMediaPeriodIdForAds(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 8

    invoke-virtual {p0, p1, p7}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget v4, p7, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {p0, v4, p6}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    iget-object v4, p7, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v4, v4, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-ne v4, v5, :cond_0

    invoke-virtual {p7, v7}, Landroidx/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    :cond_0
    iget-object v4, p7, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7, v7}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    :cond_1
    invoke-virtual {p0, p1, p7}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p7, p2, p3}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    invoke-virtual {p7, p2, p3}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v0

    new-instance v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {v1, p1, p4, p5, v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    return-object v1

    :cond_2
    invoke-virtual {p7, v0}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v2

    move v1, v0

    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    const/4 v3, -0x1

    move-object v6, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(IIIJLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final advancePlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v0, v2, :cond_1

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v0, v2, :cond_2

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->release()V

    iget v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    if-nez v0, :cond_3

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object p0
.end method

.method public final clear()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->release()V

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    return-void
.end method

.method public final getFollowingMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    iget-object v8, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-wide v4, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    add-long/2addr v2, v4

    sub-long v10, v2, p3

    iget-boolean v2, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-eqz v2, :cond_6

    iget-object v2, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v12, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v13, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-object v2, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    iget-boolean v6, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->getNextPeriodIndex(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v15, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v15, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget v4, v3, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v3, v15, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    move-wide/from16 p3, v5

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v7, v5, v6}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v7

    iget v7, v7, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v7, v2, :cond_4

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-wide v5, v2

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual/range {v1 .. v8}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_1
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v1, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v1, :cond_3

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    :cond_2
    :goto_1
    move-wide v9, v1

    move-object v2, v3

    move-wide v3, v5

    move-wide v5, v9

    move-wide/from16 v9, v16

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolvePeriodUidToWindowSequenceNumberInPreloadPeriods(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide/16 v7, -0x1

    cmp-long v4, v1, v7

    if-nez v4, :cond_2

    iget-wide v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v1

    iput-wide v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    goto :goto_1

    :cond_4
    move-object v2, v3

    move-wide v3, v5

    move-wide v9, v3

    move-wide/from16 v5, p3

    :goto_2
    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v8, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    cmp-long v5, v9, v16

    if-eqz v5, :cond_5

    cmp-long v5, v13, v16

    if-eqz v5, :cond_5

    iget-object v5, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v5, v15}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v5, v5, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    iget-object v6, v15, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    :cond_5
    move-wide v5, v3

    move-wide v3, v9

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_6
    iget-object v9, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v12, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v2, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    move v3, v2

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v12, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-boolean v4, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    invoke-virtual {v9}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_b

    iget v3, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v5, v2, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v5, v3}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v5

    iget v5, v5, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ne v5, v6, :cond_7

    goto :goto_4

    :cond_7
    iget v6, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v7, v2, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v7, v3}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getNextAdIndexToPlay(I)I

    move-result v6

    if-ge v6, v5, :cond_8

    iget-object v2, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    move v7, v4

    move v4, v6

    iget-wide v5, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    move v10, v7

    iget-wide v7, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move v9, v10

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForAd(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    :cond_8
    move-object v13, v0

    move v14, v4

    iget-wide v0, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v0, v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_a

    iget v3, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-wide v10, v4

    move-wide v4, v0

    iget-object v1, v13, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v1

    move-object v4, v2

    move-object v2, v0

    if-nez v1, :cond_9

    :goto_4
    const/4 v0, 0x0

    return-object v0

    :cond_9
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_5

    :cond_a
    move-wide v10, v4

    move-object v4, v2

    move-object/from16 v2, p1

    :goto_5
    iget v3, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v2, v12, v4}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v4, v3}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    iget-object v4, v4, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v4, v3}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v5, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v7, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v1, p1

    move-object v0, v13

    move v9, v14

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForContent(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    :cond_b
    move v14, v4

    move-object v4, v2

    if-eq v3, v6, :cond_c

    invoke-virtual {v4, v3}, Landroidx/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    :cond_c
    invoke-virtual {v4, v3}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v0

    invoke-virtual {v4, v3}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    iget-object v1, v4, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v1, v3}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-eq v0, v1, :cond_d

    iget-object v2, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v3, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget-wide v5, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v7, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v1, p1

    move v4, v0

    move v9, v14

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForAd(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    :cond_d
    move-object/from16 v1, p1

    invoke-virtual {v1, v12, v4}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v4, v3}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    iget-object v0, v4, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0, v3}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v5, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v7, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    const/4 v9, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForContent(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 11

    iget-object v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v4, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v5, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v8, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForAd(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v7, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p3

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForContent(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getMediaPeriodInfoForAd(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 15

    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    const/4 v3, -0x1

    move-object/from16 v6, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v4, p7

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(IIIJLjava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    move-object/from16 v3, p1

    invoke-virtual {v3, v6, p0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v8

    invoke-virtual {p0, v1}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v8, v1

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_1

    cmp-long p0, v1, v8

    if-ltz p0, :cond_1

    const-wide/16 v3, 0x1

    sub-long v3, v8, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_1
    move-wide v2, v1

    move-object v1, v0

    new-instance v0, Landroidx/media3/exoplayer/MediaPeriodInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v4, p5

    move/from16 v10, p9

    invoke-direct/range {v0 .. v14}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZZ)V

    return-object v0
.end method

.method public final getMediaPeriodInfoForContent(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v5}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v5, v3, v4}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    :cond_0
    const/4 v8, 0x0

    if-ne v6, v7, :cond_1

    iget-object v9, v5, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v9, v9, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-lez v9, :cond_2

    invoke-virtual {v5, v8}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    :cond_2
    :goto_0
    new-instance v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-wide/from16 v9, p7

    invoke-direct {v11, v2, v9, v10, v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {v11}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    const/4 v9, 0x1

    if-nez v2, :cond_3

    if-ne v6, v7, :cond_3

    move v8, v9

    :cond_3
    invoke-virtual {v0, v1, v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInWindow(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v23

    invoke-virtual {v0, v1, v11, v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInTimeline(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z

    move-result v24

    if-eq v6, v7, :cond_4

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    :cond_4
    const-wide/16 v0, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v6, v7, :cond_5

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-wide/from16 v16, v0

    goto :goto_1

    :cond_5
    move-wide/from16 v16, v12

    :goto_1
    cmp-long v2, v16, v12

    if-eqz v2, :cond_7

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v16, v6

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move-wide/from16 v18, v16

    goto :goto_3

    :cond_7
    :goto_2
    iget-wide v5, v5, Landroidx/media3/common/Timeline$Period;->durationUs:J

    move-wide/from16 v18, v5

    :goto_3
    cmp-long v2, v18, v12

    if-eqz v2, :cond_8

    cmp-long v2, v3, v18

    if-ltz v2, :cond_8

    int-to-long v2, v9

    sub-long v2, v18, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v12, v0

    goto :goto_4

    :cond_8
    move-wide v12, v3

    :goto_4
    new-instance v10, Landroidx/media3/exoplayer/MediaPeriodInfo;

    const/16 v21, 0x0

    move-wide/from16 v14, p5

    move/from16 v20, p9

    move/from16 v22, v8

    invoke-direct/range {v10 .. v24}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZZ)V

    return-object v10
.end method

.method public final getUpdatedMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    iget v5, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const/4 v6, -0x1

    if-nez v4, :cond_0

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v12, v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :goto_1
    iget v4, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v0, v1, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInWindow(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v13

    invoke-virtual {v0, v1, v3, v12}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInTimeline(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z

    move-result v14

    iget-object v7, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v7, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_2

    if-ne v5, v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v5}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    const-wide/16 v9, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    move-wide v9, v7

    :goto_3
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v0, v4, v1}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v7

    goto :goto_5

    :cond_3
    cmp-long v1, v9, v7

    if-eqz v1, :cond_5

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v1, v9, v7

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    move-wide v7, v9

    goto :goto_5

    :cond_5
    :goto_4
    iget-wide v7, v0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    :goto_5
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v4}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    goto :goto_6

    :cond_6
    if-eq v5, v6, :cond_7

    invoke-virtual {v0, v5}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    :cond_7
    :goto_6
    new-instance v0, Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    move-wide v15, v4

    iget-wide v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-boolean v1, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->isPrecededByTransitionFromSameStream:Z

    const/4 v11, 0x0

    move-wide/from16 v17, v9

    move-wide v8, v7

    move-wide/from16 v6, v17

    move v10, v1

    move-object v1, v3

    move-wide v2, v15

    invoke-direct/range {v0 .. v14}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZZ)V

    return-object v0
.end method

.method public final isLastInTimeline(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z
    .locals 7

    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    const/4 v6, 0x0

    invoke-virtual {p1, v1, p2, v6}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p2, v0, v2, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p2

    iget-boolean p2, p2, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-nez p2, :cond_0

    iget v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    iget-boolean v5, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->getNextPeriodIndex(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v6
.end method

.method public final isLastInWindow(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 5

    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p2

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v0, p0, v3, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget p0, p0, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-ne p0, p2, :cond_2

    return v1

    :cond_2
    :goto_1
    return v2
.end method

.method public final maybeUpdatePreloadMediaPeriodHolder()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isFullyPreloaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isFullyPreloaded()Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final notifyQueueUpdate()V
    .locals 4

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :goto_1
    new-instance v2, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->analyticsCollectorHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final reevaluateBuffer(J)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Ljava/lang/Object;

    iget-wide v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->reevaluateBuffer(J)V

    :cond_1
    return-void
.end method

.method public final removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)I
    .locals 2

    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_0
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x3

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    or-int/lit8 v0, v1, 0x2

    move v1, v0

    :cond_2
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->release()V

    iget v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    return v1
.end method

.method public final resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 14

    move-object/from16 v1, p2

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v4, :cond_0

    invoke-virtual {p1, v4}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-virtual {p1, v4, v2, v5}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    if-ne v4, v3, :cond_0

    iget-wide v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    goto :goto_2

    :cond_0
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_0
    if-eqz v4, :cond_2

    iget-object v7, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v3, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    goto :goto_2

    :cond_1
    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_1
    if-eqz v4, :cond_4

    iget-object v7, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v7}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v7

    if-eq v7, v6, :cond_3

    invoke-virtual {p1, v7, v2, v5}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v7

    iget v7, v7, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    if-ne v7, v3, :cond_3

    iget-object v3, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    goto :goto_2

    :cond_3
    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolvePeriodUidToWindowSequenceNumberInPreloadPeriods(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    iget-wide v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v3

    iput-wide v7, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    iget-object v7, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v7, :cond_6

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    iput-wide v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    :cond_6
    :goto_2
    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget v7, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v8, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v7, v8}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)V

    invoke-virtual/range {p1 .. p2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v7

    move v9, v5

    :goto_3
    iget v10, v8, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    if-lt v7, v10, :cond_a

    const/4 v10, 0x1

    invoke-virtual {p1, v7, v2, v10}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    iget-object v11, v2, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v11, v11, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-lez v11, :cond_7

    goto :goto_4

    :cond_7
    move v10, v5

    :goto_4
    or-int/2addr v9, v10

    iget-wide v11, v2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    invoke-virtual {v2, v11, v12}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v11

    if-eq v11, v6, :cond_8

    iget-object v1, v2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    if-eqz v9, :cond_9

    if-eqz v10, :cond_a

    iget-wide v10, v2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_a
    :goto_5
    iget-object v6, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v7, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    move-object v0, p1

    move-wide v4, v3

    move-wide/from16 v2, p3

    invoke-static/range {v0 .. v7}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method public final resolvePeriodUidToWindowSequenceNumberInPreloadPeriods(Ljava/lang/Object;)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide p0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final updateForPlaybackModeChange(Landroidx/media3/common/Timeline;)I
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    :goto_0
    iget v5, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    iget-boolean v6, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->getNextPeriodIndex(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result v2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz p1, :cond_1

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-nez v3, :cond_1

    move-object v0, p1

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    move-result p1

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    return p1
.end method

.method public final updateQueuedPeriods(Landroidx/media3/common/Timeline;JJJ)I
    .locals 14

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_b

    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v2

    move-wide/from16 v5, p2

    goto :goto_1

    :cond_0
    move-wide/from16 v5, p2

    invoke-virtual {p0, p1, v2, v5, v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-wide v8, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v10, v7, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_a

    iget-object v8, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v9, v7, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v8, v9}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    move-object v2, v7

    :goto_1
    iget-wide v7, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v9, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    invoke-virtual {v2, v9, v10}, Landroidx/media3/exoplayer/MediaPeriodInfo;->copyWithRequestedContentPositionUs(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v9, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v9, v11

    if-eqz v2, :cond_9

    cmp-long v2, v9, v7

    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->updateClipping()V

    cmp-long v0, v7, v11

    if-nez v0, :cond_2

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_2

    :cond_2
    iget-wide v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    add-long/2addr v4, v7

    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v2, 0x1

    const-wide/high16 v6, -0x8000000000000000L

    if-ne v1, v0, :cond_4

    iget-object v0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    if-nez v0, :cond_4

    cmp-long v0, p4, v6

    if-eqz v0, :cond_3

    cmp-long v0, p4, v4

    if-ltz v0, :cond_4

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    iget-object v8, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v1, v8, :cond_6

    cmp-long v6, p6, v6

    if-eqz v6, :cond_5

    cmp-long v4, p6, v4

    if-ltz v4, :cond_6

    :cond_5
    move v3, v2

    :cond_6
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    move-result p0

    if-eqz p0, :cond_7

    return p0

    :cond_7
    if-eqz v3, :cond_8

    or-int/lit8 p0, v0, 0x2

    return p0

    :cond_8
    return v0

    :cond_9
    :goto_4
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    move-result p0

    return p0

    :cond_b
    return v3
.end method
