.class public final Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

.field public final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;

.field public final synthetic $slots:Landroidx/compose/foundation/lazy/grid/GridSlotCache;

.field public final synthetic $state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field public final synthetic $stickyItemsScrollBehavior:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

.field public final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/grid/GridSlotCache;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$slots:Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$stickyItemsScrollBehavior:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 68

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    move-object/from16 v1, p2

    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    iget-wide v10, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    iget-object v12, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v1, v12, Landroidx/compose/foundation/lazy/grid/LazyGridState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    iget-boolean v1, v12, Landroidx/compose/foundation/lazy/grid/LazyGridState;->hasLookaheadOccurred:Z

    if-nez v1, :cond_1

    iget-object v1, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v25, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v25, 0x1

    :goto_1
    sget-object v15, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    invoke-static {v10, v11, v15}, Landroidx/compose/foundation/ImageKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    iget-object v1, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-virtual {v2, v1}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    iget-object v3, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v3, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v1

    iget-object v3, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v3}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v3

    iget-object v4, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v4, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v3

    iget v4, v2, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    iget-object v5, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget-object v6, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v5, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    iget v2, v2, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    invoke-interface {v6, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    add-int/2addr v2, v4

    add-int/2addr v3, v1

    sub-int v17, v2, v4

    neg-int v5, v3

    neg-int v7, v2

    invoke-static {v10, v11, v5, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v7

    iget-object v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    const/16 p1, 0x1

    iget-object v13, v5, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    iget-object v14, v5, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->keyIndexMap:Lcom/google/common/base/Splitter;

    move-object/from16 v16, v14

    iget-object v14, v13, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    move/from16 v18, v2

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$slots:Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    move/from16 v19, v3

    iget-object v3, v2, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedSizes:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    move-wide/from16 v30, v10

    if-eqz v3, :cond_2

    iget-wide v10, v2, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedConstraints:J

    invoke-static {v10, v11, v7, v8}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedDensity:F

    invoke-interface {v6}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v10

    cmpg-float v3, v3, v10

    if-nez v3, :cond_2

    iget-object v2, v2, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedSizes:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, v2

    goto :goto_2

    :cond_2
    iput-wide v7, v2, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedConstraints:J

    invoke-interface {v6}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v3

    iput v3, v2, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedDensity:F

    iget-object v3, v2, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->calculation:Landroidx/compose/animation/core/InfiniteTransition$run$2;

    new-instance v10, Landroidx/compose/ui/unit/Constraints;

    invoke-direct {v10, v7, v8}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    invoke-virtual {v3, v9, v10}, Landroidx/compose/animation/core/InfiniteTransition$run$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    iput-object v3, v2, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedSizes:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    move-object v10, v3

    :goto_2
    iget-object v2, v10, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;->sizes:[I

    array-length v11, v2

    iget v2, v14, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    if-eq v11, v2, :cond_3

    iput v11, v14, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    iget-object v2, v14, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    move-object/from16 v21, v10

    const/4 v10, 0x0

    invoke-direct {v3, v10, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v10, v14, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineIndex:I

    iput v10, v14, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartItemIndex:I

    iput v10, v14, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartKnownSpan:I

    const/4 v2, -0x1

    iput v2, v14, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucketIndex:I

    iget-object v3, v14, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_3
    move-object/from16 v21, v10

    const/4 v2, -0x1

    const/4 v10, 0x0

    :goto_3
    iget-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v2

    invoke-interface {v6, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->getIntervals$1()Lcom/google/common/base/Splitter;

    move-result-object v13

    iget v13, v13, Lcom/google/common/base/Splitter;->limit:I

    invoke-static/range {v30 .. v31}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v22

    sub-int v10, v22, v18

    move/from16 v22, v2

    int-to-long v1, v1

    const/16 v32, 0x20

    shl-long v1, v1, v32

    move-wide/from16 v23, v1

    int-to-long v1, v4

    const-wide v33, 0xffffffffL

    and-long v1, v1, v33

    or-long v1, v23, v1

    new-instance v35, Lcom/motorola/camera/slidedoc/SlidePointTuning;

    move-wide/from16 v23, v7

    move-wide/from16 v66, v1

    move-object v1, v3

    move-object v2, v5

    move-object v3, v9

    move-wide/from16 v8, v66

    iget-object v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-object/from16 v42, v6

    move/from16 v20, v13

    move/from16 v7, v17

    move/from16 v43, v18

    move/from16 v44, v19

    move-wide/from16 v45, v23

    const/4 v13, -0x1

    move v6, v4

    move/from16 v24, v11

    move/from16 v4, v22

    move-object v11, v1

    move-object/from16 v1, v35

    invoke-direct/range {v1 .. v9}, Lcom/motorola/camera/slidedoc/SlidePointTuning;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;ILandroidx/compose/foundation/lazy/grid/LazyGridState;IIJ)V

    move/from16 v18, v4

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;

    move-object/from16 v23, v14

    move-object/from16 v19, v21

    move-object/from16 v22, v35

    move/from16 v21, v18

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v23}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridSlots;IILcom/motorola/camera/slidedoc/SlidePointTuning;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;)V

    move-object v14, v11

    move-object/from16 v9, v18

    move/from16 v8, v20

    move/from16 v4, v21

    move-object/from16 v1, v23

    new-instance v11, Landroidx/compose/runtime/Latch$await$2$2;

    const/16 v13, 0xe

    invoke-direct {v11, v13, v1, v9}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v13

    const/16 v17, 0x0

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v18

    move-object/from16 v36, v3

    move-object/from16 v3, v18

    :goto_4
    move/from16 v37, v4

    goto :goto_5

    :cond_4
    move-object/from16 v36, v3

    move-object/from16 v3, v17

    goto :goto_4

    :goto_5
    invoke-static {v13}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4

    :try_start_0
    iget-object v5, v5, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    move/from16 v38, v7

    iget-object v7, v5, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v7

    move-object/from16 v39, v11

    iget-object v11, v5, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->lastKnownFirstItemKey:Ljava/lang/Object;

    invoke-static {v7, v2, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->findIndexByKey(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    move-result v11

    if-eq v7, v11, :cond_5

    move-object/from16 v18, v15

    iget-object v15, v5, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    iget-object v15, v5, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    invoke-virtual {v15, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    goto :goto_6

    :cond_5
    move-object/from16 v18, v15

    :goto_6
    if-lt v11, v8, :cond_7

    if-gtz v8, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v5, v8, -0x1

    invoke-virtual {v1, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem(I)I

    move-result v1

    const/4 v5, 0x0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_4c

    :cond_7
    :goto_7
    invoke-virtual {v1, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem(I)I

    move-result v1

    iget-object v5, v5, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_8
    invoke-static {v13, v4, v3}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    iget-object v3, v12, Landroidx/compose/foundation/lazy/grid/LazyGridState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    iget-object v4, v12, Landroidx/compose/foundation/lazy/grid/LazyGridState;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    invoke-static {v2, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/room/ObservedTableVersions;)Ljava/util/List;

    move-result-object v2

    invoke-interface/range {v42 .. v42}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v3

    if-nez v3, :cond_9

    if-nez v25, :cond_8

    goto :goto_9

    :cond_8
    iget-object v3, v12, Landroidx/compose/foundation/lazy/grid/LazyGridState;->_lazyLayoutScrollDeltaBetweenPasses:Lcom/google/android/gms/tasks/zzs;

    iget-object v3, v3, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/animation/core/AnimationState;

    iget-object v3, v3, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    goto :goto_a

    :cond_9
    :goto_9
    iget v3, v12, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    :goto_a
    iget-object v15, v12, Landroidx/compose/foundation/lazy/grid/LazyGridState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-interface/range {v42 .. v42}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v23

    iget-object v4, v12, Landroidx/compose/foundation/lazy/grid/LazyGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    iget-object v7, v12, Landroidx/compose/foundation/lazy/grid/LazyGridState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    if-ltz v6, :cond_a

    goto :goto_b

    :cond_a
    const-string v11, "negative beforeContentPadding"

    invoke-static {v11}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_b
    if-ltz v38, :cond_b

    goto :goto_c

    :cond_b
    const-string v11, "negative afterContentPadding"

    invoke-static {v11}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_c
    sget-object v11, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    const/16 v22, 0x1

    iget-object v13, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    move/from16 v19, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    move-object/from16 v40, v12

    move-object/from16 v28, v13

    const-wide/16 v12, 0x0

    sget-object v41, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-gtz v8, :cond_d

    invoke-static/range {v45 .. v46}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v17

    move-object/from16 v0, v18

    invoke-static/range {v45 .. v46}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v18

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v16

    const/16 v16, 0x0

    move-object/from16 v29, v1

    move-object/from16 v21, v35

    invoke-virtual/range {v15 .. v29}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/ArrayList;Lcom/google/common/base/Splitter;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    if-nez v23, :cond_c

    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v1

    invoke-static {v1, v2, v12, v13}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_c

    shr-long v3, v1, v32

    long-to-int v3, v3

    move-wide/from16 v4, v45

    invoke-static {v3, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v17

    and-long v1, v1, v33

    long-to-int v1, v1

    invoke-static {v1, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v18

    :cond_c
    sget-object v1, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$2;->INSTANCE$1:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$2;

    add-int v2, v17, v44

    move-wide/from16 v3, v30

    invoke-static {v2, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v2

    add-int v5, v18, v43

    invoke-static {v5, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v3

    move-object/from16 v4, v42

    invoke-interface {v4, v2, v3, v11, v1}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v5

    neg-int v13, v6

    add-int v14, v10, v38

    move-object/from16 v16, v0

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v10, v24

    move-object/from16 v8, v28

    move-object/from16 v9, v36

    move/from16 v18, v37

    move/from16 v17, v38

    move-object/from16 v11, v39

    move-object/from16 v55, v40

    move-object/from16 v12, v41

    move-object/from16 v54, v42

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    goto/16 :goto_4b

    :cond_d
    move-object/from16 v29, v1

    move-object/from16 v18, v16

    move-wide/from16 v56, v30

    move-object/from16 v1, v35

    move-object/from16 v12, v36

    move/from16 p2, v37

    move/from16 v13, v38

    move-object/from16 v55, v40

    move-object/from16 v16, v41

    move-object/from16 v54, v42

    move-object/from16 v42, v39

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v21

    sub-int v5, v5, v21

    if-nez v19, :cond_e

    if-gez v5, :cond_e

    add-int v21, v21, v5

    const/4 v5, 0x0

    :cond_e
    move/from16 v26, v3

    new-instance v3, Lkotlin/collections/ArrayDeque;

    invoke-direct {v3}, Lkotlin/collections/ArrayDeque;-><init>()V

    move/from16 v58, v13

    neg-int v13, v6

    if-gez p2, :cond_f

    move/from16 v27, p2

    :goto_d
    move/from16 v35, v5

    goto :goto_e

    :cond_f
    const/16 v27, 0x0

    goto :goto_d

    :goto_e
    add-int v5, v13, v27

    add-int v27, v35, v5

    move-object/from16 v48, v7

    move/from16 v7, v27

    :goto_f
    if-gez v7, :cond_10

    if-lez v19, :cond_10

    move/from16 v59, v13

    add-int/lit8 v13, v19, -0x1

    move-object/from16 v27, v15

    invoke-virtual {v9, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v15

    move/from16 v19, v13

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v15}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v15, v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    add-int/2addr v7, v15

    move-object/from16 v15, v27

    move/from16 v13, v59

    goto :goto_f

    :cond_10
    move/from16 v59, v13

    move-object/from16 v27, v15

    const/4 v13, 0x0

    if-ge v7, v5, :cond_11

    sub-int v7, v5, v7

    sub-int v21, v21, v7

    move v7, v5

    :cond_11
    move/from16 v15, v21

    sub-int/2addr v7, v5

    add-int v53, v10, v58

    if-gez v53, :cond_12

    :goto_10
    move-object/from16 v60, v11

    goto :goto_11

    :cond_12
    move/from16 v13, v53

    goto :goto_10

    :goto_11
    neg-int v11, v7

    move/from16 v21, v7

    move/from16 v36, v19

    const/4 v7, 0x0

    const/16 v35, 0x0

    :goto_12
    iget v0, v3, Lkotlin/collections/ArrayDeque;->size:I

    if-ge v7, v0, :cond_14

    if-lt v11, v13, :cond_13

    invoke-virtual {v3, v7}, Lkotlin/collections/ArrayDeque;->removeAt(I)Ljava/lang/Object;

    move/from16 v35, p1

    goto :goto_12

    :cond_13
    add-int/lit8 v36, v36, 0x1

    invoke-virtual {v3, v7}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    add-int/2addr v11, v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_14
    move/from16 v7, v35

    move/from16 v0, v36

    :goto_13
    if-ge v0, v8, :cond_16

    if-lt v11, v13, :cond_15

    if-lez v11, :cond_15

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v35

    if-eqz v35, :cond_16

    :cond_15
    move/from16 v61, v7

    goto :goto_14

    :cond_16
    move/from16 v61, v7

    goto :goto_16

    :goto_14
    invoke-virtual {v9, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v7

    move/from16 v35, v0

    iget v0, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    move/from16 v36, v0

    iget-object v0, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move/from16 v37, v13

    array-length v13, v0

    if-nez v13, :cond_17

    goto :goto_16

    :cond_17
    add-int v11, v11, v36

    if-gt v11, v5, :cond_18

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    add-int/lit8 v13, v8, -0x1

    if-eq v0, v13, :cond_18

    add-int/lit8 v0, v35, 0x1

    sub-int v21, v21, v36

    move/from16 v7, p1

    move/from16 v19, v0

    goto :goto_15

    :cond_18
    invoke-virtual {v3, v7}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move/from16 v7, v61

    :goto_15
    add-int/lit8 v0, v35, 0x1

    move/from16 v13, v37

    goto :goto_13

    :goto_16
    if-ge v11, v10, :cond_1a

    sub-int v0, v10, v11

    sub-int v21, v21, v0

    add-int/2addr v11, v0

    move/from16 v5, v21

    :goto_17
    if-ge v5, v6, :cond_19

    if-lez v19, :cond_19

    add-int/lit8 v7, v19, -0x1

    invoke-virtual {v9, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v13

    move/from16 v19, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v13}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v0, v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    add-int/2addr v5, v0

    move/from16 v0, v19

    move/from16 v19, v7

    goto :goto_17

    :cond_19
    move/from16 v19, v0

    add-int v0, v15, v19

    if-gez v5, :cond_1b

    add-int/2addr v0, v5

    add-int/2addr v11, v5

    const/4 v5, 0x0

    goto :goto_18

    :cond_1a
    move v0, v15

    move/from16 v5, v21

    :cond_1b
    :goto_18
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->signum(I)I

    move-result v7

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v13

    if-ne v7, v13, :cond_1c

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-lt v7, v13, :cond_1c

    int-to-float v7, v0

    goto :goto_19

    :cond_1c
    move/from16 v7, v26

    :goto_19
    sub-float v13, v26, v7

    const/16 v19, 0x0

    if-eqz v23, :cond_1d

    if-le v0, v15, :cond_1d

    cmpg-float v21, v13, v19

    if-gtz v21, :cond_1d

    sub-int/2addr v0, v15

    int-to-float v0, v0

    add-float v19, v0, v13

    :cond_1d
    move/from16 v0, v19

    if-ltz v5, :cond_1e

    goto :goto_1a

    :cond_1e
    const-string v13, "negative initial offset"

    invoke-static {v13}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_1a
    neg-int v13, v5

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move/from16 v62, v0

    iget-object v0, v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz v0, :cond_1f

    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    goto :goto_1b

    :cond_1f
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v19

    move/from16 v21, v5

    move-object/from16 v5, v19

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz v5, :cond_21

    iget-object v5, v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move/from16 v47, v6

    array-length v6, v5

    if-nez v6, :cond_20

    move-object/from16 v5, v17

    goto :goto_1c

    :cond_20
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    :goto_1c
    if-eqz v5, :cond_22

    iget v5, v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    goto :goto_1d

    :cond_21
    move/from16 v47, v6

    :cond_22
    const/4 v5, 0x0

    :goto_1d
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v6

    move/from16 v19, v13

    move-object/from16 v49, v15

    move-object/from16 v26, v17

    const/4 v13, 0x0

    :goto_1e
    iget-object v15, v9, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    if-ge v13, v6, :cond_25

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Number;

    move/from16 v50, v6

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-ltz v6, :cond_24

    if-ge v6, v0, :cond_24

    move/from16 v51, v13

    iget v13, v15, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    invoke-virtual {v15, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->spanOf(I)I

    move-result v13

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->childConstraints-JhjzzOo$foundation_release(II)J

    move-result-wide v36

    const/16 v39, 0x0

    iget v15, v1, Lcom/motorola/camera/slidedoc/SlidePointTuning;->mUpdateInterval:I

    move-object/from16 v35, v1

    move/from16 v38, v6

    move/from16 v40, v13

    move/from16 v41, v15

    invoke-virtual/range {v35 .. v41}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->getAndMeasure-m8Kt_7k(JIIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v1

    move-object/from16 v6, v35

    if-nez v26, :cond_23

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    :cond_23
    move-object/from16 v13, v26

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v26, v13

    goto :goto_1f

    :cond_24
    move-object v6, v1

    move/from16 v51, v13

    :goto_1f
    add-int/lit8 v13, v51, 0x1

    move-object v1, v6

    move/from16 v6, v50

    goto :goto_1e

    :cond_25
    move-object v6, v1

    if-nez v26, :cond_26

    move-object/from16 v1, v16

    goto :goto_20

    :cond_26
    move-object/from16 v1, v26

    :goto_20
    if-eqz v23, :cond_32

    if-eqz v4, :cond_32

    iget-object v4, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_32

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v63, v0

    :goto_21
    const/4 v0, -0x1

    if-ge v0, v13, :cond_29

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    if-le v0, v5, :cond_28

    if-eqz v13, :cond_27

    add-int/lit8 v0, v13, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    if-gt v0, v5, :cond_28

    :cond_27
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    goto :goto_22

    :cond_28
    add-int/lit8 v13, v13, -0x1

    goto :goto_21

    :cond_29
    move-object/from16 v0, v17

    :goto_22
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz v13, :cond_2a

    iget v13, v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->index:I

    add-int/lit8 v13, v13, 0x1

    goto :goto_23

    :cond_2a
    const/4 v13, 0x0

    :goto_23
    if-eqz v0, :cond_31

    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    iget v4, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    move/from16 v26, v13

    add-int/lit8 v13, v8, -0x1

    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gt v0, v4, :cond_31

    move/from16 v64, v5

    move-object/from16 v5, v17

    move/from16 v13, v26

    :goto_24
    if-eqz v5, :cond_2e

    move/from16 v65, v7

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v7

    move-object/from16 v26, v1

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v7, :cond_2d

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    move/from16 v36, v1

    move-object/from16 v1, v35

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget-object v1, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-object/from16 v35, v5

    array-length v5, v1

    move-object/from16 v37, v1

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v5, :cond_2c

    move/from16 v38, v1

    aget-object v1, v37, v38

    iget v1, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    if-ne v1, v0, :cond_2b

    move-object/from16 v5, v35

    goto :goto_2a

    :cond_2b
    add-int/lit8 v1, v38, 0x1

    goto :goto_26

    :cond_2c
    add-int/lit8 v1, v36, 0x1

    move-object/from16 v5, v35

    goto :goto_25

    :cond_2d
    :goto_27
    move-object/from16 v35, v5

    goto :goto_28

    :cond_2e
    move-object/from16 v26, v1

    move/from16 v65, v7

    goto :goto_27

    :goto_28
    if-nez v35, :cond_2f

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_29

    :cond_2f
    move-object/from16 v5, v35

    :goto_29
    invoke-virtual {v9, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v1

    add-int/lit8 v13, v13, 0x1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2a
    if-eq v0, v4, :cond_30

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v26

    move/from16 v7, v65

    goto :goto_24

    :cond_30
    move-object/from16 v41, v5

    goto :goto_2d

    :cond_31
    :goto_2b
    move-object/from16 v26, v1

    move/from16 v64, v5

    move/from16 v65, v7

    goto :goto_2c

    :cond_32
    move/from16 v63, v0

    goto :goto_2b

    :goto_2c
    move-object/from16 v41, v17

    :goto_2d
    if-nez v41, :cond_33

    move-object/from16 v0, v16

    goto :goto_2e

    :cond_33
    move-object/from16 v0, v41

    :goto_2e
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_2f
    if-ge v4, v1, :cond_39

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/lit8 v7, v64, 0x1

    if-gt v7, v5, :cond_38

    if-ge v5, v8, :cond_38

    if-eqz v23, :cond_36

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v13, 0x0

    :goto_30
    if-ge v13, v7, :cond_36

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    move/from16 v50, v1

    move-object/from16 v1, v35

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget-object v1, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-object/from16 v51, v2

    array-length v2, v1

    move-object/from16 v35, v1

    const/4 v1, 0x0

    :goto_31
    if-ge v1, v2, :cond_35

    move/from16 v36, v1

    aget-object v1, v35, v36

    iget v1, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    if-ne v1, v5, :cond_34

    goto :goto_32

    :cond_34
    add-int/lit8 v1, v36, 0x1

    goto :goto_31

    :cond_35
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v50

    move-object/from16 v2, v51

    goto :goto_30

    :cond_36
    move/from16 v50, v1

    move-object/from16 v51, v2

    iget v1, v15, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    invoke-virtual {v15, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->spanOf(I)I

    move-result v1

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->childConstraints-JhjzzOo$foundation_release(II)J

    move-result-wide v36

    const/16 v39, 0x0

    iget v2, v6, Lcom/motorola/camera/slidedoc/SlidePointTuning;->mUpdateInterval:I

    move/from16 v40, v1

    move/from16 v41, v2

    move/from16 v38, v5

    move-object/from16 v35, v6

    invoke-virtual/range {v35 .. v41}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->getAndMeasure-m8Kt_7k(JIIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v1

    if-nez v17, :cond_37

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    :cond_37
    move-object/from16 v2, v17

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v2

    goto :goto_33

    :cond_38
    move/from16 v50, v1

    move-object/from16 v51, v2

    :goto_32
    move-object/from16 v35, v6

    :goto_33
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v6, v35

    move/from16 v1, v50

    move-object/from16 v2, v51

    goto :goto_2f

    :cond_39
    move-object/from16 v35, v6

    if-nez v17, :cond_3a

    move-object/from16 v1, v16

    goto :goto_34

    :cond_3a
    move-object/from16 v1, v17

    :goto_34
    if-gtz v47, :cond_3c

    if-gez p2, :cond_3b

    goto :goto_35

    :cond_3b
    move/from16 v2, v21

    move-object/from16 v4, v49

    goto :goto_37

    :cond_3c
    :goto_35
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v2

    move/from16 v5, v21

    move-object/from16 v15, v49

    const/4 v4, 0x0

    :goto_36
    if-ge v4, v2, :cond_3d

    invoke-virtual {v3, v4}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget v6, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    if-eqz v5, :cond_3d

    if-gt v6, v5, :cond_3d

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    if-eq v4, v7, :cond_3d

    sub-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    goto :goto_36

    :cond_3d
    move v2, v5

    move-object v4, v15

    :goto_37
    invoke-static/range {v45 .. v46}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v5

    move-wide/from16 v6, v45

    invoke-static {v11, v6, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v13

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3e

    goto :goto_38

    :cond_3e
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_38
    invoke-static {v13, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v11, v0, :cond_3f

    move/from16 v0, p1

    goto :goto_39

    :cond_3f
    const/4 v0, 0x0

    :goto_39
    if-eqz v0, :cond_41

    if-nez v19, :cond_40

    goto :goto_3a

    :cond_40
    const-string v15, "non-zero firstLineScrollOffset"

    invoke-static {v15}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_41
    :goto_3a
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v15

    move/from16 v16, v0

    move/from16 v17, v2

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_3b
    if-ge v0, v15, :cond_42

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v36, v0

    move-object/from16 v0, v21

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    array-length v0, v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v36, 0x1

    goto :goto_3b

    :cond_42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v16, :cond_49

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_3c

    :cond_43
    const-string v1, "no items"

    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_3c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v15, 0x0

    :goto_3d
    if-ge v15, v1, :cond_44

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v36, v4

    move-object/from16 v4, v16

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget v4, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSize:I

    aput v4, v2, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v36

    goto :goto_3d

    :cond_44
    move-object/from16 v36, v4

    new-array v1, v1, [I

    invoke-interface {v14, v12, v13, v2, v1}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v2

    iget v4, v2, Lkotlin/ranges/IntProgression;->first:I

    iget v14, v2, Lkotlin/ranges/IntProgression;->last:I

    iget v2, v2, Lkotlin/ranges/IntProgression;->step:I

    if-lez v2, :cond_45

    if-le v4, v14, :cond_46

    :cond_45
    if-gez v2, :cond_48

    if-gt v14, v4, :cond_48

    :cond_46
    :goto_3e
    aget v15, v1, v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v1, v15, v5, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v1

    array-length v15, v1

    move-object/from16 v16, v1

    const/4 v1, 0x0

    :goto_3f
    if-ge v1, v15, :cond_47

    move/from16 v20, v1

    aget-object v1, v16, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v20, 0x1

    goto :goto_3f

    :cond_47
    if-eq v4, v14, :cond_48

    add-int/2addr v4, v2

    move-object/from16 v1, v19

    goto :goto_3e

    :cond_48
    move/from16 v37, v8

    move/from16 v4, v65

    const/4 v8, 0x0

    goto/16 :goto_45

    :cond_49
    move-object/from16 v36, v4

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->size()I

    move-result v2

    const/16 v20, -0x1

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4b

    move/from16 v4, v19

    :goto_40
    add-int/lit8 v14, v2, -0x1

    move-object/from16 v15, v26

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move/from16 v16, v4

    iget v4, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    sub-int v4, v16, v4

    move/from16 v37, v8

    const/4 v8, 0x0

    invoke-virtual {v2, v4, v8, v5, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIII)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gez v14, :cond_4a

    goto :goto_41

    :cond_4a
    move v2, v14

    move-object/from16 v26, v15

    move/from16 v8, v37

    goto :goto_40

    :cond_4b
    move/from16 v37, v8

    :goto_41
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v2

    move/from16 v4, v19

    const/4 v14, 0x0

    :goto_42
    if-ge v14, v2, :cond_4d

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v8, v4, v5, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v15

    move/from16 v16, v2

    array-length v2, v15

    move-object/from16 v19, v3

    const/4 v3, 0x0

    :goto_43
    if-ge v3, v2, :cond_4c

    move/from16 v20, v2

    aget-object v2, v15, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v20

    goto :goto_43

    :cond_4c
    iget v2, v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    add-int/2addr v4, v2

    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v16

    move-object/from16 v3, v19

    goto :goto_42

    :cond_4d
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v14, 0x0

    :goto_44
    if-ge v14, v2, :cond_4e

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8, v5, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIII)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v4, v3

    add-int/lit8 v14, v14, 0x1

    goto :goto_44

    :cond_4e
    const/4 v8, 0x0

    move/from16 v4, v65

    :goto_45
    float-to-int v1, v4

    move-object/from16 v19, v0

    move/from16 v16, v1

    move/from16 v26, v17

    move-object/from16 v20, v18

    move-object/from16 v15, v27

    move-object/from16 v21, v35

    move/from16 v17, v5

    move/from16 v27, v11

    move/from16 v18, v13

    invoke-virtual/range {v15 .. v29}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/ArrayList;Lcom/google/common/base/Splitter;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    move-object/from16 v1, v21

    move/from16 v2, v26

    if-nez v23, :cond_50

    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v14

    move-object/from16 v18, v9

    const-wide/16 v8, 0x0

    invoke-static {v14, v15, v8, v9}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_51

    shr-long v8, v14, v32

    long-to-int v3, v8

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v6, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v5

    and-long v8, v14, v33

    long-to-int v3, v8

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v6, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v3

    if-eq v3, v13, :cond_4f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v14, 0x0

    :goto_46
    if-ge v14, v6, :cond_4f

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iput v3, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    iget v8, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->afterContentPadding:I

    add-int/2addr v8, v3

    iput v8, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->maxMainAxisOffset:I

    add-int/lit8 v14, v14, 0x1

    goto :goto_46

    :cond_4f
    move/from16 v21, v3

    :goto_47
    move/from16 v20, v5

    move-object/from16 v9, v18

    goto :goto_48

    :cond_50
    move-object/from16 v18, v9

    :cond_51
    move/from16 v21, v13

    goto :goto_47

    :goto_48
    sget-object v18, Landroidx/collection/IntListKt;->EmptyIntList:Landroidx/collection/MutableIntList;

    new-instance v3, Landroidx/compose/runtime/Latch$await$2$2;

    const/16 v5, 0xf

    invoke-direct {v3, v5, v9, v1}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v1, p0

    iget-object v1, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$stickyItemsScrollBehavior:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

    move-object/from16 v17, v0

    move-object/from16 v16, v1

    move-object/from16 v22, v3

    move/from16 v19, v47

    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->applyStickyItems(Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;Ljava/util/ArrayList;Landroidx/collection/MutableIntList;IIILkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v50

    add-int/lit8 v13, v37, -0x1

    move/from16 v5, v64

    if-ne v5, v13, :cond_53

    if-le v11, v10, :cond_52

    goto :goto_49

    :cond_52
    const/4 v3, 0x0

    goto :goto_4a

    :cond_53
    :goto_49
    move/from16 v3, p1

    :goto_4a
    new-instance v47, Landroidx/work/impl/WorkerWrapper$runWorker$2;

    const/16 v52, 0x2

    move-object/from16 v49, v0

    move/from16 v51, v23

    invoke-direct/range {v47 .. v52}, Landroidx/work/impl/WorkerWrapper$runWorker$2;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Ljava/util/List;ZI)V

    move-object/from16 v6, v47

    move-object/from16 v1, v50

    add-int v7, v20, v44

    move-wide/from16 v8, v56

    invoke-static {v7, v8, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v7

    add-int v10, v21, v43

    invoke-static {v10, v8, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v8

    move-object/from16 v9, v54

    move-object/from16 v10, v60

    invoke-interface {v9, v7, v8, v10, v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v6

    move/from16 v7, v63

    invoke-static {v7, v5, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->updatedVisibleItems(IILjava/util/ArrayList;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v16, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    move-object v9, v12

    move-object v12, v0

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move/from16 v18, p2

    move-object v5, v6

    move/from16 v10, v24

    move-object/from16 v8, v28

    move-object/from16 v1, v36

    move/from16 v15, v37

    move-object/from16 v11, v42

    move/from16 v14, v53

    move/from16 v17, v58

    move/from16 v13, v59

    move/from16 v7, v61

    move/from16 v6, v62

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    :goto_4b
    invoke-interface/range {v54 .. v54}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v1

    move-object/from16 v2, v55

    const/4 v13, 0x0

    invoke-virtual {v2, v0, v1, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;ZZ)V

    return-object v0

    :goto_4c
    invoke-static {v13, v4, v3}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0
.end method
