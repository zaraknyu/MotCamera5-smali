.class public final Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

.field public final synthetic $horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

.field public final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic $isVertical:Z

.field public final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;

.field public final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic $stickyItemsPlacement:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

.field public final synthetic $verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

.field public final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;ZLandroidx/compose/foundation/layout/PaddingValuesImpl;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$stickyItemsPlacement:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

    iput-object p11, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 62

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    move-object/from16 v1, p2

    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    iget-wide v1, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v4, v3, Landroidx/compose/foundation/lazy/LazyListState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    iget-boolean v4, v3, Landroidx/compose/foundation/lazy/LazyListState;->hasLookaheadOccurred:Z

    const/16 v16, 0x1

    if-nez v4, :cond_1

    iget-object v4, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v4}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v27, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v27, v16

    :goto_1
    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v4, :cond_2

    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2

    :cond_2
    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_2
    invoke-static {v1, v2, v6}, Landroidx/compose/foundation/ImageKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    if-eqz v4, :cond_3

    iget-object v7, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v7}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v7

    iget-object v8, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v8, v7}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v7

    goto :goto_4

    :cond_3
    iget-object v7, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v7}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v7, v8, :cond_4

    invoke-virtual {v6, v7}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v7

    goto :goto_3

    :cond_4
    invoke-virtual {v6, v7}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v7

    :goto_3
    iget-object v8, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v8, v7}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v7

    :goto_4
    if-eqz v4, :cond_5

    iget-object v8, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v8}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v8

    iget-object v10, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v10, v8}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v8

    goto :goto_6

    :cond_5
    iget-object v8, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v8}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    sget-object v10, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v8, v10, :cond_6

    invoke-virtual {v6, v8}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v8

    goto :goto_5

    :cond_6
    invoke-virtual {v6, v8}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v8

    :goto_5
    iget-object v10, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v10, v8}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v8

    :goto_6
    iget v10, v6, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    iget-object v11, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget-object v12, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v11, v10}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v10

    iget v6, v6, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    invoke-interface {v12, v6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v6

    add-int/2addr v6, v10

    add-int v11, v7, v8

    if-eqz v4, :cond_7

    move v13, v6

    goto :goto_7

    :cond_7
    move v13, v11

    :goto_7
    if-eqz v4, :cond_8

    move/from16 v20, v10

    goto :goto_8

    :cond_8
    if-nez v4, :cond_9

    move/from16 v20, v7

    goto :goto_8

    :cond_9
    move/from16 v20, v8

    :goto_8
    sub-int v17, v13, v20

    neg-int v8, v11

    neg-int v13, v6

    invoke-static {v1, v2, v8, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v13

    iget-object v8, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    iget-object v15, v8, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    move-wide/from16 v18, v1

    iget-object v1, v8, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->keyIndexMap:Lcom/google/common/base/Splitter;

    iget-object v2, v8, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v5

    move-object/from16 v22, v1

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    move-object/from16 v21, v2

    iget-object v2, v15, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxWidthState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    iget-object v2, v15, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxHeightState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    const-string v23, "null verticalArrangement when isVertical == true"

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    if-eqz v4, :cond_b

    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v5

    goto :goto_9

    :cond_a
    invoke-static/range {v23 .. v23}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    if-eqz v1, :cond_71

    invoke-interface {v1}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v5

    :goto_9
    invoke-interface {v12, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v5

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->getIntervals$1()Lcom/google/common/base/Splitter;

    move-result-object v15

    iget v15, v15, Lcom/google/common/base/Splitter;->limit:I

    if-eqz v4, :cond_c

    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    sub-int/2addr v4, v6

    :goto_a
    move-object/from16 v21, v1

    move-object/from16 v24, v2

    goto :goto_b

    :cond_c
    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    sub-int/2addr v4, v11

    goto :goto_a

    :goto_b
    int-to-long v1, v7

    const/16 v32, 0x20

    shl-long v1, v1, v32

    move-wide/from16 v25, v1

    int-to-long v1, v10

    const-wide v33, 0xffffffffL

    and-long v1, v1, v33

    or-long v1, v25, v1

    move-object v7, v3

    move-wide/from16 v60, v13

    move-wide v13, v1

    move-wide/from16 v2, v60

    new-instance v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    iget-object v10, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    move-object/from16 v25, v7

    move v7, v15

    iget-object v15, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    move/from16 v26, v4

    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    move/from16 v28, v6

    move-object v6, v9

    iget-object v9, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-object/from16 p1, v8

    move v8, v5

    move-object/from16 v5, p1

    move/from16 v39, v11

    move-object/from16 p1, v12

    move/from16 v12, v17

    move-wide/from16 v36, v18

    move/from16 v11, v20

    move-object/from16 v41, v24

    move-object/from16 v0, v25

    move/from16 v40, v26

    move/from16 v38, v28

    invoke-direct/range {v1 .. v15}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;-><init>(JZLandroidx/compose/foundation/lazy/LazyListItemProviderImpl;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IILandroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;IIJLandroidx/compose/foundation/lazy/LazyListState;)V

    move v15, v7

    move-object/from16 v60, v23

    move-object/from16 v23, v1

    move v1, v8

    move-wide v7, v2

    move-object/from16 v2, v60

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    goto :goto_c

    :cond_d
    const/4 v4, 0x0

    :goto_c
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v10

    :try_start_0
    iget-object v13, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    iget-object v14, v13, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v14

    iget-object v9, v13, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->lastKnownFirstItemKey:Ljava/lang/Object;

    invoke-static {v14, v5, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->findIndexByKey(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    move-result v9

    if-eq v14, v9, :cond_e

    move/from16 v42, v1

    iget-object v1, v13, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    iget-object v1, v13, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    invoke-virtual {v1, v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    goto :goto_d

    :catchall_0
    move-exception v0

    goto/16 :goto_57

    :cond_e
    move/from16 v42, v1

    :goto_d
    iget-object v1, v13, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v10, v4}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListState;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    invoke-static {v5, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/room/ObservedTableVersions;)Ljava/util/List;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v4

    if-nez v4, :cond_10

    if-nez v27, :cond_f

    goto :goto_e

    :cond_f
    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListState;->_lazyLayoutScrollDeltaBetweenPasses:Lcom/google/android/gms/tasks/zzs;

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/animation/core/AnimationState;

    iget-object v4, v4, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    goto :goto_f

    :cond_10
    :goto_e
    iget v4, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    :goto_f
    iget-object v5, v0, Landroidx/compose/foundation/lazy/LazyListState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v25

    iget-object v10, v0, Landroidx/compose/foundation/lazy/LazyListState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    iget-object v13, v0, Landroidx/compose/foundation/lazy/LazyListState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    if-ltz v11, :cond_11

    goto :goto_10

    :cond_11
    const-string v14, "invalid beforeContentPadding"

    invoke-static {v14}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_10
    if-ltz v12, :cond_12

    goto :goto_11

    :cond_12
    const-string v14, "invalid afterContentPadding"

    invoke-static {v14}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_11
    sget-object v14, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    move-object/from16 v43, v0

    move/from16 v17, v1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    move/from16 v24, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v30, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    move/from16 v44, v12

    move-object/from16 v45, v13

    const-wide/16 v12, 0x0

    sget-object v46, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-gtz v15, :cond_15

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v19

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v20

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v18, 0x0

    const/16 v26, 0x1

    move-object/from16 v31, v1

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v31}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/ArrayList;Lcom/google/common/base/Splitter;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    move-object/from16 v18, v17

    move-object/from16 v1, v23

    if-nez v25, :cond_13

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v2

    invoke-static {v2, v3, v12, v13}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_13

    shr-long v4, v2, v32

    long-to-int v0, v4

    invoke-static {v0, v7, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v19

    and-long v2, v2, v33

    long-to-int v0, v2

    invoke-static {v0, v7, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v20

    :cond_13
    sget-object v0, Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$2;->INSTANCE$1:Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$2;

    add-int v2, v19, v39

    move-wide/from16 v3, v36

    invoke-static {v2, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v2

    add-int v5, v20, v38

    invoke-static {v5, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v3

    move-object/from16 v4, p1

    invoke-interface {v4, v2, v3, v14, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v5

    neg-int v13, v11

    add-int v14, v40, v44

    if-eqz v24, :cond_14

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_12
    move-object/from16 v16, v0

    goto :goto_13

    :cond_14
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_12

    :goto_13
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    move-object v8, v3

    const/4 v3, 0x0

    move-object v9, v4

    const/4 v4, 0x0

    move-object v10, v9

    move-object v9, v6

    const/4 v6, 0x0

    move-object v12, v10

    iget-wide v10, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    move-object v1, v8

    move-object/from16 v49, v12

    move-object/from16 v8, v30

    move/from16 v18, v42

    move-object/from16 v50, v43

    move/from16 v17, v44

    move-object/from16 v12, v46

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    goto/16 :goto_56

    :cond_15
    move-object/from16 v49, p1

    move-object/from16 v31, v1

    move-object/from16 v18, v5

    move-object/from16 v1, v23

    move-wide/from16 v51, v36

    move/from16 v5, v40

    move-object/from16 v50, v43

    move/from16 v36, v44

    if-lt v9, v15, :cond_16

    add-int/lit8 v9, v15, -0x1

    const/16 v17, 0x0

    :cond_16
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v19

    sub-int v17, v17, v19

    if-nez v9, :cond_17

    if-gez v17, :cond_17

    add-int v19, v19, v17

    const/16 v17, 0x0

    :cond_17
    new-instance v12, Lkotlin/collections/ArrayDeque;

    invoke-direct {v12}, Lkotlin/collections/ArrayDeque;-><init>()V

    neg-int v13, v11

    if-gez v42, :cond_18

    move/from16 v20, v42

    :goto_14
    move-object/from16 p1, v2

    goto :goto_15

    :cond_18
    const/16 v20, 0x0

    goto :goto_14

    :goto_15
    add-int v2, v13, v20

    add-int v17, v17, v2

    move/from16 v20, v4

    move/from16 v40, v13

    move-object/from16 v37, v14

    move/from16 v4, v17

    move/from16 v17, v9

    const/4 v9, 0x0

    :goto_16
    iget-wide v13, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    if-gez v4, :cond_19

    if-lez v17, :cond_19

    add-int/lit8 v0, v17, -0x1

    invoke-virtual {v1, v0, v13, v14}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v13}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v14, v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v13, v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v4, v13

    move/from16 v17, v0

    move-object/from16 v0, p0

    goto :goto_16

    :cond_19
    const/4 v0, 0x0

    if-ge v4, v2, :cond_1a

    sub-int v4, v2, v4

    sub-int v19, v19, v4

    move v4, v2

    :cond_1a
    move/from16 v53, v19

    sub-int/2addr v4, v2

    add-int v35, v5, v36

    if-gez v35, :cond_1b

    :goto_17
    move/from16 v19, v9

    goto :goto_18

    :cond_1b
    move/from16 v0, v35

    goto :goto_17

    :goto_18
    neg-int v9, v4

    move/from16 v26, v4

    move-object/from16 v29, v6

    move v4, v9

    move/from16 v28, v17

    const/4 v9, 0x0

    const/16 v23, 0x0

    :goto_19
    iget v6, v12, Lkotlin/collections/ArrayDeque;->size:I

    if-ge v9, v6, :cond_1d

    if-lt v4, v0, :cond_1c

    invoke-virtual {v12, v9}, Lkotlin/collections/ArrayDeque;->removeAt(I)Ljava/lang/Object;

    move/from16 v23, v16

    goto :goto_19

    :cond_1c
    add-int/lit8 v28, v28, 0x1

    invoke-virtual {v12, v9}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v4, v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_1d
    move/from16 v9, v19

    move/from16 v54, v23

    move/from16 v6, v28

    :goto_1a
    if-ge v6, v15, :cond_1f

    if-lt v4, v0, :cond_1e

    if-lez v4, :cond_1e

    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1f

    :cond_1e
    move/from16 v19, v0

    goto :goto_1b

    :cond_1f
    move-wide/from16 v47, v7

    goto :goto_1d

    :goto_1b
    invoke-virtual {v1, v6, v13, v14}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    move-wide/from16 v47, v7

    iget v7, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v4, v7

    if-gt v4, v2, :cond_20

    add-int/lit8 v8, v15, -0x1

    if-eq v6, v8, :cond_20

    add-int/lit8 v0, v6, 0x1

    sub-int v26, v26, v7

    move/from16 v17, v0

    move/from16 v54, v16

    goto :goto_1c

    :cond_20
    iget v7, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v12, v0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move v9, v7

    :goto_1c
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v19

    move-wide/from16 v7, v47

    goto :goto_1a

    :goto_1d
    if-ge v4, v5, :cond_23

    sub-int v0, v5, v4

    sub-int v26, v26, v0

    add-int/2addr v4, v0

    move/from16 v2, v26

    :goto_1e
    if-ge v2, v11, :cond_21

    if-lez v17, :cond_21

    add-int/lit8 v7, v17, -0x1

    invoke-virtual {v1, v7, v13, v14}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v8

    move/from16 v19, v0

    const/4 v0, 0x0

    invoke-virtual {v12, v0, v8}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v0, v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v0, v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v2, v0

    move/from16 v17, v7

    move/from16 v0, v19

    goto :goto_1e

    :cond_21
    move/from16 v19, v0

    move/from16 v0, v53

    add-int v53, v0, v19

    if-gez v2, :cond_22

    add-int v53, v53, v2

    add-int/2addr v4, v2

    move v7, v4

    move/from16 v4, v17

    move/from16 v8, v53

    const/4 v2, 0x0

    goto :goto_1f

    :cond_22
    move v7, v4

    move/from16 v4, v17

    move/from16 v8, v53

    goto :goto_1f

    :cond_23
    move/from16 v0, v53

    move v8, v0

    move v7, v4

    move/from16 v4, v17

    move/from16 v2, v26

    :goto_1f
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v19, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->signum(I)I

    move-result v6

    move/from16 v17, v9

    invoke-static {v8}, Ljava/lang/Integer;->signum(I)I

    move-result v9

    if-ne v6, v9, :cond_24

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-lt v6, v9, :cond_24

    int-to-float v6, v8

    move v9, v6

    goto :goto_20

    :cond_24
    move/from16 v9, v20

    :goto_20
    sub-float v6, v20, v9

    const/16 v20, 0x0

    if-eqz v25, :cond_25

    if-le v8, v0, :cond_25

    cmpg-float v23, v6, v20

    if-gtz v23, :cond_25

    sub-int/2addr v8, v0

    int-to-float v0, v8

    add-float/2addr v0, v6

    goto :goto_21

    :cond_25
    move/from16 v0, v20

    :goto_21
    if-ltz v2, :cond_26

    goto :goto_22

    :cond_26
    const-string v6, "negative currentFirstItemScrollOffset"

    invoke-static {v6}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_22
    neg-int v6, v2

    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-gtz v11, :cond_27

    if-gez v42, :cond_28

    :cond_27
    move/from16 v53, v0

    goto :goto_24

    :cond_28
    move/from16 v53, v0

    :goto_23
    move/from16 v28, v2

    const/4 v0, 0x0

    goto :goto_26

    :goto_24
    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    move-object/from16 v23, v8

    const/4 v8, 0x0

    :goto_25
    if-ge v8, v0, :cond_29

    invoke-virtual {v12, v8}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v26

    move/from16 v28, v0

    move-object/from16 v0, v26

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    if-eqz v2, :cond_29

    if-gt v0, v2, :cond_29

    move/from16 v26, v0

    invoke-static {v12}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    if-eq v8, v0, :cond_29

    sub-int v2, v2, v26

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v12, v8}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move/from16 v0, v28

    goto :goto_25

    :cond_29
    move-object/from16 v8, v23

    goto :goto_23

    :goto_26
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v4, v4, -0x1

    if-gt v2, v4, :cond_2b

    const/16 v23, 0x0

    :goto_27
    if-nez v23, :cond_2a

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    :cond_2a
    move-object/from16 v0, v23

    move/from16 v23, v6

    invoke-virtual {v1, v4, v13, v14}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v4, v2, :cond_2c

    add-int/lit8 v4, v4, -0x1

    move/from16 v6, v23

    move-object/from16 v23, v0

    const/4 v0, 0x0

    goto :goto_27

    :cond_2b
    move/from16 v23, v6

    const/4 v0, 0x0

    :cond_2c
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, -0x1

    add-int/2addr v4, v6

    if-ltz v4, :cond_30

    :goto_28
    add-int/lit8 v26, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ge v4, v2, :cond_2e

    if-nez v0, :cond_2d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2d
    invoke-virtual {v1, v4, v13, v14}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    if-gez v26, :cond_2f

    goto :goto_29

    :cond_2f
    move/from16 v4, v26

    goto :goto_28

    :cond_30
    :goto_29
    if-nez v0, :cond_31

    move-object/from16 v0, v46

    :cond_31
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    move/from16 v6, v17

    const/4 v4, 0x0

    :goto_2a
    if-ge v4, v2, :cond_32

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    move/from16 v55, v2

    move-object/from16 v2, v26

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v55

    goto :goto_2a

    :cond_32
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    add-int/lit8 v4, v15, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v26

    move/from16 v55, v6

    move-object/from16 v6, v26

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    add-int/lit8 v6, v6, 0x1

    if-gt v6, v2, :cond_34

    const/16 v26, 0x0

    :goto_2b
    if-nez v26, :cond_33

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    :cond_33
    move/from16 v57, v9

    move/from16 v56, v11

    move-object/from16 v11, v26

    invoke-virtual {v1, v6, v13, v14}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v6, v2, :cond_35

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v26, v11

    move/from16 v11, v56

    move/from16 v9, v57

    goto :goto_2b

    :cond_34
    move/from16 v57, v9

    move/from16 v56, v11

    const/4 v11, 0x0

    :cond_35
    if-eqz v25, :cond_48

    if-eqz v10, :cond_48

    iget-object v6, v10, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_48

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v17, v11

    :goto_2c
    const/4 v11, -0x1

    if-ge v11, v9, :cond_38

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v11, v26

    check-cast v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v11, v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-le v11, v2, :cond_37

    if-eqz v9, :cond_36

    add-int/lit8 v11, v9, -0x1

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v11, v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-gt v11, v2, :cond_37

    :cond_36
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_2d

    :cond_37
    add-int/lit8 v9, v9, -0x1

    goto :goto_2c

    :cond_38
    const/4 v9, 0x0

    :goto_2d
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v9, :cond_3e

    iget v9, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    iget v11, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gt v9, v4, :cond_3e

    move-object/from16 v11, v17

    :goto_2e
    move-object/from16 v26, v0

    if-eqz v11, :cond_3b

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v0

    move/from16 v58, v7

    const/4 v7, 0x0

    :goto_2f
    if-ge v7, v0, :cond_3a

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v59, v0

    move-object/from16 v0, v17

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-ne v0, v9, :cond_39

    goto :goto_30

    :cond_39
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v59

    goto :goto_2f

    :cond_3a
    const/16 v17, 0x0

    :goto_30
    check-cast v17, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_31

    :cond_3b
    move/from16 v58, v7

    const/16 v17, 0x0

    :goto_31
    if-nez v17, :cond_3d

    if-nez v11, :cond_3c

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_3c
    invoke-virtual {v1, v9, v13, v14}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    if-eq v9, v4, :cond_3f

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v26

    move/from16 v7, v58

    goto :goto_2e

    :cond_3e
    move-object/from16 v26, v0

    move/from16 v58, v7

    move-object/from16 v11, v17

    :cond_3f
    iget v0, v10, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportEndOffset:I

    iget v4, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    sub-int/2addr v0, v4

    iget v4, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    sub-float v0, v0, v57

    cmpl-float v4, v0, v20

    if-lez v4, :cond_49

    iget v4, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    :goto_32
    if-ge v4, v15, :cond_49

    int-to-float v7, v6

    cmpg-float v7, v7, v0

    if-gez v7, :cond_49

    if-gt v4, v2, :cond_42

    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v7

    const/4 v9, 0x0

    :goto_33
    if-ge v9, v7, :cond_41

    invoke-virtual {v12, v9}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v10

    move/from16 v17, v0

    move-object v0, v10

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-ne v0, v4, :cond_40

    goto :goto_34

    :cond_40
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v17

    goto :goto_33

    :cond_41
    move/from16 v17, v0

    const/4 v10, 0x0

    :goto_34
    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_37

    :cond_42
    move/from16 v17, v0

    if-eqz v11, :cond_45

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v7, 0x0

    :goto_35
    if-ge v7, v0, :cond_44

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v10, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-ne v10, v4, :cond_43

    goto :goto_36

    :cond_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    :cond_44
    const/4 v9, 0x0

    :goto_36
    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_37

    :cond_45
    const/4 v10, 0x0

    :goto_37
    if-eqz v10, :cond_46

    add-int/lit8 v4, v4, 0x1

    iget v0, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    :goto_38
    add-int/2addr v6, v0

    move/from16 v0, v17

    goto :goto_32

    :cond_46
    if-nez v11, :cond_47

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_47
    invoke-virtual {v1, v4, v13, v14}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    goto :goto_38

    :cond_48
    move-object/from16 v26, v0

    move/from16 v58, v7

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    :cond_49
    if-eqz v11, :cond_4a

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-le v0, v2, :cond_4a

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    :cond_4a
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_39
    if-ge v4, v0, :cond_4d

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-le v6, v2, :cond_4c

    if-nez v11, :cond_4b

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_4b
    invoke-virtual {v1, v6, v13, v14}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_4d
    if-nez v11, :cond_4e

    move-object/from16 v11, v46

    :cond_4e
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v0

    move/from16 v6, v55

    const/4 v2, 0x0

    :goto_3a
    if-ge v2, v0, :cond_4f

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_4f
    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    move/from16 v0, v16

    goto :goto_3b

    :cond_50
    const/4 v0, 0x0

    :goto_3b
    if-eqz v24, :cond_51

    move v2, v6

    :goto_3c
    move-wide/from16 v9, v47

    goto :goto_3d

    :cond_51
    move/from16 v2, v58

    goto :goto_3c

    :goto_3d
    invoke-static {v2, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v7

    if-eqz v24, :cond_52

    move/from16 v6, v58

    :cond_52
    invoke-static {v6, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v13

    if-eqz v24, :cond_53

    move v3, v13

    goto :goto_3e

    :cond_53
    move v3, v7

    :goto_3e
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v14, v58

    if-ge v14, v2, :cond_54

    move/from16 v2, v16

    goto :goto_3f

    :cond_54
    const/4 v2, 0x0

    :goto_3f
    if-eqz v2, :cond_56

    if-nez v23, :cond_55

    goto :goto_40

    :cond_55
    const-string v4, "non-zero itemsScrollOffset"

    invoke-static {v4}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_56
    :goto_40
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v6

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v17

    add-int v17, v17, v6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    add-int v6, v6, v17

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v2, :cond_60

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_57

    goto :goto_41

    :cond_57
    const-string v2, "no extra items"

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_41
    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v2

    move-object v6, v4

    new-array v4, v2, [I

    const/4 v11, 0x0

    :goto_42
    if-ge v11, v2, :cond_58

    invoke-virtual {v12, v11}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v46, v0

    move-object/from16 v0, v17

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    aput v0, v4, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v46

    goto :goto_42

    :cond_58
    move/from16 v46, v0

    new-array v0, v2, [I

    if-eqz v24, :cond_5a

    move-object/from16 v2, v41

    if-eqz v2, :cond_59

    move-object/from16 v11, v29

    invoke-interface {v2, v11, v3, v4, v0}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    move-object/from16 v17, v11

    move-object v11, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v1

    move-object v1, v0

    move v0, v5

    goto :goto_43

    :cond_59
    invoke-static/range {p1 .. p1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5a
    move-object/from16 v11, v29

    if-eqz v21, :cond_5f

    move/from16 v26, v5

    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v17, v1

    move-object v2, v11

    move-object/from16 v1, v21

    move-object v11, v6

    move-object v6, v0

    move/from16 v0, v26

    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    move-object v1, v6

    move-object v6, v2

    :goto_43
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v2

    iget v3, v2, Lkotlin/ranges/IntProgression;->first:I

    iget v4, v2, Lkotlin/ranges/IntProgression;->last:I

    iget v2, v2, Lkotlin/ranges/IntProgression;->step:I

    if-lez v2, :cond_5b

    if-le v3, v4, :cond_5c

    :cond_5b
    if-gez v2, :cond_5d

    if-gt v4, v3, :cond_5d

    :cond_5c
    :goto_44
    aget v5, v1, v3

    invoke-virtual {v12, v3}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 p1, v1

    move-object/from16 v1, v20

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v1, v5, v7, v13}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v3, v4, :cond_5d

    add-int/2addr v3, v2

    move-object/from16 v1, p1

    goto :goto_44

    :cond_5d
    move-object v2, v11

    move/from16 v1, v19

    :cond_5e
    move/from16 v4, v57

    goto/16 :goto_48

    :cond_5f
    const-string v0, "null horizontalArrangement when isVertical == false"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_60
    move/from16 v46, v0

    move-object/from16 v17, v1

    move-object v2, v4

    move v0, v5

    move/from16 v1, v19

    move-object/from16 v6, v29

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->size()I

    move-result v3

    move/from16 v4, v23

    const/4 v5, 0x0

    :goto_45
    if-ge v5, v3, :cond_61

    move/from16 p1, v3

    move-object/from16 v3, v26

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v3, v19

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move/from16 v19, v4

    iget v4, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    sub-int v4, v19, v4

    invoke-virtual {v3, v4, v7, v13}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move/from16 v3, p1

    goto :goto_45

    :cond_61
    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v3

    move/from16 v4, v23

    const/4 v5, 0x0

    :goto_46
    if-ge v5, v3, :cond_62

    invoke-virtual {v12, v5}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 p1, v3

    move-object/from16 v3, v19

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v3, v4, v7, v13}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v4, v3

    add-int/lit8 v5, v5, 0x1

    move/from16 v3, p1

    goto :goto_46

    :cond_62
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_47
    if-ge v5, v3, :cond_5e

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 p1, v3

    move-object/from16 v3, v19

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v3, v4, v7, v13}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v4, v3

    add-int/lit8 v5, v5, 0x1

    move/from16 v3, p1

    goto :goto_47

    :goto_48
    float-to-int v3, v4

    const/16 v26, 0x1

    move-object/from16 v21, v2

    move/from16 v19, v7

    move/from16 v20, v13

    move/from16 v29, v14

    move-object/from16 v23, v17

    move-object/from16 v17, v18

    move/from16 v18, v3

    invoke-virtual/range {v17 .. v31}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/ArrayList;Lcom/google/common/base/Splitter;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    move/from16 v2, v20

    move-object/from16 v11, v21

    move-object/from16 v3, v23

    move/from16 v57, v4

    if-nez v25, :cond_66

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v4

    move/from16 v58, v14

    const-wide/16 v13, 0x0

    invoke-static {v4, v5, v13, v14}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v13

    if-nez v13, :cond_65

    if-eqz v24, :cond_63

    move v13, v2

    :goto_49
    move-wide/from16 v17, v4

    goto :goto_4a

    :cond_63
    move v13, v7

    goto :goto_49

    :goto_4a
    shr-long v4, v17, v32

    long-to-int v4, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v7

    and-long v4, v17, v33

    long-to-int v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v2

    if-eqz v24, :cond_64

    move v4, v2

    goto :goto_4b

    :cond_64
    move v4, v7

    :goto_4b
    if-eq v4, v13, :cond_65

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_4c
    if-ge v9, v5, :cond_65

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iput v4, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    iget v13, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->afterContentPadding:I

    add-int/2addr v13, v4

    iput v13, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->maxMainAxisOffset:I

    add-int/lit8 v9, v9, 0x1

    goto :goto_4c

    :cond_65
    :goto_4d
    move/from16 v22, v2

    move/from16 v21, v7

    goto :goto_4e

    :cond_66
    move/from16 v58, v14

    goto :goto_4d

    :goto_4e
    sget-object v19, Landroidx/collection/IntListKt;->EmptyIntList:Landroidx/collection/MutableIntList;

    new-instance v2, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/16 v4, 0xb

    invoke-direct {v2, v4, v3}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    move-object/from16 v4, p0

    iget-object v4, v4, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$stickyItemsPlacement:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

    move-object/from16 v23, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v11

    move/from16 v20, v56

    invoke-static/range {v17 .. v23}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->applyStickyItems(Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;Ljava/util/ArrayList;Landroidx/collection/MutableIntList;IIILkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v2

    if-eqz v46, :cond_68

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v4, :cond_67

    iget v4, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_50

    :cond_67
    const/4 v4, 0x0

    goto :goto_50

    :cond_68
    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_69

    const/4 v4, 0x0

    goto :goto_4f

    :cond_69
    iget-object v4, v12, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v5, v12, Lkotlin/collections/ArrayDeque;->head:I

    aget-object v4, v4, v5

    :goto_4f
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v4, :cond_67

    iget v4, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_50
    if-eqz v46, :cond_6b

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v5, :cond_6a

    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_51

    :cond_6a
    const/4 v9, 0x0

    goto :goto_51

    :cond_6b
    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v5, :cond_6a

    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_51
    if-lt v1, v15, :cond_6d

    move/from16 v14, v58

    if-le v14, v0, :cond_6c

    goto :goto_52

    :cond_6c
    const/16 v16, 0x0

    :cond_6d
    :goto_52
    new-instance v43, Landroidx/work/impl/WorkerWrapper$runWorker$2;

    const/16 v48, 0x1

    move-object/from16 v46, v2

    move/from16 v47, v25

    move-object/from16 v44, v45

    move-object/from16 v45, v11

    invoke-direct/range {v43 .. v48}, Landroidx/work/impl/WorkerWrapper$runWorker$2;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Ljava/util/List;ZI)V

    move-object/from16 v1, v43

    move-object/from16 v0, v46

    add-int v2, v21, v39

    move-wide/from16 v12, v51

    invoke-static {v2, v12, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v2

    add-int v5, v22, v38

    invoke-static {v5, v12, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v5

    move-object/from16 v10, v37

    move-object/from16 v7, v49

    invoke-interface {v7, v2, v5, v10, v1}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v5

    if-eqz v4, :cond_6e

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_53

    :cond_6e
    const/4 v1, 0x0

    :goto_53
    if-eqz v9, :cond_6f

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_54

    :cond_6f
    const/4 v2, 0x0

    :goto_54
    invoke-static {v1, v2, v11, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->updatedVisibleItems(IILjava/util/ArrayList;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    if-eqz v24, :cond_70

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_55

    :cond_70
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_55
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    iget-wide v10, v3, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    move-object v9, v6

    move-object/from16 v49, v7

    move/from16 v3, v16

    move/from16 v2, v28

    move/from16 v14, v35

    move/from16 v17, v36

    move/from16 v13, v40

    move/from16 v18, v42

    move/from16 v6, v53

    move/from16 v7, v54

    move/from16 v4, v57

    move-object/from16 v16, v0

    move-object v0, v1

    move-object v1, v8

    move-object/from16 v8, v30

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    :goto_56
    invoke-interface/range {v49 .. v49}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v1

    move-object/from16 v7, v50

    const/4 v14, 0x0

    invoke-virtual {v7, v0, v1, v14}, Landroidx/compose/foundation/lazy/LazyListState;->applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/LazyListMeasureResult;ZZ)V

    return-object v0

    :goto_57
    invoke-static {v3, v10, v4}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    :cond_71
    const-string v0, "null horizontalAlignment when isVertical == false"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
