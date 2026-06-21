.class public final Landroidx/media3/exoplayer/text/MergingCuesResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/text/CuesResolver;


# static fields
.field public static final CUES_DISPLAY_PRIORITY_COMPARATOR:Lcom/google/common/collect/CompoundOrdering;


# instance fields
.field public final cuesWithTimingList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/google/common/collect/NaturalOrdering;->INSTANCE:Lcom/google/common/collect/NaturalOrdering;

    new-instance v1, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v2, Lcom/google/common/collect/ByFunctionOrdering;

    invoke-direct {v2, v1, v0}, Lcom/google/common/collect/ByFunctionOrdering;-><init>(Lcom/google/common/base/Function;Lcom/google/common/collect/Ordering;)V

    sget-object v0, Lcom/google/common/collect/NaturalOrdering;->INSTANCE$1:Lcom/google/common/collect/NaturalOrdering;

    new-instance v1, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/google/common/collect/ByFunctionOrdering;

    invoke-direct {v3, v1, v0}, Lcom/google/common/collect/ByFunctionOrdering;-><init>(Lcom/google/common/base/Function;Lcom/google/common/collect/Ordering;)V

    new-instance v0, Lcom/google/common/collect/CompoundOrdering;

    invoke-direct {v0, v2, v3}, Lcom/google/common/collect/CompoundOrdering;-><init>(Lcom/google/common/collect/ByFunctionOrdering;Lcom/google/common/collect/ByFunctionOrdering;)V

    sput-object v0, Landroidx/media3/exoplayer/text/MergingCuesResolver;->CUES_DISPLAY_PRIORITY_COMPARATOR:Lcom/google/common/collect/CompoundOrdering;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/MergingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addCues(Landroidx/media3/extractor/text/CuesWithTiming;J)Z
    .locals 9

    iget-wide v0, p1, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-static {v4}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    iget-wide v7, p1, Landroidx/media3/extractor/text/CuesWithTiming;->durationUs:J

    cmp-long v2, v7, v2

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    cmp-long v2, v0, p2

    if-gtz v2, :cond_2

    iget-wide v2, p1, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    cmp-long p2, p2, v2

    if-gez p2, :cond_2

    move p2, v6

    goto :goto_2

    :cond_2
    move p2, v5

    :goto_2
    iget-object p0, p0, Landroidx/media3/exoplayer/text/MergingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v6

    :goto_3
    if-ltz p3, :cond_4

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v2, v2, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    add-int/2addr p3, v6

    invoke-virtual {p0, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return p2

    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return p2
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/text/MergingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final discardCuesBeforeTimeUs(J)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/text/MergingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v2, v2, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v3, v3, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    if-gez v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public final getCuesAtTimeUs(J)Lcom/google/common/collect/ImmutableList;
    .locals 6

    iget-object p0, p0, Landroidx/media3/exoplayer/text/MergingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v1, v1, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    goto :goto_3

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v4, v3, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_1

    iget-wide v4, v3, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-wide v3, v3, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    cmp-long v3, p1, v3

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sget-object p0, Landroidx/media3/exoplayer/text/MergingCuesResolver;->CUES_DISPLAY_PRIORITY_COMPARATOR:Lcom/google/common/collect/CompoundOrdering;

    invoke-static {p0, v1}, Lcom/google/common/collect/ImmutableList;->sortedCopyOf(Lcom/google/common/collect/Ordering;Ljava/util/AbstractCollection;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    :goto_2
    iget p2, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-ge v0, p2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-object p2, p2, Landroidx/media3/extractor/text/CuesWithTiming;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/lang/Iterable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    sget-object p0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object p0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    return-object p0
.end method

.method public final getNextCueChangeTimeUs(J)J
    .locals 10

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_0
    iget-object v5, p0, Landroidx/media3/exoplayer/text/MergingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v6, v6, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v8, v5, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    cmp-long v5, p1, v6

    if-gez v5, :cond_1

    cmp-long p0, v3, v0

    if-nez p0, :cond_0

    move-wide v3, v6

    goto :goto_2

    :cond_0
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    move-wide v3, p0

    goto :goto_2

    :cond_1
    cmp-long v5, p1, v8

    if-gez v5, :cond_3

    cmp-long v5, v3, v0

    if-nez v5, :cond_2

    move-wide v3, v8

    goto :goto_1

    :cond_2
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    cmp-long p0, v3, v0

    if-eqz p0, :cond_5

    return-wide v3

    :cond_5
    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0
.end method

.method public final getPreviousCueChangeTimeUs(J)J
    .locals 8

    iget-object p0, p0, Landroidx/media3/exoplayer/text/MergingCuesResolver;->cuesWithTimingList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v1, v1, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v1, v1, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v3, v3, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-wide v5, v5, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    cmp-long v7, v5, p1

    if-gtz v7, :cond_1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_1

    :cond_1
    cmp-long v5, v3, p1

    if-gtz v5, :cond_2

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v1

    :cond_3
    :goto_2
    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p0
.end method
