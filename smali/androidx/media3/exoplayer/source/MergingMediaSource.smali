.class public final Landroidx/media3/exoplayer/source/MergingMediaSource;
.super Landroidx/media3/exoplayer/source/CompositeMediaSource;
.source "SourceFile"


# static fields
.field public static final PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;


# instance fields
.field public final compositeSequenceableLoaderFactory:Landroidx/collection/internal/Lock;

.field public final mediaPeriods:Ljava/util/ArrayList;

.field public final mediaSources:[Landroidx/media3/exoplayer/source/BaseMediaSource;

.field public mergeError:Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

.field public final pendingTimelineSources:Ljava/util/ArrayList;

.field public periodCount:I

.field public periodTimeOffsetsUs:[[J

.field public final timelines:[Landroidx/media3/common/Timeline;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {v0}, Landroidx/media3/extractor/PositionHolder;-><init>()V

    sget-object v1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    new-instance v1, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>()V

    sget-object v8, Landroidx/media3/common/MediaItem$RequestMetadata;->EMPTY:Landroidx/media3/common/MediaItem$RequestMetadata;

    new-instance v2, Landroidx/media3/common/MediaItem;

    new-instance v4, Landroidx/media3/common/MediaItem$ClippingProperties;

    invoke-direct {v4, v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration;-><init>(Landroidx/media3/extractor/PositionHolder;)V

    new-instance v6, Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-direct {v6, v1}, Landroidx/media3/common/MediaItem$LiveConfiguration;-><init>(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)V

    sget-object v7, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    const-string v3, "MergingMediaSource"

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Landroidx/media3/common/MediaItem;-><init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$ClippingProperties;Landroidx/media3/common/MediaItem$LocalConfiguration;Landroidx/media3/common/MediaItem$LiveConfiguration;Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/MediaItem$RequestMetadata;)V

    sput-object v2, Landroidx/media3/exoplayer/source/MergingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/exoplayer/source/BaseMediaSource;)V
    .locals 4

    new-instance v0, Landroidx/collection/internal/Lock;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/BaseMediaSource;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->compositeSequenceableLoaderFactory:Landroidx/collection/internal/Lock;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p1

    new-array p1, p1, [Landroidx/media3/common/Timeline;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    new-array p1, v0, [[J

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 p0, 0x8

    const-string p1, "expectedKeys"

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->checkNonnegative(ILjava/lang/String;)V

    const/4 p0, 0x2

    const-string p1, "expectedValuesPerKey"

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->checkNonnegative(ILjava/lang/String;)V

    invoke-static {}, Lcom/google/common/collect/CompactHashMap;->createWithExpectedSize()Lcom/google/common/collect/CompactHashMap;

    move-result-object p0

    new-instance p1, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;

    invoke-direct {p1}, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/BaseMediaSource;

    array-length v1, v0

    new-array v2, v1, [Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    iget-object v6, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v5

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v6, v3, v4

    invoke-virtual {v6, v5}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v6

    aget-object v7, v0, v4

    iget-object v8, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object v8, v8, v5

    aget-wide v8, v8, v4

    sub-long v8, p3, v8

    invoke-virtual {v7, v6, p2, v8, v9}, Landroidx/media3/exoplayer/source/BaseMediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    new-instance v8, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    aget-object v9, v2, v4

    invoke-direct {v8, v6, v9}, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaPeriod;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod;

    iget-object p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object p2, p2, v5

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->compositeSequenceableLoaderFactory:Landroidx/collection/internal/Lock;

    invoke-direct {p1, p0, p2, v2}, Landroidx/media3/exoplayer/source/MergingMediaPeriod;-><init>(Landroidx/collection/internal/Lock;[J[Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-object p1
.end method

.method public final getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/BaseMediaSource;

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    return-object p0
.end method

.method public final getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final maybeThrowSourceInfoRefreshError()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void

    :cond_0
    throw v0
.end method

.method public final onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media3/exoplayer/source/BaseMediaSource;Landroidx/media3/common/Timeline;)V
    .locals 6

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    if-eq v0, v1, :cond_2

    new-instance p1, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    array-length v0, v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    array-length v3, v2

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, v2, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    aget-object p1, v2, v1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->mediaTransferListener:Landroidx/media3/datasource/TransferListener;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/common/util/Util;->createHandlerForCurrentLooper(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->eventHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/BaseMediaSource;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v0, v0, p1

    invoke-virtual {p0, v1, v0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/BaseMediaSource;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/BaseMediaSource;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move v5, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    aget-object v3, v3, v2

    iget-object v4, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v5, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periodsWithTimeOffsets:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_2

    aget-object v4, v4, v2

    check-cast v4, Landroidx/media3/exoplayer/source/TimeOffsetMediaPeriod;

    iget-object v4, v4, Landroidx/media3/exoplayer/source/TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    goto :goto_3

    :cond_2
    aget-object v4, v4, v2

    :goto_3
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/source/BaseMediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final releaseSourceInternal()V
    .locals 2

    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->releaseSourceInternal()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    iput-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/BaseMediaSource;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->updateMediaItem(Landroidx/media3/common/MediaItem;)V

    return-void
.end method
