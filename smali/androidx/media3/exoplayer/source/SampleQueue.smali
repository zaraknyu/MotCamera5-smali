.class public final Landroidx/media3/exoplayer/source/SampleQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/TrackOutput;


# instance fields
.field public absoluteFirstIndex:I

.field public allSamplesAreSyncSamples:Z

.field public capacity:I

.field public cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

.field public currentDrmSession:Lcom/google/android/gms/tasks/zzad;

.field public downstreamFormat:Landroidx/media3/common/Format;

.field public final drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field public final extrasHolder:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

.field public flags:[I

.field public isLastSampleQueued:Z

.field public largestDiscardedTimestampUs:J

.field public largestQueuedTimestampUs:J

.field public length:I

.field public loggedUnexpectedNonSyncSample:Z

.field public offsets:[J

.field public readPosition:I

.field public relativeFirstIndex:I

.field public final sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

.field public final sharedSampleMetadata:Lcom/google/common/base/Splitter;

.field public sizes:[I

.field public sourceIds:[J

.field public startTimeUs:J

.field public timesUs:[J

.field public upstreamFormat:Landroidx/media3/common/Format;

.field public upstreamFormatChangeListener:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

.field public upstreamFormatRequired:Z

.field public upstreamKeyframeRequired:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    new-instance p2, Landroidx/media3/exoplayer/source/SampleDataQueue;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/source/SampleDataQueue;-><init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    new-instance p1, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->extrasHolder:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    const/16 p1, 0x3e8

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    new-array p2, p1, [I

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    new-array p2, p1, [I

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput$CryptoData;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    new-instance p1, Lcom/google/common/base/Splitter;

    new-instance p2, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    const/16 p3, 0x9

    invoke-direct {p2, p3}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/google/common/base/Splitter;-><init>(Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/google/common/base/Splitter;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->allSamplesAreSyncSamples:Z

    return-void
.end method


# virtual methods
.method public final discardSamples(I)J
    .locals 8

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    const-wide/high16 v2, -0x8000000000000000L

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p1, :cond_3

    iget-object v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v6, v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    aget v6, v6, v4

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    iget v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    add-int/lit8 v4, v4, -0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    if-lt v1, v2, :cond_4

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    :cond_4
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    sub-int/2addr v1, p1

    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    const/4 p1, 0x0

    if-gez v1, :cond_5

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    :cond_5
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/google/common/base/Splitter;

    iget-object v2, v1, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    :goto_2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge p1, v3, :cond_7

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-lt v0, v4, :cond_7

    iget-object v4, v1, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    iget p1, v1, Lcom/google/common/base/Splitter;->limit:I

    if-lez p1, :cond_6

    add-int/lit8 p1, p1, -0x1

    iput p1, v1, Lcom/google/common/base/Splitter;->limit:I

    :cond_6
    move p1, v3

    goto :goto_2

    :cond_7
    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-nez p1, :cond_9

    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    if-nez p1, :cond_8

    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    :cond_8
    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    aget-wide v0, v0, p1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    aget p0, p0, p1

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0

    :cond_9
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    iget p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public final discardToEnd()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->discardSamples(I)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->discardDownstreamTo(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final findSampleBefore(IIJZ)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_4

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v3, v3, p1

    cmp-long v3, v3, p3

    if-gtz v3, :cond_4

    if-eqz p5, :cond_0

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    aget v4, v4, p1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    :cond_0
    if-nez v3, :cond_1

    return v2

    :cond_1
    move v0, v2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    if-ne p1, v3, :cond_3

    move p1, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final format(Landroidx/media3/common/Format;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/google/common/base/Splitter;

    iget-object v1, v1, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/google/common/base/Splitter;

    iget-object v1, v1, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    invoke-virtual {v1, p1}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/google/common/base/Splitter;

    iget-object p1, p1, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    :goto_1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->allSamplesAreSyncSamples:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    iget-object v3, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, v1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v3, v1}, Landroidx/media3/common/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr p1, v1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->allSamplesAreSyncSamples:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    move v0, v2

    :goto_2
    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatChangeListener:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final getRelativeIndex(I)I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    iget p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    if-ge v0, p0, :cond_0

    return v0

    :cond_0
    sub-int/2addr v0, p0

    return v0
.end method

.method public final declared-synchronized isReady(Z)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    move v2, v3

    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    :try_start_1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/google/common/base/Splitter;

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/google/common/base/Splitter;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v0, :cond_4

    monitor-exit p0

    return v3

    :cond_4
    :try_start_2
    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->mayReadSample(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final mayReadSample(I)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lcom/google/android/gms/tasks/zzad;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzad;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lcom/google/android/gms/tasks/zzad;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final onFormatResult(Landroidx/media3/common/Format;Landroidx/room/concurrent/FileLock;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    :goto_1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    iget-object v2, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    if-eqz v3, :cond_2

    invoke-interface {v3, p1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->getCryptoType(Landroidx/media3/common/Format;)I

    move-result v4

    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iput v4, v5, Landroidx/media3/common/Format$Builder;->cryptoType:I

    new-instance v4, Landroidx/media3/common/Format;

    invoke-direct {v4, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    goto :goto_2

    :cond_2
    move-object v4, p1

    :goto_2
    iput-object v4, p2, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lcom/google/android/gms/tasks/zzad;

    iput-object v4, p2, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    if-nez v1, :cond_4

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lcom/google/android/gms/tasks/zzad;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v3, v1, p1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->acquireSession(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Lcom/google/android/gms/tasks/zzad;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lcom/google/android/gms/tasks/zzad;

    iput-object p1, p2, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzad;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final reset(Z)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->firstAllocationNode:Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    iget-object v2, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/upstream/Allocation;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    monitor-enter v2

    move-object v5, v1

    :cond_1
    :goto_0
    if-eqz v5, :cond_3

    :try_start_0
    iget-object v6, v2, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget v7, v2, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v2, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    iget-object v8, v5, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v8, Landroidx/media3/exoplayer/upstream/Allocation;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v8, v6, v7

    iget v6, v2, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    sub-int/2addr v6, v4

    iput v6, v2, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    iget-object v5, v5, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->initializationData:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    if-eqz v5, :cond_2

    iget-object v6, v5, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/exoplayer/upstream/Allocation;

    if-nez v6, :cond_1

    :cond_2
    move-object v5, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iput-object v3, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->initializationData:Ljava/lang/Object;

    :goto_1
    iget-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->firstAllocationNode:Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    iget v2, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->allocationLength:I

    iget-object v5, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/upstream/Allocation;

    const/4 v6, 0x0

    if-nez v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    invoke-static {v5}, Landroidx/media3/common/util/Log;->checkState(Z)V

    const-wide/16 v7, 0x0

    iput-wide v7, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    int-to-long v9, v2

    iput-wide v9, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    iget-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->firstAllocationNode:Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    iput-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->readAllocationNode:Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    iput-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    iput-wide v7, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    iget-object v0, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->trim()V

    iput v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iput v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iput v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    iput v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    iput-boolean v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    iput-boolean v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/google/common/base/Splitter;

    iget-object v1, v0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    :goto_3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v6, v2, :cond_5

    iget-object v2, v0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, -0x1

    iput v2, v0, Lcom/google/common/base/Splitter;->limit:I

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_6

    iput-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    iput-boolean v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    iput-boolean v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->allSamplesAreSyncSamples:Z

    :cond_6
    return-void

    :goto_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final sampleData(Landroidx/media3/common/DataReader;IZ)I
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->preAppend(I)I

    move-result p2

    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    iget-object v1, v0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/upstream/Allocation;

    iget-object v2, v1, Landroidx/media3/exoplayer/upstream/Allocation;->data:[B

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    .line 3
    iget-wide v5, v0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    iget v1, v1, Landroidx/media3/exoplayer/upstream/Allocation;->offset:I

    add-int/2addr v0, v1

    .line 4
    invoke-interface {p1, v2, v0, p2}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 5
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 6
    :cond_1
    iget-wide p2, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    iget-wide v1, v0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    cmp-long p2, p2, v1

    if-nez p2, :cond_2

    .line 8
    iget-object p2, v0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->initializationData:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    :cond_2
    return p1
.end method

.method public final sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V
    .locals 8

    .line 9
    :cond_0
    :goto_0
    iget-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    if-lez p2, :cond_1

    .line 10
    invoke-virtual {p3, p2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->preAppend(I)I

    move-result v0

    .line 11
    iget-object v1, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    iget-object v2, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/upstream/Allocation;

    iget-object v3, v2, Landroidx/media3/exoplayer/upstream/Allocation;->data:[B

    iget-wide v4, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    .line 12
    iget-wide v6, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    iget v2, v2, Landroidx/media3/exoplayer/upstream/Allocation;->offset:I

    add-int/2addr v1, v2

    .line 13
    invoke-virtual {p1, v1, v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    sub-int/2addr p2, v0

    .line 14
    iget-wide v1, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    .line 15
    iget-object v0, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    iget-wide v3, v0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 16
    iget-object v0, v0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->initializationData:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    iput-object v0, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 9

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-boolean v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    if-eqz v4, :cond_2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    :cond_2
    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->allSamplesAreSyncSamples:Z

    if-eqz v3, :cond_5

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    cmp-long v3, p1, v3

    if-gez v3, :cond_3

    :goto_1
    return-void

    :cond_3
    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z

    if-nez v0, :cond_4

    const-string v0, "SampleQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Overriding unexpected non-sync sample for format: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z

    :cond_4
    or-int/lit8 p3, p3, 0x1

    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    iget-wide v3, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    int-to-long v5, p4

    sub-long/2addr v3, v5

    int-to-long v5, p5

    sub-long/2addr v3, v5

    monitor-enter p0

    :try_start_0
    iget p5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-lez p5, :cond_7

    sub-int/2addr p5, v2

    invoke-virtual {p0, p5}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result p5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    aget-wide v5, v0, p5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    aget p5, v0, p5

    int-to-long v7, p5

    add-long/2addr v5, v7

    cmp-long p5, v5, v3

    if-gtz p5, :cond_6

    move p5, v2

    goto :goto_2

    :cond_6
    move p5, v1

    :goto_2
    invoke-static {p5}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_7
    :goto_3
    const/high16 p5, 0x20000000

    and-int/2addr p5, p3

    if-eqz p5, :cond_8

    move p5, v2

    goto :goto_4

    :cond_8
    move p5, v1

    :goto_4
    iput-boolean p5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    iget p5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    invoke-virtual {p0, p5}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result p5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aput-wide p1, v0, p5

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    aput-wide v3, p1, p5

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    aput p4, p1, p5

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    aput p3, p1, p5

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    aput-object p6, p1, p5

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    const-wide/16 p2, 0x0

    aput-wide p2, p1, p5

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/google/common/base/Splitter;

    iget-object p1, p1, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_9

    move p1, v2

    goto :goto_5

    :cond_9
    move p1, v1

    :goto_5
    if-nez p1, :cond_a

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/google/common/base/Splitter;

    iget-object p1, p1, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    iget-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    :cond_a
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;->EMPTY:Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;

    goto :goto_6

    :cond_b
    sget-object p2, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;->EMPTY:Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;

    :goto_6
    iget-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/google/common/base/Splitter;

    iget p4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iget p5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    add-int/2addr p4, p5

    new-instance p5, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    invoke-direct {p5, p1, p2}, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;-><init>(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;)V

    iget-object p1, p3, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    iget p2, p3, Lcom/google/common/base/Splitter;->limit:I

    const/4 p6, -0x1

    if-ne p2, p6, :cond_d

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-nez p2, :cond_c

    move p2, v2

    goto :goto_7

    :cond_c
    move p2, v1

    :goto_7
    invoke-static {p2}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput v1, p3, Lcom/google/common/base/Splitter;->limit:I

    :cond_d
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-lez p2, :cond_f

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    if-lt p4, p2, :cond_e

    move p6, v2

    goto :goto_8

    :cond_e
    move p6, v1

    :goto_8
    invoke-static {p6}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    if-ne p2, p4, :cond_f

    iget-object p2, p3, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    :cond_f
    invoke-virtual {p1, p4, p5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_10
    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iget p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    if-ne p1, p2, :cond_11

    add-int/lit16 p1, p2, 0x3e8

    new-array p3, p1, [J

    new-array p4, p1, [J

    new-array p5, p1, [J

    new-array p6, p1, [I

    new-array v0, p1, [I

    new-array v2, p1, [Landroidx/media3/extractor/TrackOutput$CryptoData;

    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    sub-int/2addr p2, v3

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    invoke-static {v4, v3, p4, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    iget v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p5, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    iget v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p6, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    iget v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    iget v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    iget v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    invoke-static {v4, v1, p4, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    invoke-static {v4, v1, p5, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    invoke-static {v4, v1, p6, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    invoke-static {v4, v1, v0, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    invoke-static {v4, v1, v2, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    invoke-static {v4, v1, p3, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    iput-object p5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    iput-object p6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    iput-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_11
    monitor-exit p0

    return-void

    :goto_9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized seekTo(JZ)Z
    .locals 11

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/SampleDataQueue;->firstAllocationNode:Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    iput-object v2, v1, Landroidx/media3/exoplayer/source/SampleDataQueue;->readAllocationNode:Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v9, 0x1

    if-eq v1, v2, :cond_0

    move v3, v9

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-eqz v3, :cond_1

    :try_start_5
    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v5, v3, v4

    cmp-long v3, p1, v5

    if-ltz v3, :cond_1

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    cmp-long v3, p1, v5

    if-lez v3, :cond_2

    if-nez p3, :cond_2

    :cond_1
    move-object v3, p0

    goto :goto_5

    :cond_2
    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->allSamplesAreSyncSamples:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v10, -0x1

    if-eqz v3, :cond_7

    sub-int/2addr v2, v1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_5

    :try_start_6
    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v5, v3, v4

    cmp-long v3, v5, p1

    if-ltz v3, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ne v4, v3, :cond_4

    move v4, v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto :goto_8

    :cond_5
    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    move v2, v10

    :goto_2
    move-object v3, p0

    move-wide v6, p1

    goto :goto_3

    :cond_7
    sub-int v5, v2, v1

    const/4 v8, 0x1

    move-object v3, p0

    move-wide v6, p1

    :try_start_7
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/exoplayer/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_3
    if-ne v2, v10, :cond_8

    monitor-exit v3

    return v0

    :cond_8
    :try_start_8
    iput-wide v6, v3, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    iget p0, v3, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr p0, v2

    iput p0, v3, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit v3

    return v9

    :catchall_1
    move-exception v0

    :goto_4
    move-object p1, v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v3, p0

    goto :goto_4

    :goto_5
    monitor-exit v3

    return v0

    :catchall_3
    move-exception v0

    move-object v3, p0

    :goto_6
    move-object p0, v0

    move-object p1, p0

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v3, p0

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v3, p0

    :goto_7
    move-object p0, v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_6

    :catchall_7
    move-exception v0

    goto :goto_7

    :goto_8
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw p1
.end method
