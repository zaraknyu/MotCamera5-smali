.class public final Landroidx/compose/foundation/pager/PagerState$prefetchState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/pager/PagerState$prefetchState$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState$prefetchState$1;->this$0:Landroidx/compose/foundation/pager/PagerState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Landroidx/compose/foundation/pager/PagerState$prefetchState$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState$prefetchState$1;->this$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerScrollPositionKt;->currentAbsoluteScrollOffset(Landroidx/compose/foundation/pager/PagerState;)J

    move-result-wide v0

    iget v2, p0, Landroidx/compose/foundation/pager/PagerState;->accumulator:F

    add-float/2addr v2, p1

    float-to-double v3, v2

    invoke-static {v3, v4}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v3

    long-to-float v5, v3

    sub-float/2addr v2, v5

    iput v2, p0, Landroidx/compose/foundation/pager/PagerState;->accumulator:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v5, 0x38d1b717    # 1.0E-4f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    add-long v5, v0, v3

    iget-wide v7, p0, Landroidx/compose/foundation/pager/PagerState;->minScrollOffset:J

    iget-wide v9, p0, Landroidx/compose/foundation/pager/PagerState;->maxScrollOffset:J

    invoke-static/range {v5 .. v10}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v2

    cmp-long v4, v5, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    sub-long/2addr v2, v0

    long-to-float v0, v2

    iput v0, p0, Landroidx/compose/foundation/pager/PagerState;->previousPassDelta:F

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->isLastScrollForwardState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    cmpl-float v8, v0, v7

    if-lez v8, :cond_2

    move v8, v6

    goto :goto_1

    :cond_2
    move v8, v5

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->isLastScrollBackwardState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    cmpg-float v0, v0, v7

    if-gez v0, :cond_3

    move v5, v6

    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    long-to-int v1, v2

    neg-int v5, v1

    invoke-virtual {v0, v5}, Landroidx/compose/foundation/pager/PagerMeasureResult;->copyWithScrollDeltaWithoutRemeasure(I)Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v8, p0, Landroidx/compose/foundation/pager/PagerState;->approachLayoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

    if-eqz v8, :cond_6

    invoke-virtual {v8, v5}, Landroidx/compose/foundation/pager/PagerMeasureResult;->copyWithScrollDeltaWithoutRemeasure(I)Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v5

    if-eqz v5, :cond_5

    iput-object v5, p0, Landroidx/compose/foundation/pager/PagerState;->approachLayoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    iget-boolean v1, p0, Landroidx/compose/foundation/pager/PagerState;->hasLookaheadOccurred:Z

    invoke-virtual {p0, v0, v1, v6}, Landroidx/compose/foundation/pager/PagerState;->applyMeasureResult$foundation_release(Landroidx/compose/foundation/pager/PagerMeasureResult;ZZ)V

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object v5, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/foundation/pager/PagerState;

    iget-object v0, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation_release()I

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    int-to-float v1, v1

    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation_release()I

    move-result v5

    int-to-float v5, v5

    div-float v7, v1, v5

    :goto_3
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v1

    add-float/2addr v1, v7

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->remeasurement$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    :cond_9
    :goto_4
    if-eqz v4, :cond_a

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_5

    :cond_a
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p1

    :goto_6
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState$prefetchState$1;->this$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    :goto_7
    move-object v2, v0

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    :goto_8
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    :try_start_0
    iget p0, p0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->schedulePrefetch(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
