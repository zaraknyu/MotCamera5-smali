.class public final Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $resolvedSlots:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

.field public final gridItemsCount:I

.field public final measuredItemProvider:Lcom/motorola/camera/slidedoc/SlidePointTuning;

.field public final slots:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

.field public final spaceBetweenLines:I

.field public final spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridSlots;IILcom/motorola/camera/slidedoc/SlidePointTuning;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->$resolvedSlots:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->slots:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    iput p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->gridItemsCount:I

    iput p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->spaceBetweenLines:I

    iput-object p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->measuredItemProvider:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    return-void
.end method


# virtual methods
.method public final childConstraints-JhjzzOo$foundation_release(II)J
    .locals 2

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->slots:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;->sizes:[I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    aget p0, v0, p1

    goto :goto_0

    :cond_0
    add-int/2addr p2, p1

    sub-int/2addr p2, v1

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;->positions:[I

    aget v1, p0, p2

    aget p2, v0, p2

    add-int/2addr v1, p2

    aget p0, p0, p1

    sub-int p0, v1, p0

    :goto_0
    const/4 p1, 0x0

    if-gez p0, :cond_1

    move p0, p1

    :cond_1
    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo p2, "width must be >= 0"

    invoke-static {p2}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_1
    const p2, 0x7fffffff

    invoke-static {p0, p0, p1, p2}, Landroidx/compose/ui/unit/ConstraintsKt;->createConstraints(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .locals 13

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineConfiguration(I)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v0

    iget v1, v0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    iget-object v2, v0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    add-int v5, v1, v3

    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->gridItemsCount:I

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    iget v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->spaceBetweenLines:I

    move v11, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v11, v4

    :goto_1
    new-array v5, v3, [Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move v10, v4

    :goto_2
    if-ge v4, v3, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    iget-wide v6, v6, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->packedValue:J

    long-to-int v6, v6

    invoke-virtual {p0, v10, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->childConstraints-JhjzzOo$foundation_release(II)J

    move-result-wide v7

    move v12, v11

    move v11, v6

    iget-object v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->measuredItemProvider:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    add-int v9, v1, v4

    invoke-virtual/range {v6 .. v12}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->getAndMeasure-m8Kt_7k(JIIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v6

    add-int/2addr v10, v11

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    move v11, v12

    goto :goto_2

    :cond_2
    move v12, v11

    iget-object v10, v0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:Ljava/util/List;

    new-instance v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget-object v9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->$resolvedSlots:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    move v7, p1

    move-object v8, v5

    invoke-direct/range {v6 .. v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;-><init>(I[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;Landroidx/compose/foundation/lazy/grid/LazyGridSlots;Ljava/util/List;I)V

    return-object v6
.end method
