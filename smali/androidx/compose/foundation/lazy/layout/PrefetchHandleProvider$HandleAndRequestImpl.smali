.class public final Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;


# instance fields
.field public availableTimeNanos:J

.field public final constraints:J

.field public elapsedTimeNanos:J

.field public hasResolvedNestedPrefetches:Z

.field public final index:I

.field public isCanceled:Z

.field public isMeasured:Z

.field public isUrgent:Z

.field public nestedPrefetchController:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

.field public precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

.field public final prefetchMetrics:Landroidx/media3/extractor/text/pgs/PgsParser;

.field public startTime:J

.field public final synthetic this$0:Landroidx/core/view/MenuHostHelper;


# direct methods
.method public constructor <init>(Landroidx/core/view/MenuHostHelper;IJLandroidx/media3/extractor/text/pgs/PgsParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->this$0:Landroidx/core/view/MenuHostHelper;

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->index:I

    iput-wide p3, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->constraints:J

    iput-object p5, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->prefetchMetrics:Landroidx/media3/extractor/text/pgs/PgsParser;

    sget p1, Lkotlin/time/MonotonicTimeSource;->$r8$clinit:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sget-wide p3, Lkotlin/time/MonotonicTimeSource;->zero:J

    sub-long/2addr p1, p3

    iput-wide p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->startTime:J

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    :cond_1
    return-void
.end method

.method public final execute(Landroidx/media3/extractor/PositionHolder;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Landroidx/media3/extractor/PositionHolder;->position:J

    iget-object v4, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->this$0:Landroidx/core/view/MenuHostHelper;

    iget-object v5, v4, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    iget-object v5, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->itemProvider:Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;

    invoke-virtual {v5}, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    iget-boolean v6, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    if-nez v6, :cond_18

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    move-result v6

    iget v8, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->index:I

    if-ltz v8, :cond_18

    if-ge v8, v6, :cond_18

    invoke-interface {v5, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getContentType(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v9, v2, v9

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->availableTimeNanos:J

    sget v9, Lkotlin/time/MonotonicTimeSource;->$r8$clinit:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sget-wide v13, Lkotlin/time/MonotonicTimeSource;->zero:J

    sub-long/2addr v9, v13

    iput-wide v9, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->startTime:J

    iput-wide v11, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->elapsedTimeNanos:J

    iget-object v9, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    const/4 v13, 0x3

    iget-object v14, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->prefetchMetrics:Landroidx/media3/extractor/text/pgs/PgsParser;

    const/4 v15, 0x1

    if-eqz v9, :cond_0

    move-wide/from16 v19, v2

    move-wide/from16 v16, v11

    goto/16 :goto_3

    :cond_0
    move-wide/from16 v16, v11

    iget-wide v11, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->availableTimeNanos:J

    invoke-virtual {v14, v6}, Landroidx/media3/extractor/text/pgs/PgsParser;->getAverage(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/Averages;

    move-result-object v9

    move-wide/from16 v18, v11

    iget-wide v10, v9, Landroidx/compose/foundation/lazy/layout/Averages;->compositionTimeNanos:J

    iget-boolean v9, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isUrgent:Z

    if-eqz v9, :cond_1

    cmp-long v9, v18, v16

    if-gtz v9, :cond_2

    :cond_1
    cmp-long v9, v10, v18

    if-gez v9, :cond_19

    :cond_2
    const-string v9, "compose:lazy:prefetch:compose"

    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v9, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    const-string v9, "Request was already composed!"

    invoke-static {v9}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v5, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v9, v4, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    invoke-virtual {v9, v8, v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->getContent(ILjava/lang/Object;Ljava/lang/Object;)Lkotlin/jvm/functions/Function2;

    move-result-object v8

    iget-object v4, v4, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    invoke-virtual {v4}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getState()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    move-result-object v4

    invoke-virtual {v4, v5, v8}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    move-result-object v4

    iput-object v4, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->updateElapsedAndAvailableTime()V

    iget-wide v4, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->elapsedTimeNanos:J

    iget-object v8, v14, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/foundation/lazy/layout/Averages;

    iget-wide v9, v8, Landroidx/compose/foundation/lazy/layout/Averages;->compositionTimeNanos:J

    cmp-long v11, v9, v16

    if-nez v11, :cond_4

    move-wide/from16 v19, v2

    move-wide v2, v4

    goto :goto_1

    :cond_4
    move-object/from16 v18, v8

    const/4 v11, 0x4

    int-to-long v7, v11

    div-long/2addr v9, v7

    move-wide/from16 v19, v2

    int-to-long v2, v13

    mul-long/2addr v9, v2

    div-long v2, v4, v7

    add-long/2addr v2, v9

    move-object/from16 v8, v18

    :goto_1
    iput-wide v2, v8, Landroidx/compose/foundation/lazy/layout/Averages;->compositionTimeNanos:J

    invoke-virtual {v14, v6}, Landroidx/media3/extractor/text/pgs/PgsParser;->getAverage(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/Averages;

    move-result-object v2

    iget-wide v7, v2, Landroidx/compose/foundation/lazy/layout/Averages;->compositionTimeNanos:J

    cmp-long v3, v7, v16

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v11, 0x4

    int-to-long v9, v11

    div-long/2addr v7, v9

    move-wide/from16 v21, v4

    int-to-long v3, v13

    mul-long/2addr v7, v3

    div-long v4, v21, v9

    add-long/2addr v4, v7

    :goto_2
    iput-wide v4, v2, Landroidx/compose/foundation/lazy/layout/Averages;->compositionTimeNanos:J

    :goto_3
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isUrgent:Z

    if-nez v2, :cond_10

    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->hasResolvedNestedPrefetches:Z

    if-nez v2, :cond_7

    iget-wide v2, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->availableTimeNanos:J

    cmp-long v2, v2, v16

    if-lez v2, :cond_6

    const-string v2, "compose:lazy:prefetch:resolve-nested"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->resolveNestedPrefetchStates()Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->nestedPrefetchController:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    iput-boolean v15, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->hasResolvedNestedPrefetches:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_6
    return v15

    :cond_7
    :goto_4
    iget-object v2, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->nestedPrefetchController:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    if-eqz v2, :cond_f

    iget-object v3, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:Ljava/lang/Object;

    check-cast v3, [Ljava/util/List;

    iget v4, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    iget-object v5, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lt v4, v7, :cond_8

    goto/16 :goto_7

    :cond_8
    iget-object v4, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    iget-boolean v4, v4, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    if-eqz v4, :cond_9

    const-string v4, "Should not execute nested prefetch on canceled request"

    invoke-static {v4}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_9
    const-string v4, "compose:lazy:prefetch:nested"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_5
    :try_start_2
    iget v4, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_e

    iget v4, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    aget-object v4, v3, v4

    if-nez v4, :cond_b

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long v7, v19, v7

    move-wide/from16 v9, v16

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    cmp-long v4, v7, v9

    if-gtz v4, :cond_a

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v15

    :cond_a
    :try_start_3
    iget v4, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iget-object v8, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->onNestedPrefetch:Lkotlin/jvm/internal/Lambda;

    new-instance v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;

    invoke-direct {v9, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->_requests:Ljava/util/ArrayList;

    aput-object v7, v3, v4

    :cond_b
    iget v4, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    aget-object v4, v3, v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_6
    iget v7, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_d

    iget v7, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    invoke-virtual {v7, v1}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->execute(Landroidx/media3/extractor/PositionHolder;)Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_c

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v15

    :cond_c
    :try_start_4
    iget v7, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    add-int/2addr v7, v15

    iput v7, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    goto :goto_6

    :cond_d
    const/4 v12, 0x0

    iput v12, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    iget v4, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    add-int/2addr v4, v15

    iput v4, v2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/16 v16, 0x0

    goto :goto_5

    :cond_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_7

    :catchall_1
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_f
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->updateElapsedAndAvailableTime()V

    :cond_10
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isMeasured:Z

    if-nez v1, :cond_18

    const-wide/16 v1, 0x3

    iget-wide v3, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->constraints:J

    and-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit8 v2, v1, 0x1

    shl-int/2addr v2, v15

    and-int/lit8 v1, v1, 0x2

    shr-int/2addr v1, v15

    mul-int/2addr v1, v13

    add-int/2addr v1, v2

    const/16 v2, 0x21

    shr-long v7, v3, v2

    long-to-int v2, v7

    add-int/lit8 v5, v1, 0xd

    shl-int v5, v15, v5

    sub-int/2addr v5, v15

    and-int/2addr v2, v5

    sub-int/2addr v2, v15

    add-int/lit8 v5, v1, 0x2e

    shr-long v7, v3, v5

    long-to-int v5, v7

    rsub-int/lit8 v1, v1, 0x12

    shl-int v1, v15, v1

    sub-int/2addr v1, v15

    and-int/2addr v1, v5

    sub-int/2addr v1, v15

    if-nez v2, :cond_11

    move v2, v15

    goto :goto_8

    :cond_11
    const/4 v2, 0x0

    :goto_8
    if-nez v1, :cond_12

    move v1, v15

    goto :goto_9

    :cond_12
    const/4 v1, 0x0

    :goto_9
    or-int/2addr v1, v2

    if-nez v1, :cond_18

    iget-wide v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->availableTimeNanos:J

    invoke-virtual {v14, v6}, Landroidx/media3/extractor/text/pgs/PgsParser;->getAverage(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/Averages;

    move-result-object v5

    iget-wide v7, v5, Landroidx/compose/foundation/lazy/layout/Averages;->measureTimeNanos:J

    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isUrgent:Z

    if-eqz v5, :cond_13

    const-wide/16 v16, 0x0

    cmp-long v5, v1, v16

    if-gtz v5, :cond_14

    :cond_13
    cmp-long v1, v7, v1

    if-gez v1, :cond_17

    :cond_14
    const-string v1, "compose:lazy:prefetch:measure"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {v0, v3, v4}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->performMeasure-BRTryo0(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->updateElapsedAndAvailableTime()V

    iget-wide v0, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->elapsedTimeNanos:J

    iget-object v2, v14, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/lazy/layout/Averages;

    iget-wide v3, v2, Landroidx/compose/foundation/lazy/layout/Averages;->measureTimeNanos:J

    const-wide/16 v16, 0x0

    cmp-long v5, v3, v16

    if-nez v5, :cond_15

    move-wide v7, v0

    goto :goto_a

    :cond_15
    const/4 v11, 0x4

    int-to-long v7, v11

    div-long/2addr v3, v7

    int-to-long v9, v13

    mul-long/2addr v3, v9

    div-long v7, v0, v7

    add-long/2addr v7, v3

    :goto_a
    iput-wide v7, v2, Landroidx/compose/foundation/lazy/layout/Averages;->measureTimeNanos:J

    invoke-virtual {v14, v6}, Landroidx/media3/extractor/text/pgs/PgsParser;->getAverage(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/Averages;

    move-result-object v2

    iget-wide v3, v2, Landroidx/compose/foundation/lazy/layout/Averages;->measureTimeNanos:J

    const-wide/16 v16, 0x0

    cmp-long v5, v3, v16

    if-nez v5, :cond_16

    goto :goto_b

    :cond_16
    const/4 v11, 0x4

    int-to-long v5, v11

    div-long/2addr v3, v5

    int-to-long v7, v13

    mul-long/2addr v3, v7

    div-long/2addr v0, v5

    add-long/2addr v0, v3

    :goto_b
    iput-wide v0, v2, Landroidx/compose/foundation/lazy/layout/Averages;->measureTimeNanos:J

    const/4 v12, 0x0

    return v12

    :catchall_2
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_17
    return v15

    :cond_18
    const/4 v12, 0x0

    goto :goto_c

    :catchall_3
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_19
    return v15

    :goto_c
    return v12
.end method

.method public final markAsUrgent()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isUrgent:Z

    return-void
.end method

.method public final performMeasure-BRTryo0(J)V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    if-eqz v0, :cond_0

    const-string v0, "Callers should check whether the request is still valid before calling performMeasure()"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isMeasured:Z

    if-eqz v0, :cond_1

    const-string v0, "Request was already measured!"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isMeasured:Z

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1, p1, p2}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->premeasure-0kLqBqw(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const-string/jumbo p0, "performComposition() must be called before performMeasure()"

    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final resolveNestedPrefetchStates()Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    if-eqz v0, :cond_2

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroidx/compose/ui/platform/AndroidComposeView$focusSearch$searchResult$1;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Landroidx/compose/ui/platform/AndroidComposeView$focusSearch$searchResult$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    invoke-interface {v0, v2}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->traverseDescendants(Landroidx/compose/ui/platform/AndroidComposeView$focusSearch$searchResult$1;)V

    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:Ljava/lang/Object;

    iput-object v0, v1, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/util/List;

    iput-object p0, v1, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "NestedPrefetchController shouldn\'t be created with no states"

    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    const-string p0, "Should precompose before resolving nested prefetch states"

    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HandleAndRequestImpl { index = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", constraints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->constraints:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isComposed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMeasured = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isMeasured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCanceled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateElapsedAndAvailableTime()V
    .locals 16

    move-object/from16 v0, p0

    sget v1, Lkotlin/time/MonotonicTimeSource;->$r8$clinit:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-wide v3, Lkotlin/time/MonotonicTimeSource;->zero:J

    sub-long/2addr v1, v3

    iget-wide v3, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->startTime:J

    sget-object v5, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    const-string/jumbo v6, "unit"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x1

    sub-long v8, v3, v6

    or-long/2addr v8, v6

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v8, v8, v10

    const-wide/16 v12, 0x0

    if-nez v8, :cond_2

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    sget v3, Lkotlin/time/Duration;->$r8$clinit:I

    goto :goto_3

    :cond_0
    cmp-long v3, v3, v12

    if-gez v3, :cond_1

    sget-wide v3, Lkotlin/time/Duration;->NEG_INFINITE:J

    goto :goto_0

    :cond_1
    sget-wide v3, Lkotlin/time/Duration;->INFINITE:J

    :goto_0
    invoke-static {v3, v4}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v12

    goto :goto_3

    :cond_2
    sub-long v8, v1, v6

    or-long/2addr v8, v6

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    cmp-long v3, v1, v12

    if-gez v3, :cond_3

    sget-wide v3, Lkotlin/time/Duration;->NEG_INFINITE:J

    :goto_1
    move-wide v12, v3

    goto :goto_3

    :cond_3
    sget-wide v3, Lkotlin/time/Duration;->INFINITE:J

    goto :goto_1

    :cond_4
    sub-long v8, v1, v3

    xor-long v14, v8, v1

    xor-long v10, v8, v3

    not-long v10, v10

    and-long/2addr v10, v14

    cmp-long v10, v10, v12

    if-gez v10, :cond_7

    sget-object v10, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-virtual {v5, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v11

    if-gez v11, :cond_5

    invoke-static {v6, v7, v10, v5}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v6

    div-long v8, v1, v6

    div-long v11, v3, v6

    sub-long/2addr v8, v11

    rem-long v11, v1, v6

    rem-long/2addr v3, v6

    sub-long/2addr v11, v3

    sget v3, Lkotlin/time/Duration;->$r8$clinit:I

    invoke-static {v8, v9, v10}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v3

    invoke-static {v11, v12, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v12

    goto :goto_3

    :cond_5
    cmp-long v3, v8, v12

    if-gez v3, :cond_6

    sget-wide v3, Lkotlin/time/Duration;->NEG_INFINITE:J

    goto :goto_2

    :cond_6
    sget-wide v3, Lkotlin/time/Duration;->INFINITE:J

    :goto_2
    invoke-static {v3, v4}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v12

    goto :goto_3

    :cond_7
    invoke-static {v8, v9, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v12

    :goto_3
    const/4 v3, 0x1

    shr-long v4, v12, v3

    sget v6, Lkotlin/time/Duration;->$r8$clinit:I

    long-to-int v6, v12

    and-int/2addr v3, v6

    if-nez v3, :cond_8

    move-wide v10, v4

    goto :goto_4

    :cond_8
    const-wide v6, 0x8637bd05af6L

    cmp-long v3, v4, v6

    if-lez v3, :cond_9

    const-wide v10, 0x7fffffffffffffffL

    goto :goto_4

    :cond_9
    const-wide v6, -0x8637bd05af6L

    cmp-long v3, v4, v6

    if-gez v3, :cond_a

    const-wide/high16 v10, -0x8000000000000000L

    goto :goto_4

    :cond_a
    const v3, 0xf4240

    int-to-long v6, v3

    mul-long v10, v4, v6

    :goto_4
    iput-wide v10, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->elapsedTimeNanos:J

    iget-wide v3, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->availableTimeNanos:J

    sub-long/2addr v3, v10

    iput-wide v3, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->availableTimeNanos:J

    iput-wide v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->startTime:J

    return-void
.end method
