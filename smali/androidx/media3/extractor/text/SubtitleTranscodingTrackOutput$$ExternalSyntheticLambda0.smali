.class public final synthetic Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$2:I

    iput-wide p3, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;JI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$1:J

    iput p4, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-object v3, v1, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentFormat:Landroidx/media3/common/Format;

    invoke-static {v3}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v3, v2, Landroidx/media3/extractor/text/CuesWithTiming;->cues:Lcom/google/common/collect/ImmutableList;

    iget-wide v4, v2, Landroidx/media3/extractor/text/CuesWithTiming;->durationUs:J

    new-instance v6, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    const/16 v7, 0x19

    invoke-direct {v6, v7}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v6, "c"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v6, "d"

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    iget-object v4, v1, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->parsableScratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v5, v3

    invoke-virtual {v4, v5, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    iget-object v5, v1, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->delegate:Landroidx/media3/extractor/TrackOutput;

    array-length v6, v3

    const/4 v7, 0x0

    invoke-interface {v5, v4, v6, v7}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget-wide v4, v2, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v8

    iget-wide v8, v0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$1:J

    const/4 v6, 0x1

    const-wide v10, 0x7fffffffffffffffL

    if-nez v2, :cond_2

    iget-object v2, v1, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentFormat:Landroidx/media3/common/Format;

    iget-wide v4, v2, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    cmp-long v2, v4, v10

    if-nez v2, :cond_1

    move v7, v6

    :cond_1
    invoke-static {v7}, Landroidx/media3/common/util/Log;->checkState(Z)V

    :goto_1
    move-wide v11, v8

    goto :goto_2

    :cond_2
    iget-object v2, v1, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentFormat:Landroidx/media3/common/Format;

    iget-wide v12, v2, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    cmp-long v2, v12, v10

    if-nez v2, :cond_3

    add-long/2addr v8, v4

    goto :goto_1

    :cond_3
    add-long v8, v4, v12

    goto :goto_1

    :goto_2
    iget-object v10, v1, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->delegate:Landroidx/media3/extractor/TrackOutput;

    iget v0, v0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$2:I

    or-int/lit8 v13, v0, 0x1

    array-length v14, v3

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object v1, p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    iget-object v2, p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    iget-object v3, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v3, :cond_2

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p1, v0, v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getSessionForMediaPeriodId(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    if-nez v0, :cond_0

    move-wide v6, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_0
    iget-wide v8, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$1:J

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_1
    iget p0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$2:I

    int-to-long v2, p0

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
