.class public final Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;


# instance fields
.field public final synthetic $afterContentPadding:I

.field public final synthetic $beforeContentPadding:I

.field public final synthetic $horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

.field public final synthetic $isVertical:Z

.field public final synthetic $itemsCount:I

.field public final synthetic $spaceBetweenItems:I

.field public final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic $this_null:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

.field public final synthetic $verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

.field public final synthetic $visualItemOffset:J

.field public final childConstraints:J

.field public final itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

.field public final measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;


# direct methods
.method public constructor <init>(JZLandroidx/compose/foundation/lazy/LazyListItemProviderImpl;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IILandroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;IIJLandroidx/compose/foundation/lazy/LazyListState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$isVertical:Z

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$this_null:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    iput p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$itemsCount:I

    iput p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$spaceBetweenItems:I

    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    iput p10, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$beforeContentPadding:I

    iput p11, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$afterContentPadding:I

    iput-wide p12, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$visualItemOffset:J

    iput-object p14, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    const p4, 0x7fffffff

    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p5

    goto :goto_0

    :cond_0
    move p5, p4

    :goto_0
    if-nez p3, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p4

    :cond_1
    const/4 p1, 0x5

    invoke-static {p5, p4, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    return-void
.end method


# virtual methods
.method public final getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .locals 0

    invoke-virtual {p0, p1, p4, p5}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    return-object p0
.end method

.method public final getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    invoke-virtual {v2, v1}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->getKey(I)Ljava/lang/Object;

    move-result-object v12

    iget-object v2, v2, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {v2, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->getContentType(I)Ljava/lang/Object;

    move-result-object v13

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    move-wide/from16 v3, p2

    invoke-virtual {v2, v1, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->measure-0kLqBqw(IJ)Ljava/util/List;

    move-result-object v2

    iget v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$itemsCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    move v9, v5

    goto :goto_1

    :cond_0
    iget v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$spaceBetweenItems:I

    goto :goto_0

    :goto_1
    new-instance v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$this_null:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    iget-object v6, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v6}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v14, v7, Landroidx/compose/foundation/lazy/LazyListState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$isVertical:Z

    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-object v7, v5

    iget-object v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    move-object v8, v7

    iget v7, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$beforeContentPadding:I

    move-object v10, v8

    iget v8, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$afterContentPadding:I

    iget-wide v0, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$visualItemOffset:J

    move-wide v15, v0

    move-object v0, v10

    move-wide v10, v15

    move/from16 v1, p1

    move-wide/from16 v15, p2

    invoke-direct/range {v0 .. v16}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;-><init>(ILjava/util/List;ZLandroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;IIIJLjava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;J)V

    return-object v0
.end method
