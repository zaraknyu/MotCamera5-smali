.class public final Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final buckets:Ljava/util/ArrayList;

.field public final cachedBucket:Ljava/util/ArrayList;

.field public cachedBucketIndex:I

.field public final gridContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

.field public lastLineIndex:I

.field public lastLineStartItemIndex:I

.field public lastLineStartKnownSpan:I

.field public previousDefaultSpans:Ljava/lang/Object;

.field public slotsPerLine:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->gridContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(II)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucketIndex:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/ArrayList;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->previousDefaultSpans:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getBucketSize()I
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getLineConfiguration(I)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .locals 12

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->gridContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    iget-boolean v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->hasCustomSpans:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    mul-int/2addr p1, v0

    new-instance v3, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v4

    sub-int/2addr v4, p1

    if-le v0, v4, :cond_0

    move v0, v4

    :cond_0
    if-gez v0, :cond_1

    move v0, v2

    :cond_1
    iget-object v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->previousDefaultSpans:Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v0, v4, :cond_2

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->previousDefaultSpans:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-static {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanKt;->GridItemSpan(I)J

    move-result-wide v5

    new-instance v7, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    invoke-direct {v7, v5, v6}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput-object v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->previousDefaultSpans:Ljava/lang/Object;

    move-object p0, v4

    :goto_1
    invoke-direct {v3, p0, p1}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(Ljava/util/List;I)V

    return-object v3

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v0

    div-int v0, p1, v0

    iget-object v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v4

    mul-int/2addr v4, v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    iget v5, v5, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;->firstItemIndex:I

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    iget v6, v6, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;->firstItemKnownSpan:I

    iget v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineIndex:I

    iget-object v8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/ArrayList;

    if-gt v4, v7, :cond_5

    if-gt v7, p1, :cond_5

    iget v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartItemIndex:I

    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartKnownSpan:I

    move v4, v7

    goto :goto_2

    :cond_5
    iget v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucketIndex:I

    if-ne v0, v7, :cond_6

    sub-int v7, p1, v4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_6

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    move v4, p1

    move v6, v2

    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v7

    rem-int v7, v4, v7

    if-nez v7, :cond_7

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v7

    sub-int v9, p1, v4

    const/4 v10, 0x2

    if-gt v10, v9, :cond_7

    if-ge v9, v7, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    if-eqz v1, :cond_8

    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucketIndex:I

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :cond_8
    if-gt v4, p1, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "currentLine ("

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") > lineIndex ("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_a
    :goto_4
    if-ge v4, p1, :cond_10

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v0

    if-ge v5, v0, :cond_10

    if-eqz v1, :cond_b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move v0, v2

    :goto_5
    iget v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    if-ge v0, v7, :cond_e

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v7

    if-ge v5, v7, :cond_e

    if-nez v6, :cond_c

    invoke-virtual {p0, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->spanOf(I)I

    move-result v7

    move v11, v7

    move v7, v6

    move v6, v11

    goto :goto_6

    :cond_c
    move v7, v2

    :goto_6
    add-int/2addr v0, v6

    iget v9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    if-le v0, v9, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    goto :goto_5

    :cond_e
    :goto_7
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v0

    rem-int v0, v4, v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v0

    if-ge v5, v0, :cond_a

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v0

    div-int v0, v4, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v0, :cond_f

    goto :goto_8

    :cond_f
    const-string v0, "invalid starting point"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_8
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    invoke-direct {v0, v5, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(II)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineIndex:I

    iput v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartItemIndex:I

    iput v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartKnownSpan:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    move v1, v5

    :goto_9
    iget v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    if-ge v0, v3, :cond_12

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v3

    if-ge v1, v3, :cond_12

    if-nez v6, :cond_11

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->spanOf(I)I

    move-result v3

    move v11, v6

    move v6, v3

    move v3, v11

    goto :goto_a

    :cond_11
    move v3, v2

    :goto_a
    add-int/2addr v0, v6

    iget v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    if-gt v0, v4, :cond_12

    add-int/lit8 v1, v1, 0x1

    invoke-static {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanKt;->GridItemSpan(I)J

    move-result-wide v6

    new-instance v4, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    invoke-direct {v4, v6, v7}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v3

    goto :goto_9

    :cond_12
    new-instance p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    invoke-direct {p0, p1, v5}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(Ljava/util/List;I)V

    return-object p0
.end method

.method public final getLineIndexOfItem(I)I
    .locals 8

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    move-result v0

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "ItemIndex > total count"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->gridContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    iget-boolean v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->hasCustomSpans:Z

    if-nez v0, :cond_2

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    div-int/2addr p1, p0

    return p1

    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->rangeCheck$CollectionsKt__CollectionsKt(II)V

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v1

    :goto_1
    if-gt v4, v2, :cond_4

    add-int v5, v4, v2

    ushr-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    iget v6, v6, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;->firstItemIndex:I

    sub-int/2addr v6, p1

    if-gez v6, :cond_3

    add-int/lit8 v4, v5, 0x1

    goto :goto_1

    :cond_3
    if-lez v6, :cond_5

    add-int/lit8 v2, v5, -0x1

    goto :goto_1

    :cond_4
    add-int/2addr v4, v3

    neg-int v5, v4

    :cond_5
    if-ltz v5, :cond_6

    goto :goto_2

    :cond_6
    neg-int v2, v5

    add-int/lit8 v5, v2, -0x2

    :goto_2
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v2

    mul-int/2addr v2, v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    iget v4, v4, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;->firstItemIndex:I

    if-gt v4, p1, :cond_7

    goto :goto_3

    :cond_7
    const-string v5, "currentItemIndex > itemIndex"

    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_3
    move v5, v1

    :goto_4
    if-ge v4, p1, :cond_c

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->spanOf(I)I

    move-result v4

    add-int/2addr v5, v4

    iget v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    if-ge v5, v7, :cond_8

    goto :goto_5

    :cond_8
    if-ne v5, v7, :cond_9

    add-int/lit8 v2, v2, 0x1

    move v5, v1

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    :goto_5
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v4

    rem-int v4, v2, v4

    if-nez v4, :cond_b

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    move-result v4

    div-int v4, v2, v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v4, v7, :cond_b

    new-instance v4, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    if-lez v5, :cond_a

    move v7, v3

    goto :goto_6

    :cond_a
    move v7, v1

    :goto_6
    sub-int v7, v6, v7

    invoke-direct {v4, v7, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move v4, v6

    goto :goto_4

    :cond_c
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->spanOf(I)I

    move-result p1

    add-int/2addr p1, v5

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    if-le p1, p0, :cond_d

    add-int/2addr v2, v3

    :cond_d
    return v2
.end method

.method public final getTotalSize()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->gridContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->intervals:Lcom/google/common/base/Splitter;

    iget p0, p0, Lcom/google/common/base/Splitter;->limit:I

    return p0
.end method

.method public final spanOf(I)I
    .locals 1

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->gridContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->intervals:Lcom/google/common/base/Splitter;

    invoke-virtual {p0, p1}, Lcom/google/common/base/Splitter;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    move-result-object p0

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    sub-int/2addr p1, v0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->value:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;->span:Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;

    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    iget-wide p0, p0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->packedValue:J

    long-to-int p0, p0

    return p0
.end method
