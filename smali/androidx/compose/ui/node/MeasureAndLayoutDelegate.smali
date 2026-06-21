.class public final Landroidx/compose/ui/node/MeasureAndLayoutDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public duringFullMeasureLayoutPass:Z

.field public duringMeasureLayout:Z

.field public final measureIteration:J

.field public final onLayoutCompletedListeners:Landroidx/compose/runtime/collection/MutableVector;

.field public final onPositionedDispatcher:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public final postponedMeasureRequests:Landroidx/compose/runtime/collection/MutableVector;

.field public final relayoutNodes:Lcom/motorola/camera/CameraKpi;

.field public final root:Landroidx/compose/ui/node/LayoutNode;

.field public rootConstraints:Landroidx/compose/ui/unit/Constraints;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    new-instance p1, Lcom/motorola/camera/CameraKpi;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/motorola/camera/CameraKpi;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Lcom/motorola/camera/CameraKpi;

    new-instance p1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {p1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/sqlite/db/SimpleSQLiteQuery;

    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v1, v0, [Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p1, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onLayoutCompletedListeners:Landroidx/compose/runtime/collection/MutableVector;

    const-wide/16 v1, 0x1

    iput-wide v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->measureIteration:J

    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v0, v0, [Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;

    invoke-direct {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->postponedMeasureRequests:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method

.method public static doLookaheadRemeasure-sdFAvZA(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v3, p1, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/node/LookaheadPassDelegate;->remeasure-BRTryo0(J)Z

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v2

    goto :goto_1

    :cond_2
    iget-object p1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz p1, :cond_3

    iget-object v1, p1, Landroidx/compose/ui/node/LookaheadPassDelegate;->lookaheadConstraints:Landroidx/compose/ui/unit/Constraints;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v0, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/node/LookaheadPassDelegate;->remeasure-BRTryo0(J)Z

    move-result p1

    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    const/4 v3, 0x3

    if-nez v1, :cond_4

    invoke-static {v0, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    return p1

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasuredByParentInLookahead$ui_release()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v1, v4, :cond_5

    invoke-static {v0, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    return p1

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasuredByParentInLookahead$ui_release()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object p0

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne p0, v1, :cond_6

    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRelayout$ui_release(Z)V

    :cond_6
    return p1
.end method

.method public static doRemeasure-sdFAvZA(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreeIntrinsicsUsage$ui_release()V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-wide v1, p1, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/node/MeasurePassDelegate;->remeasure-BRTryo0(J)Z

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-boolean v0, p1, Landroidx/compose/ui/node/MeasurePassDelegate;->measuredOnce:Z

    if-eqz v0, :cond_2

    iget-wide v0, p1, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    new-instance p1, Landroidx/compose/ui/unit/Constraints;

    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreeIntrinsicsUsage$ui_release()V

    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-wide v1, p1, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/node/MeasurePassDelegate;->remeasure-BRTryo0(J)Z

    move-result p1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    const/4 v2, 0x0

    if-ne p0, v1, :cond_5

    const/4 p0, 0x3

    invoke-static {v0, v2, p0}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    return p1

    :cond_5
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne p0, v1, :cond_6

    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release(Z)V

    :cond_6
    return p1
.end method

.method public static getCanAffectPlacedParent(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->getMeasureAffectsParent(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Measuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v0, v1, :cond_4

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getMeasureAffectsParent(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-object v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getRequired$ui_release()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final dispatchOnPositionedCallbacks(Z)V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/sqlite/db/SimpleSQLiteQuery;

    if-eqz p1, :cond_0

    iget-object p1, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    iget-object p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->needsOnPositionedDispatch:Z

    :cond_0
    iget-object p0, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    sget-object p1, Landroidx/compose/ui/node/DepthSortedSetKt$DepthComparator$1;->INSTANCE:Landroidx/compose/ui/node/DepthSortedSetKt$DepthComparator$1;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->sortWith(Ljava/util/Comparator;)V

    iget p1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    iget-object v2, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v2, [Landroidx/compose/ui/node/LayoutNode;

    if-eqz v2, :cond_1

    array-length v3, v2

    if-ge v3, p1, :cond_2

    :cond_1
    const/16 v2, 0x10

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [Landroidx/compose/ui/node/LayoutNode;

    :cond_2
    const/4 v3, 0x0

    iput-object v3, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    iget-object v4, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v4, v4, v3

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    sub-int/2addr p1, v0

    :goto_1
    const/4 p0, -0x1

    if-ge p0, p1, :cond_5

    aget-object p0, v2, p1

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->needsOnPositionedDispatch:Z

    if-eqz v0, :cond_4

    invoke-static {p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->dispatchHierarchy(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    iput-object v2, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    return-void
.end method

.method public final drainPostponedMeasureRequests()V
    .locals 7

    iget-object p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->postponedMeasureRequests:Landroidx/compose/runtime/collection/MutableVector;

    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    check-cast v3, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;

    iget-object v4, v3, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;->node:Landroidx/compose/ui/node/LayoutNode;

    iget-boolean v5, v3, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;->isForced:Z

    iget-object v6, v3, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;->node:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v3, v3, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;->isLookahead:Z

    const/4 v4, 0x2

    if-nez v3, :cond_0

    invoke-static {v6, v5, v4}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    goto :goto_1

    :cond_0
    invoke-static {v6, v5, v4}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    :cond_3
    return-void
.end method

.method public final ensureSubtreeLookaheadReplaced(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 5

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p1

    iget-object v0, p1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p1, p1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, v0, v1

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->isPlacedInLookahead()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Lcom/motorola/camera/CameraKpi;

    iget-object v3, v3, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/tasks/zza;

    iget-object v3, v3, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->lookaheadReplace$ui_release()V

    :cond_0
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->ensureSubtreeLookaheadReplaced(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final forceMeasureTheSubtree(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    if-nez v0, :cond_0

    const-string v0, "forceMeasureTheSubtree should be executed during the measureAndLayout pass"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-boolean v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    const-string v0, "node not yet measured"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->forceMeasureTheSubtreeInternal(Landroidx/compose/ui/node/LayoutNode;Z)V

    return-void
.end method

.method public final forceMeasureTheSubtreeInternal(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 8

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    iget-object v1, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_8

    aget-object v4, v1, v3

    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    const/4 v5, 0x1

    if-nez p2, :cond_0

    invoke-static {v4}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->getMeasureAffectsParent(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    if-eqz p2, :cond_7

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getMeasuredByParentInLookahead$ui_release()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-eq v6, v7, :cond_1

    iget-object v6, v4, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz v6, :cond_7

    iget-object v6, v6, Landroidx/compose/ui/node/LookaheadPassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getRequired$ui_release()Z

    move-result v6

    if-ne v6, v5, :cond_7

    :cond_1
    invoke-static {v4}, Landroidx/compose/ui/node/HitTestResultKt;->isOutMostLookaheadRoot(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v6

    iget-object v7, v4, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    if-eqz v6, :cond_3

    if-nez p2, :cond_3

    iget-boolean v6, v7, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Lcom/motorola/camera/CameraKpi;

    iget-object v6, v6, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/tasks/zza;

    iget-object v6, v6, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {v6, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v4, v5, v2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->remeasureAndRelayoutIfNeeded(Landroidx/compose/ui/node/LayoutNode;ZZ)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4, v5}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->forceMeasureTheSubtree(Landroidx/compose/ui/node/LayoutNode;Z)V

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    iget-boolean v5, v7, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result v5

    :goto_2
    if-eqz v5, :cond_5

    invoke-virtual {p0, v4, p2, v2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->remeasureAndRelayoutIfNeeded(Landroidx/compose/ui/node/LayoutNode;ZZ)Z

    :cond_5
    if-eqz p2, :cond_6

    iget-boolean v5, v7, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result v5

    :goto_3
    if-nez v5, :cond_7

    invoke-virtual {p0, v4, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->forceMeasureTheSubtreeInternal(Landroidx/compose/ui/node/LayoutNode;Z)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_9

    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-boolean v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2, v2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->remeasureAndRelayoutIfNeeded(Landroidx/compose/ui/node/LayoutNode;ZZ)Z

    :cond_a
    return-void
.end method

.method public final measureAndLayout(Landroidx/compose/ui/platform/AndroidComposeView$viewTreeOwners$2;)Z
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Lcom/motorola/camera/CameraKpi;

    iget-object v2, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "performMeasureAndLayout called with unattached root"

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "performMeasureAndLayout called with unplaced root"

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    iget-boolean v3, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "performMeasureAndLayout called during measure layout"

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_2
    iget-object v3, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_8

    iput-boolean v5, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    iput-boolean v5, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringFullMeasureLayoutPass:Z

    :try_start_0
    invoke-virtual {v0}, Lcom/motorola/camera/CameraKpi;->isNotEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/motorola/camera/CameraKpi;->isNotEmpty()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/tasks/zza;

    if-eqz v6, :cond_5

    :try_start_1
    iget-object v6, v7, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v6

    xor-int/lit8 v8, v6, 0x1

    if-nez v6, :cond_4

    iget-object v6, v7, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {v6}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/tasks/zza;->remove(Landroidx/compose/ui/node/LayoutNode;)Z

    goto :goto_1

    :cond_4
    iget-object v6, v0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/tasks/zza;

    iget-object v7, v6, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/tasks/zza;->remove(Landroidx/compose/ui/node/LayoutNode;)Z

    move-object v6, v7

    :goto_1
    invoke-virtual {v1, v6, v8, v5}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->remeasureAndRelayoutIfNeeded(Landroidx/compose/ui/node/LayoutNode;ZZ)Z

    move-result v7

    if-ne v6, v2, :cond_3

    if-eqz v7, :cond_3

    move v3, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/platform/AndroidComposeView$viewTreeOwners$2;->invoke()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    move v3, v4

    :cond_7
    :goto_2
    iput-boolean v4, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    iput-boolean v4, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringFullMeasureLayoutPass:Z

    goto :goto_4

    :goto_3
    iput-boolean v4, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    iput-boolean v4, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringFullMeasureLayoutPass:Z

    throw v0

    :cond_8
    move v3, v4

    :goto_4
    iget-object v0, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onLayoutCompletedListeners:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v1, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v2, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v6, v4

    :goto_5
    if-ge v6, v2, :cond_14

    aget-object v7, v1, v6

    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v8, v7, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/node/InnerNodeCoordinator;

    const/16 v9, 0x80

    invoke-static {v9}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v11, v8, Landroidx/compose/ui/node/InnerNodeCoordinator;->tail:Landroidx/compose/ui/node/TailModifierNode;

    goto :goto_6

    :cond_9
    iget-object v11, v8, Landroidx/compose/ui/node/InnerNodeCoordinator;->tail:Landroidx/compose/ui/node/TailModifierNode;

    iget-object v11, v11, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    if-nez v11, :cond_a

    goto/16 :goto_d

    :cond_a
    :goto_6
    sget-object v12, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-virtual {v8, v10}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    :goto_7
    if-eqz v8, :cond_13

    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/2addr v10, v9

    if-eqz v10, :cond_13

    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v10, v9

    if-eqz v10, :cond_12

    const/4 v10, 0x0

    move-object v12, v8

    move-object v13, v10

    :goto_8
    if-eqz v12, :cond_12

    instance-of v14, v12, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    if-eqz v14, :cond_b

    check-cast v12, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    iget-object v14, v7, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/node/InnerNodeCoordinator;

    invoke-interface {v12, v14}, Landroidx/compose/ui/node/LayoutAwareModifierNode;->onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    goto :goto_c

    :cond_b
    iget v14, v12, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v14, v9

    if-eqz v14, :cond_11

    instance-of v14, v12, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v14, :cond_11

    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v14, v14, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v15, v4

    :goto_9
    if-eqz v14, :cond_10

    iget v4, v14, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v4, v9

    if-eqz v4, :cond_f

    add-int/lit8 v15, v15, 0x1

    if-ne v15, v5, :cond_c

    move-object v12, v14

    goto :goto_a

    :cond_c
    if-nez v13, :cond_d

    new-instance v13, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v4, 0x10

    new-array v4, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v13, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_d
    if-eqz v12, :cond_e

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v12, v10

    :cond_e
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_f
    :goto_a
    iget-object v14, v14, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    const/4 v4, 0x0

    goto :goto_9

    :cond_10
    if-ne v15, v5, :cond_11

    :goto_b
    const/4 v4, 0x0

    goto :goto_8

    :cond_11
    :goto_c
    invoke-static {v13}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    goto :goto_b

    :cond_12
    if-eq v8, v11, :cond_13

    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    const/4 v4, 0x0

    goto :goto_7

    :cond_13
    :goto_d
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_14
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    return v3
.end method

.method public final measureAndLayout-0kLqBqw(Landroidx/compose/ui/node/LayoutNode;J)V
    .locals 12

    iget-boolean v0, p1, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    iget-object v1, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "measureAndLayout called on root"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "performMeasureAndLayout called with unattached root"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "performMeasureAndLayout called with unplaced root"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "performMeasureAndLayout called during measure layout"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    iput-boolean v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringFullMeasureLayoutPass:Z

    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Lcom/motorola/camera/CameraKpi;

    iget-object v4, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/tasks/zza;

    invoke-virtual {v4, p1}, Lcom/google/android/gms/tasks/zza;->remove(Landroidx/compose/ui/node/LayoutNode;)Z

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zza;->remove(Landroidx/compose/ui/node/LayoutNode;)Z

    new-instance v0, Landroidx/compose/ui/unit/Constraints;

    invoke-direct {v0, p2, p3}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    invoke-static {p1, v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->doLookaheadRemeasure-sdFAvZA(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadLayoutPending:Z

    if-eqz v0, :cond_6

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isPlacedInLookahead()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->lookaheadReplace$ui_release()V

    :cond_6
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->ensureSubtreeLookaheadReplaced(Landroidx/compose/ui/node/LayoutNode;)V

    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v0, v4, :cond_7

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreeIntrinsicsUsage$ui_release()V

    :cond_7
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    invoke-virtual {v0, p2, p3}, Landroidx/compose/ui/node/MeasurePassDelegate;->remeasure-BRTryo0(J)Z

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p3

    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    iget-object p2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-object p2, p2, Landroidx/compose/ui/node/MeasurePassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne p2, v0, :cond_8

    const/4 p2, 0x3

    invoke-static {p3, v3, p2}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    goto :goto_1

    :cond_8
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne p2, v0, :cond_9

    invoke-virtual {p3, v3}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release(Z)V

    :cond_9
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLayoutPending$ui_release()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->replace$ui_release()V

    iget-object p2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object p2, p2, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    iput-boolean v2, p1, Landroidx/compose/ui/node/LayoutNode;->needsOnPositionedDispatch:Z

    :cond_a
    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->drainPostponedMeasureRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringFullMeasureLayoutPass:Z

    goto :goto_3

    :goto_2
    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringFullMeasureLayoutPass:Z

    throw p1

    :cond_b
    :goto_3
    iget-object p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onLayoutCompletedListeners:Landroidx/compose/runtime/collection/MutableVector;

    iget-object p1, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p2, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move p3, v3

    :goto_4
    if-ge p3, p2, :cond_17

    aget-object v0, p1, p3

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v1, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/InnerNodeCoordinator;

    const/16 v4, 0x80

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v6, v1, Landroidx/compose/ui/node/InnerNodeCoordinator;->tail:Landroidx/compose/ui/node/TailModifierNode;

    goto :goto_5

    :cond_c
    iget-object v6, v1, Landroidx/compose/ui/node/InnerNodeCoordinator;->tail:Landroidx/compose/ui/node/TailModifierNode;

    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    if-nez v6, :cond_d

    goto/16 :goto_b

    :cond_d
    :goto_5
    sget-object v7, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-virtual {v1, v5}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    :goto_6
    if-eqz v1, :cond_16

    iget v5, v1, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_16

    iget v5, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_15

    const/4 v5, 0x0

    move-object v7, v1

    move-object v8, v5

    :goto_7
    if-eqz v7, :cond_15

    instance-of v9, v7, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    if-eqz v9, :cond_e

    check-cast v7, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    iget-object v9, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/node/InnerNodeCoordinator;

    invoke-interface {v7, v9}, Landroidx/compose/ui/node/LayoutAwareModifierNode;->onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    goto :goto_a

    :cond_e
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v9, v4

    if-eqz v9, :cond_14

    instance-of v9, v7, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_14

    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v10, v3

    :goto_8
    if-eqz v9, :cond_13

    iget v11, v9, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_12

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v2, :cond_f

    move-object v7, v9

    goto :goto_9

    :cond_f
    if-nez v8, :cond_10

    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v11, 0x10

    new-array v11, v11, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_10
    if-eqz v7, :cond_11

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v7, v5

    :cond_11
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_12
    :goto_9
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_8

    :cond_13
    if-ne v10, v2, :cond_14

    goto :goto_7

    :cond_14
    :goto_a
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_7

    :cond_15
    if-eq v1, v6, :cond_16

    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_6

    :cond_16
    :goto_b
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_4

    :cond_17
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    return-void
.end method

.method public final measureOnly()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraKpi;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "performMeasureAndLayout called with unattached root"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "performMeasureAndLayout called with unplaced root"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "performMeasureAndLayout called during measure layout"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringFullMeasureLayoutPass:Z

    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zza;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->remeasureOnly(Landroidx/compose/ui/node/LayoutNode;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->remeasureLookaheadRootsInSubtree(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_4
    :goto_0
    invoke-virtual {p0, v1, v3}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->remeasureOnly(Landroidx/compose/ui/node/LayoutNode;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringFullMeasureLayoutPass:Z

    return-void

    :goto_1
    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringFullMeasureLayoutPass:Z

    throw v0

    :cond_5
    return-void
.end method

.method public final remeasureAndRelayoutIfNeeded(Landroidx/compose/ui/node/LayoutNode;ZZ)Z
    .locals 5

    iget-boolean v0, p1, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    iget-object v1, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-boolean v0, v0, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlacedByParent:Z

    if-nez v0, :cond_3

    invoke-static {p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->getCanAffectPlacedParent(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isPlacedInLookahead()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasuredByParentInLookahead$ui_release()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-eq v0, v4, :cond_3

    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/compose/ui/node/LookaheadPassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getRequired$ui_release()Z

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-object v0, v0, Landroidx/compose/ui/node/MeasurePassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getRequired$ui_release()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/compose/ui/node/LookaheadPassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getRequired$ui_release()Z

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    if-ne p1, v0, :cond_4

    iget-object v4, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz p2, :cond_7

    iget-boolean p2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    if-eqz p2, :cond_5

    invoke-static {p1, v4}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->doLookaheadRemeasure-sdFAvZA(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z

    move-result v2

    :cond_5
    if-eqz p3, :cond_f

    if-nez v2, :cond_6

    iget-boolean p2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadLayoutPending:Z

    if-eqz p2, :cond_f

    :cond_6
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isPlacedInLookahead()Ljava/lang/Boolean;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->lookaheadReplace$ui_release()V

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {p1, v4}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->doRemeasure-sdFAvZA(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z

    move-result p2

    goto :goto_3

    :cond_8
    move p2, v2

    :goto_3
    if-eqz p3, :cond_e

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLayoutPending$ui_release()Z

    move-result p3

    if-eqz p3, :cond_e

    if-eq p1, v0, :cond_9

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p3

    if-eqz p3, :cond_e

    invoke-virtual {p3}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result p3

    if-ne p3, v3, :cond_e

    iget-object p3, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-boolean p3, p3, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlacedByParent:Z

    if-eqz p3, :cond_e

    :cond_9
    if-ne p1, v0, :cond_d

    iget-object p3, p1, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne p3, v0, :cond_a

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreePlacementIntrinsicsUsage()V

    :cond_a
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p3

    if-eqz p3, :cond_b

    iget-object p3, p3, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p3, p3, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast p3, Landroidx/compose/ui/node/InnerNodeCoordinator;

    if-eqz p3, :cond_b

    iget-object p3, p3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->placementScope:Landroidx/compose/ui/layout/OuterPlacementScope;

    if-nez p3, :cond_c

    :cond_b
    invoke-static {p1}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p3

    check-cast p3, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p3}, Landroidx/compose/ui/platform/AndroidComposeView;->getPlacementScope()Landroidx/compose/ui/layout/Placeable$PlacementScope;

    move-result-object p3

    :cond_c
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    invoke-static {p3, v0, v2, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->replace$ui_release()V

    :goto_4
    iget-object p3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object p3, p3, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p3, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    iput-boolean v3, p1, Landroidx/compose/ui/node/LayoutNode;->needsOnPositionedDispatch:Z

    invoke-static {p1}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p3

    check-cast p3, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p3}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/compose/ui/spatial/RectManager;->invalidateCallbacksFor(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_e
    move v2, p2

    :cond_f
    :goto_5
    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->drainPostponedMeasureRequests()V

    return v2
.end method

.method public final remeasureLookaheadRootsInSubtree(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p1

    iget-object v0, p1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p1, p1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, v0, v1

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->getMeasureAffectsParent(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->isOutMostLookaheadRoot(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->remeasureOnly(Landroidx/compose/ui/node/LayoutNode;Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->remeasureLookaheadRootsInSubtree(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final remeasureOnly(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 1

    iget-boolean v0, p1, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p2, :cond_2

    invoke-static {p1, p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->doLookaheadRemeasure-sdFAvZA(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z

    return-void

    :cond_2
    invoke-static {p1, p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->doRemeasure-sdFAvZA(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z

    return-void
.end method

.method public final requestRemeasure(Landroidx/compose/ui/node/LayoutNode;Z)Z
    .locals 4

    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p2, p2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iput-boolean v2, p2, Landroidx/compose/ui/node/MeasurePassDelegate;->measurePending:Z

    iget-boolean p2, p1, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->getCanAffectPlacedParent(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result p2

    if-ne p2, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {p2, p1, v1}, Lcom/motorola/camera/CameraKpi;->add(Landroidx/compose/ui/node/LayoutNode;Z)V

    :goto_0
    iget-boolean p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringFullMeasureLayoutPass:Z

    if-nez p0, :cond_6

    return v2

    :cond_4
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    new-instance v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;

    invoke-direct {v0, p1, v1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;-><init>(Landroidx/compose/ui/node/LayoutNode;ZZ)V

    iget-object p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->postponedMeasureRequests:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return v1
.end method

.method public final updateRootConstraints-BRTryo0(J)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-wide v2, v0, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-static {v2, v3, p1, p2}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "updateRootConstraints called while measuring"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroidx/compose/ui/unit/Constraints;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    iput-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    iget-object p2, p1, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    iput-boolean v2, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    :cond_2
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iput-boolean v2, v0, Landroidx/compose/ui/node/MeasurePassDelegate;->measurePending:Z

    if-eqz p2, :cond_3

    move v1, v2

    :cond_3
    iget-object p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/CameraKpi;->add(Landroidx/compose/ui/node/LayoutNode;Z)V

    :cond_4
    return-void
.end method
