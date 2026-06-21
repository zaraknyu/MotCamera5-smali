.class public final Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $beyondViewportPageCount:I

.field public final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;

.field public final synthetic $pageCount:Lkotlin/jvm/functions/Function0;

.field public final synthetic $pageSize:Landroidx/compose/foundation/pager/PageSize$Fill;

.field public final synthetic $pageSpacing:F

.field public final synthetic $snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

.field public final synthetic $state:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic $verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValuesImpl;FLandroidx/compose/foundation/pager/PageSize$Fill;Lkotlin/reflect/KProperty0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/BiasAlignment$Vertical;ILandroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iput p3, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageSpacing:F

    iput-object p4, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageSize:Landroidx/compose/foundation/pager/PageSize$Fill;

    iput-object p5, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageCount:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    iput p8, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$beyondViewportPageCount:I

    iput-object p9, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    iput-object p10, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 54

    move-object/from16 v0, p0

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/ui/unit/Constraints;

    iget-wide v14, v2, Landroidx/compose/ui/unit/Constraints;->value:J

    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget-object v3, v2, Landroidx/compose/foundation/pager/PagerState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    invoke-static {v14, v15, v7}, Landroidx/compose/foundation/ImageKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    iget-object v3, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v3}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    if-ne v3, v4, :cond_0

    invoke-virtual {v5, v3}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v3}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v3

    :goto_0
    iget-object v4, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v4, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v3

    iget-object v4, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v4}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v4, v6, :cond_1

    invoke-virtual {v5, v4}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v4}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v4

    :goto_1
    iget-object v6, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v6, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    iget v6, v5, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    iget-object v9, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget-object v10, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v9, v6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v6

    iget v5, v5, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    invoke-interface {v10, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v5

    add-int/2addr v5, v6

    add-int/2addr v4, v3

    sub-int v19, v4, v3

    neg-int v9, v4

    neg-int v11, v5

    invoke-static {v14, v15, v9, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v11

    iput-object v1, v2, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    iget v9, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageSpacing:F

    invoke-interface {v10, v9}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v18

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v9

    sub-int/2addr v9, v4

    move/from16 p2, v4

    move/from16 p1, v5

    int-to-long v4, v3

    const/16 v13, 0x20

    shl-long/2addr v4, v13

    move-wide/from16 v16, v4

    int-to-long v4, v6

    const-wide v20, 0xffffffffL

    and-long v4, v4, v20

    or-long v5, v16, v4

    iget-object v4, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageSize:Landroidx/compose/foundation/pager/PageSize$Fill;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gez v9, :cond_2

    const/4 v13, 0x0

    goto :goto_2

    :cond_2
    move v13, v9

    :goto_2
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    move-object/from16 v16, v1

    const/4 v1, 0x5

    move-wide/from16 v20, v5

    invoke-static {v13, v4, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    move-result-wide v4

    iput-wide v4, v2, Landroidx/compose/foundation/pager/PagerState;->premeasureConstraints:J

    iget-object v4, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v6

    move-wide/from16 v22, v11

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v11

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    invoke-static {v6}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v12

    :try_start_0
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v1

    move-object/from16 v25, v5

    iget-object v5, v2, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

    move-object/from16 v27, v7

    iget-object v7, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    invoke-static {v1, v4, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->findIndexByKey(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    move-result v7

    if-eq v1, v7, :cond_4

    move-object/from16 v28, v8

    iget-object v8, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    iget-object v8, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    invoke-virtual {v8, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    goto :goto_4

    :cond_4
    move-object/from16 v28, v8

    :goto_4
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    iget-object v1, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v1

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    int-to-float v8, v5

    move/from16 v25, v1

    add-int v1, v13, v18

    int-to-float v5, v1

    mul-float v5, v5, v25

    sub-float v5, v8, v5

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v12, v11}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    iget-object v6, v2, Landroidx/compose/foundation/pager/PagerState;->pinnedPages:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    iget-object v11, v2, Landroidx/compose/foundation/pager/PagerState;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    invoke-static {v4, v6, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/room/ObservedTableVersions;)Ljava/util/List;

    move-result-object v6

    iget-object v11, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageCount:Lkotlin/jvm/functions/Function0;

    invoke-interface {v11}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    iget-object v12, v2, Landroidx/compose/foundation/pager/PagerState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    if-ltz v3, :cond_5

    goto :goto_5

    :cond_5
    const-string v25, "negative beforeContentPadding"

    invoke-static/range {v25 .. v25}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_5
    if-ltz v19, :cond_6

    goto :goto_6

    :cond_6
    const-string v25, "negative afterContentPadding"

    invoke-static/range {v25 .. v25}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_6
    if-gez v1, :cond_7

    const/16 v29, 0x0

    :goto_7
    move-object/from16 v25, v12

    goto :goto_8

    :cond_7
    move/from16 v29, v1

    goto :goto_7

    :goto_8
    sget-object v12, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    move/from16 v30, v1

    iget v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$beyondViewportPageCount:I

    move/from16 v31, v1

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    move-object/from16 v32, v1

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    if-gtz v11, :cond_8

    neg-int v0, v3

    add-int v21, v9, v19

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v4

    sget-object v5, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;->INSTANCE:Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;

    add-int v3, v3, p2

    invoke-static {v3, v14, v15}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v3

    add-int v4, v4, p1

    invoke-static {v4, v14, v15}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v4

    invoke-interface {v10, v3, v4, v12, v5}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v24

    new-instance v16, Landroidx/compose/foundation/pager/PagerMeasureResult;

    move/from16 v20, v0

    move-object/from16 v25, v1

    move/from16 v17, v13

    move/from16 v22, v31

    move-object/from16 v23, v32

    invoke-direct/range {v16 .. v25}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/ui/layout/MeasureResult;Lkotlinx/coroutines/CoroutineScope;)V

    move-object/from16 v49, v2

    move-object v11, v10

    :goto_9
    move-object/from16 v0, v16

    goto/16 :goto_3f

    :cond_8
    move-object/from16 v35, v1

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    move-object/from16 v33, v2

    const/4 v2, 0x5

    invoke-static {v13, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    move-result-wide v1

    :goto_a
    if-lez v7, :cond_9

    if-lez v5, :cond_9

    add-int/lit8 v7, v7, -0x1

    sub-int v5, v5, v29

    goto :goto_a

    :cond_9
    mul-int/lit8 v5, v5, -0x1

    if-lt v7, v11, :cond_a

    add-int/lit8 v7, v11, -0x1

    const/4 v5, 0x0

    :cond_a
    move-object/from16 v24, v12

    new-instance v12, Lkotlin/collections/ArrayDeque;

    invoke-direct {v12}, Lkotlin/collections/ArrayDeque;-><init>()V

    move-object/from16 v34, v12

    neg-int v12, v3

    if-gez v18, :cond_b

    move/from16 v36, v18

    :goto_b
    move/from16 v37, v12

    goto :goto_c

    :cond_b
    const/16 v36, 0x0

    goto :goto_b

    :goto_c
    add-int v12, v37, v36

    add-int/2addr v5, v12

    move-object/from16 v36, v10

    const/16 v38, 0x0

    :goto_d
    iget-object v10, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    move/from16 v39, v12

    const/4 v12, 0x0

    if-gez v5, :cond_c

    if-lez v7, :cond_c

    add-int/lit8 v7, v7, -0x1

    move/from16 v40, v11

    invoke-interface/range {v36 .. v36}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v11

    move/from16 v17, p2

    move/from16 v43, v3

    move/from16 p2, v9

    move-wide/from16 v41, v14

    move/from16 v46, v18

    move-wide/from16 v44, v22

    move-object/from16 v48, v24

    move-object/from16 v47, v25

    move-object/from16 v9, v28

    move-object/from16 v49, v33

    move-object/from16 v0, v34

    const/4 v14, 0x0

    move v15, v5

    move/from16 v18, v8

    move-object/from16 v8, v27

    move-object v5, v4

    move-wide v3, v1

    move v2, v7

    move-object/from16 v1, v16

    move/from16 v16, p1

    move-object/from16 p1, v6

    move-wide/from16 v6, v20

    move/from16 v20, v29

    invoke-static/range {v1 .. v13}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v10

    move-wide/from16 v22, v3

    move-object v4, v5

    move-wide v5, v6

    move-object/from16 v21, v8

    move-object v8, v9

    move v12, v13

    invoke-virtual {v0, v14, v10}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v3, v10, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    move/from16 v9, v38

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v38

    add-int v3, v15, v20

    move/from16 v9, p2

    move v7, v2

    move-object/from16 v28, v8

    move/from16 p2, v17

    move/from16 v8, v18

    move-object/from16 v27, v21

    move/from16 v12, v39

    move/from16 v11, v40

    move-wide/from16 v14, v41

    move/from16 v18, v46

    move-object/from16 v0, p0

    move-wide/from16 v20, v5

    move-object/from16 v6, p1

    move v5, v3

    move/from16 p1, v16

    move/from16 v3, v43

    move-object/from16 v16, v1

    move-wide/from16 v1, v22

    move-wide/from16 v22, v44

    goto :goto_d

    :cond_c
    move/from16 v17, p2

    move/from16 v43, v3

    move/from16 p2, v9

    move/from16 v40, v11

    move v11, v12

    move v12, v13

    move-wide/from16 v41, v14

    move/from16 v46, v18

    move-wide/from16 v44, v22

    move-object/from16 v48, v24

    move-object/from16 v47, v25

    move-object/from16 v49, v33

    move-object/from16 v0, v34

    move/from16 v9, v38

    const/4 v14, 0x0

    move-wide/from16 v22, v1

    move v15, v5

    move/from16 v18, v8

    move-object/from16 v1, v16

    move-object/from16 v8, v28

    move/from16 v16, p1

    move-object/from16 p1, v6

    move-wide/from16 v5, v20

    move-object/from16 v21, v27

    move/from16 v20, v29

    move/from16 v13, v39

    if-ge v15, v13, :cond_d

    move v15, v13

    :cond_d
    sub-int/2addr v15, v13

    move-wide/from16 v2, v22

    add-int v23, p2, v19

    if-gez v23, :cond_e

    goto :goto_e

    :cond_e
    move/from16 v14, v23

    :goto_e
    neg-int v11, v15

    move-object/from16 v25, v1

    move-wide/from16 v27, v2

    move/from16 v26, v7

    move v1, v11

    const/4 v11, 0x0

    const/16 v24, 0x0

    :goto_f
    iget v2, v0, Lkotlin/collections/ArrayDeque;->size:I

    const/4 v3, 0x1

    if-ge v11, v2, :cond_10

    if-lt v1, v14, :cond_f

    invoke-virtual {v0, v11}, Lkotlin/collections/ArrayDeque;->removeAt(I)Ljava/lang/Object;

    move/from16 v24, v3

    goto :goto_f

    :cond_f
    add-int/lit8 v26, v26, 0x1

    add-int v1, v1, v20

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_10
    move/from16 v29, v30

    move-object/from16 v30, v32

    move/from16 v32, v24

    move/from16 v24, v15

    move v15, v1

    move/from16 v1, v26

    move/from16 v26, v7

    :goto_10
    move/from16 v2, v40

    if-ge v1, v2, :cond_15

    if-lt v15, v14, :cond_11

    if-lez v15, :cond_11

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_11
    move v7, v9

    move-object v9, v10

    goto :goto_12

    :cond_12
    move/from16 v13, p2

    move v11, v15

    move/from16 p2, v20

    :goto_11
    move/from16 v40, v2

    move/from16 p0, v3

    move v14, v9

    move-object v9, v10

    move-wide/from16 v2, v27

    move-object v15, v0

    move-object/from16 v0, v25

    goto/16 :goto_15

    :goto_12
    invoke-interface/range {v36 .. v36}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v10

    move/from16 v50, p2

    move/from16 v40, v2

    move/from16 p0, v3

    move/from16 v33, v14

    move/from16 p2, v20

    move-wide/from16 v2, v27

    const/4 v11, 0x0

    move v14, v7

    move/from16 v20, v15

    move-object/from16 v7, v21

    move-object v15, v0

    move-object/from16 v0, v25

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v10

    add-int/lit8 v7, v40, -0x1

    if-ne v1, v7, :cond_13

    move/from16 v22, v12

    goto :goto_13

    :cond_13
    move/from16 v22, p2

    :goto_13
    add-int v11, v20, v22

    if-gt v11, v13, :cond_14

    if-eq v1, v7, :cond_14

    add-int/lit8 v7, v1, 0x1

    sub-int v24, v24, p2

    move/from16 v32, p0

    move/from16 v26, v7

    goto :goto_14

    :cond_14
    iget v7, v10, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v15, v10}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move v14, v7

    :goto_14
    add-int/lit8 v1, v1, 0x1

    move/from16 v20, p2

    move-object/from16 v25, v0

    move-wide/from16 v27, v2

    move-object v10, v9

    move v9, v14

    move-object v0, v15

    move/from16 v14, v33

    move/from16 p2, v50

    move/from16 v3, p0

    move v15, v11

    goto :goto_10

    :cond_15
    move/from16 v50, p2

    move/from16 p2, v20

    move/from16 v20, v15

    move/from16 v11, v20

    move/from16 v13, v50

    goto :goto_11

    :goto_15
    if-ge v11, v13, :cond_18

    sub-int v7, v13, v11

    sub-int v24, v24, v7

    add-int v20, v11, v7

    move v7, v14

    move/from16 v14, v24

    :goto_16
    move/from16 v10, v43

    if-ge v14, v10, :cond_16

    if-lez v26, :cond_16

    add-int/lit8 v26, v26, -0x1

    move/from16 v43, v10

    invoke-interface/range {v36 .. v36}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v10

    move v11, v14

    move v14, v7

    move-object/from16 v7, v21

    move/from16 v21, v11

    move/from16 v22, v1

    move/from16 v1, v26

    const/4 v11, 0x0

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v10

    move-object/from16 v27, v7

    const/4 v7, 0x0

    invoke-virtual {v15, v7, v10}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v7, v10, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v14, v21, p2

    move/from16 v1, v22

    move-object/from16 v21, v27

    goto :goto_16

    :cond_16
    move/from16 v22, v1

    move/from16 v43, v10

    move-object/from16 v27, v21

    move/from16 v21, v14

    move v14, v7

    if-gez v21, :cond_17

    add-int v1, v20, v21

    move/from16 v20, v1

    const/4 v1, 0x0

    goto :goto_17

    :cond_17
    move/from16 v1, v21

    goto :goto_17

    :cond_18
    move/from16 v22, v1

    move-object/from16 v27, v21

    move/from16 v20, v11

    move/from16 v1, v24

    :goto_17
    if-ltz v1, :cond_19

    goto :goto_18

    :cond_19
    const-string v7, "invalid currentFirstPageScrollOffset"

    invoke-static {v7}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_18
    neg-int v7, v1

    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/pager/MeasuredPage;

    if-gtz v43, :cond_1b

    if-gez v46, :cond_1a

    goto :goto_19

    :cond_1a
    move/from16 v11, p2

    move/from16 v28, v1

    move-object/from16 v25, v10

    goto :goto_1b

    :cond_1b
    :goto_19
    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v11

    move-object/from16 v21, v10

    const/4 v10, 0x0

    :goto_1a
    if-ge v10, v11, :cond_1c

    if-eqz v1, :cond_1c

    move/from16 v24, v11

    move/from16 v11, p2

    move/from16 p2, v1

    if-gt v11, v1, :cond_1d

    invoke-static {v15}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    if-eq v10, v1, :cond_1d

    sub-int v1, p2, v11

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v15, v10}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/compose/foundation/pager/MeasuredPage;

    move/from16 p2, v11

    move/from16 v11, v24

    goto :goto_1a

    :cond_1c
    move/from16 v11, p2

    move/from16 p2, v1

    :cond_1d
    move/from16 v28, p2

    move-object/from16 v25, v21

    :goto_1b
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    sub-int v1, v26, v31

    const/4 v10, 0x0

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v10, v26, -0x1

    if-gt v1, v10, :cond_1f

    const/16 v21, 0x0

    :goto_1c
    if-nez v21, :cond_1e

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    :cond_1e
    move-object/from16 v51, v21

    move/from16 v21, v7

    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    move/from16 p2, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    move/from16 v26, v11

    const/4 v11, 0x0

    move/from16 v24, v13

    move/from16 v13, p2

    move/from16 p2, v24

    move/from16 v24, v10

    move-object v10, v1

    move/from16 v1, v24

    move/from16 v24, v14

    move-object/from16 v34, v15

    move/from16 v15, v20

    move-object/from16 v14, v25

    move/from16 v52, v26

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v7

    move-object v10, v9

    move-object/from16 v9, v51

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v1, v13, :cond_20

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v25, v14

    move/from16 v20, v15

    move/from16 v7, v21

    move/from16 v14, v24

    move-object/from16 v15, v34

    move/from16 v11, v52

    move-object/from16 v21, v9

    move-object v9, v10

    move v10, v1

    move v1, v13

    move/from16 v13, p2

    goto :goto_1c

    :cond_1f
    move/from16 v21, v7

    move-object v10, v9

    move/from16 v52, v11

    move/from16 p2, v13

    move/from16 v24, v14

    move-object/from16 v34, v15

    move/from16 v15, v20

    move-object/from16 v14, v25

    move v13, v1

    const/4 v9, 0x0

    :cond_20
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v1, :cond_23

    move-object/from16 v11, p1

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Number;

    move/from16 p1, v1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ge v1, v13, :cond_22

    if-nez v9, :cond_21

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_21
    move/from16 v20, v7

    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    move/from16 v25, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    move-object/from16 v26, v11

    const/4 v11, 0x0

    move-object/from16 v33, v26

    move/from16 v26, v13

    move-object v13, v9

    move-object v9, v10

    move-object v10, v1

    move/from16 v1, v25

    move/from16 v25, v20

    move/from16 v20, p1

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v1

    move-object v10, v9

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v9, v13

    goto :goto_1e

    :cond_22
    move/from16 v20, p1

    move/from16 v25, v7

    move-object/from16 v33, v11

    move/from16 v26, v13

    :goto_1e
    add-int/lit8 v7, v25, 0x1

    move/from16 v1, v20

    move/from16 v13, v26

    move-object/from16 p1, v33

    goto :goto_1d

    :cond_23
    move-object/from16 v33, p1

    sget-object v13, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-nez v9, :cond_24

    move-object v1, v13

    goto :goto_1f

    :cond_24
    move-object v1, v9

    :goto_1f
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    move/from16 v11, v24

    const/4 v9, 0x0

    :goto_20
    if-ge v9, v7, :cond_25

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 p1, v1

    move-object/from16 v1, v20

    check-cast v1, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v1, v1, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    goto :goto_20

    :cond_25
    move-object/from16 p1, v1

    invoke-virtual/range {v34 .. v34}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v1, v1, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    add-int v7, v1, v31

    add-int/lit8 v9, v40, -0x1

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v1, v1, 0x1

    if-gt v1, v7, :cond_27

    const/4 v9, 0x0

    :goto_21
    if-nez v9, :cond_26

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_26
    move/from16 v20, v7

    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    move/from16 v24, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    move/from16 v25, v11

    const/4 v11, 0x0

    move-object/from16 v53, v10

    move-object v10, v1

    move/from16 v1, v24

    move/from16 v24, v15

    move-object v15, v9

    move-object/from16 v9, v53

    move/from16 v53, v20

    move-object/from16 v20, v13

    move/from16 v13, v53

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v7

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v1, v13, :cond_28

    add-int/lit8 v1, v1, 0x1

    move-object v10, v9

    move v7, v13

    move-object v9, v15

    move-object/from16 v13, v20

    move/from16 v15, v24

    move/from16 v11, v25

    goto :goto_21

    :cond_27
    move-object v9, v10

    move/from16 v25, v11

    move-object/from16 v20, v13

    move/from16 v24, v15

    move v13, v7

    const/4 v15, 0x0

    :cond_28
    invoke-interface/range {v33 .. v33}, Ljava/util/Collection;->size()I

    move-result v1

    move-object v7, v15

    const/4 v15, 0x0

    :goto_22
    if-ge v15, v1, :cond_2c

    move-object/from16 v10, v33

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    move/from16 v26, v1

    add-int/lit8 v1, v13, 0x1

    if-gt v1, v11, :cond_2b

    move/from16 v1, v40

    if-ge v11, v1, :cond_2a

    if-nez v7, :cond_29

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_29
    sget-object v33, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    move/from16 v40, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    move-object/from16 v39, v10

    move-object v10, v1

    move v1, v11

    const/4 v11, 0x0

    move/from16 v53, v15

    move-object v15, v7

    move-object/from16 v7, v33

    move-object/from16 v33, v39

    move/from16 v39, v26

    move/from16 v26, v13

    move/from16 v13, v40

    move/from16 v40, v53

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v7, v15

    goto :goto_24

    :cond_2a
    move/from16 v39, v26

    move/from16 v26, v13

    move v13, v1

    :goto_23
    move-object/from16 v33, v10

    move/from16 v40, v15

    goto :goto_24

    :cond_2b
    move/from16 v39, v26

    move/from16 v26, v13

    move/from16 v13, v40

    goto :goto_23

    :goto_24
    add-int/lit8 v15, v40, 0x1

    move/from16 v40, v13

    move/from16 v13, v26

    move/from16 v1, v39

    goto :goto_22

    :cond_2c
    move/from16 v13, v40

    if-nez v7, :cond_2d

    move-object/from16 v7, v20

    :cond_2d
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v1

    move/from16 v11, v25

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v1, :cond_2e

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v2, v2, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_2e
    invoke-virtual/range {v34 .. v34}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    move/from16 v6, p0

    goto :goto_26

    :cond_2f
    const/4 v6, 0x0

    :goto_26
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    move/from16 v15, v24

    move-wide/from16 v1, v44

    invoke-static {v15, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v3

    invoke-static {v11, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v8

    move/from16 v9, p2

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v15, v1, :cond_30

    move/from16 v4, p0

    goto :goto_27

    :cond_30
    const/4 v4, 0x0

    :goto_27
    if-eqz v4, :cond_32

    if-nez v21, :cond_31

    goto :goto_28

    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "non-zero pagesScrollOffset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    goto :goto_29

    :cond_32
    :goto_28
    move/from16 v2, v21

    :goto_29
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual/range {v34 .. v34}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v4, :cond_39

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_2a

    :cond_33
    const-string v1, "No extra pages"

    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_2a
    invoke-virtual/range {v34 .. v34}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v1

    move v2, v3

    new-array v3, v1, [I

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v1, :cond_34

    aput v12, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_34
    new-array v5, v1, [I

    move-object/from16 v11, v36

    move/from16 v1, v46

    invoke-interface {v11, v1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v4

    move-object/from16 v25, v0

    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move/from16 p2, v6

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v4, v1, v6}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v1, v25

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    move v0, v2

    invoke-static {v5}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v1

    iget v2, v1, Lkotlin/ranges/IntProgression;->first:I

    iget v3, v1, Lkotlin/ranges/IntProgression;->last:I

    iget v1, v1, Lkotlin/ranges/IntProgression;->step:I

    if-lez v1, :cond_35

    if-le v2, v3, :cond_36

    :cond_35
    if-gez v1, :cond_38

    if-gt v3, v2, :cond_38

    :cond_36
    :goto_2c
    aget v4, v5, v2

    move-object/from16 v6, v34

    invoke-virtual {v6, v2}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v24, v1

    move-object/from16 v1, v21

    check-cast v1, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v1, v4, v0, v8}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v2, v3, :cond_37

    add-int v2, v2, v24

    move-object/from16 v34, v6

    move/from16 v1, v24

    const/4 v6, 0x0

    goto :goto_2c

    :cond_37
    :goto_2d
    move-object/from16 v5, p1

    goto :goto_31

    :cond_38
    move-object/from16 v6, v34

    goto :goto_2d

    :cond_39
    move v0, v3

    move/from16 p2, v6

    move-object/from16 v6, v34

    move-object/from16 v11, v36

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v1

    move v3, v2

    const/4 v4, 0x0

    :goto_2e
    if-ge v4, v1, :cond_3a

    move-object/from16 v5, p1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 p1, v1

    move-object/from16 v1, v21

    check-cast v1, Landroidx/compose/foundation/pager/MeasuredPage;

    sub-int v3, v3, v29

    invoke-virtual {v1, v3, v0, v8}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p1

    move-object/from16 p1, v5

    goto :goto_2e

    :cond_3a
    move-object/from16 v5, p1

    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v1

    const/4 v4, 0x0

    :goto_2f
    if-ge v4, v1, :cond_3b

    invoke-virtual {v6, v4}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v3, v2, v0, v8}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v2, v2, v29

    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :cond_3b
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v1, :cond_3c

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v3, v2, v0, v8}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v2, v2, v29

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_3c
    :goto_31
    if-eqz p2, :cond_3e

    move-object v1, v10

    :cond_3d
    move/from16 v21, v0

    goto :goto_33

    :cond_3e
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_32
    if-ge v4, v2, :cond_3d

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move/from16 v21, v0

    move-object v0, v3

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    move/from16 p1, v2

    iget v2, v0, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v24

    move/from16 v25, v4

    move-object/from16 v4, v24

    check-cast v4, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v4, v4, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    if-lt v2, v4, :cond_3f

    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v2, v2, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    if-gt v0, v2, :cond_3f

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 v4, v25, 0x1

    move/from16 v2, p1

    move/from16 v0, v21

    goto :goto_32

    :goto_33
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    move-object/from16 v33, v20

    goto :goto_35

    :cond_40
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_34
    if-ge v4, v2, :cond_42

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v5, v5, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v24

    move/from16 p1, v2

    move-object/from16 v2, v24

    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v2, v2, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    if-ge v5, v2, :cond_41

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, p1

    goto :goto_34

    :cond_42
    move-object/from16 v33, v0

    :goto_35
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    move-object/from16 v34, v20

    goto :goto_37

    :cond_43
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_36
    if-ge v4, v2, :cond_45

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v5, v5, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v7, v7, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    if-le v5, v7, :cond_44

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_45
    move-object/from16 v34, v0

    :goto_37
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    move/from16 v4, p0

    goto :goto_39

    :cond_46
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v2, v2, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v2, v2

    sub-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    move/from16 v4, p0

    if-gt v4, v3, :cond_48

    move v5, v4

    :goto_38
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v7, v7, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    int-to-float v7, v7

    sub-float v7, v7, v18

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    neg-float v7, v7

    invoke-static {v2, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v20

    if-gez v20, :cond_47

    move-object v0, v6

    move v2, v7

    :cond_47
    if-eq v5, v3, :cond_48

    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :cond_48
    :goto_39
    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_49

    iget v2, v0, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    :goto_3a
    move/from16 v3, v52

    goto :goto_3b

    :cond_49
    const/4 v2, 0x0

    goto :goto_3a

    :goto_3b
    if-nez v3, :cond_4a

    const/4 v2, 0x0

    goto :goto_3c

    :cond_4a
    const/16 v38, 0x0

    rsub-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, -0x41000000    # -0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v2, v3, v5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    :goto_3c
    new-instance v3, Landroidx/compose/runtime/Latch$await$2$2;

    const/16 v5, 0x12

    move-object/from16 v6, v47

    invoke-direct {v3, v5, v6, v10}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int v5, v21, v17

    move-wide/from16 v6, v41

    invoke-static {v5, v6, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v5

    add-int v8, v8, v16

    invoke-static {v8, v6, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v6

    move-object/from16 v7, v48

    invoke-interface {v11, v5, v6, v7, v3}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v3

    move/from16 v5, v22

    if-lt v5, v13, :cond_4c

    if-le v15, v9, :cond_4b

    goto :goto_3d

    :cond_4b
    const/16 v29, 0x0

    goto :goto_3e

    :cond_4c
    :goto_3d
    move/from16 v29, v4

    :goto_3e
    new-instance v16, Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-object/from16 v26, v0

    move-object/from16 v17, v1

    move/from16 v18, v12

    move-object/from16 v25, v14

    move/from16 v20, v19

    move-object/from16 v21, v27

    move/from16 v24, v31

    move/from16 v22, v37

    move/from16 v19, v46

    move/from16 v27, v2

    move-object/from16 v31, v3

    invoke-direct/range {v16 .. v35}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;)V

    goto/16 :goto_9

    :goto_3f
    invoke-interface {v11}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v1

    move-object/from16 v2, v49

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v1, v5}, Landroidx/compose/foundation/pager/PagerState;->applyMeasureResult$foundation_release(Landroidx/compose/foundation/pager/PagerMeasureResult;ZZ)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v6, v12, v11}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0
.end method
