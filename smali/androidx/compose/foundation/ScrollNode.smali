.class public final Landroidx/compose/foundation/ScrollNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# instance fields
.field public state:Landroidx/compose/foundation/ScrollState;


# virtual methods
.method public final applySemantics(Landroidx/compose/ui/semantics/SemanticsConfiguration;)V
    .locals 5

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsTraversalGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v2, v1, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsConfiguration;Ljava/lang/Object;)V

    new-instance v0, Landroidx/compose/ui/semantics/ScrollAxisRange;

    new-instance v2, Landroidx/compose/foundation/ScrollNode$applySemantics$accessibilityScrollState$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/compose/foundation/ScrollNode$applySemantics$accessibilityScrollState$1;-><init>(Landroidx/compose/foundation/ScrollNode;I)V

    new-instance v3, Landroidx/compose/foundation/ScrollNode$applySemantics$accessibilityScrollState$1;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Landroidx/compose/foundation/ScrollNode$applySemantics$accessibilityScrollState$1;-><init>(Landroidx/compose/foundation/ScrollNode;I)V

    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/semantics/ScrollAxisRange;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsConfiguration;Ljava/lang/Object;)V

    return-void
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 8

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    invoke-static {p3, p4, v0}, Landroidx/compose/foundation/ImageKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v6

    const/4 v5, 0x0

    const/4 v7, 0x5

    const/4 v3, 0x0

    const v4, 0x7fffffff

    move-wide v1, p3

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    move-result-wide p3

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p4

    if-le p3, p4, :cond_0

    move p3, p4

    :cond_0
    iget p4, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    if-le p4, v0, :cond_1

    move p4, v0

    :cond_1
    iget v0, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    sub-int/2addr v0, p3

    iget-object v1, p0, Landroidx/compose/foundation/ScrollNode;->state:Landroidx/compose/foundation/ScrollState;

    iget-object v2, v1, Landroidx/compose/foundation/ScrollState;->_maxValueState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    iget-object v1, v1, Landroidx/compose/foundation/ScrollState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4

    :try_start_0
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v5

    if-le v5, v0, :cond_3

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {v2, v4, v3}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    iget-object v1, p0, Landroidx/compose/foundation/ScrollNode;->state:Landroidx/compose/foundation/ScrollState;

    iget-object v1, v1, Landroidx/compose/foundation/ScrollState;->viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v1, p3}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    new-instance v1, Landroidx/compose/foundation/ScrollNode$measure$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0, p2}, Landroidx/compose/foundation/ScrollNode$measure$1;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {p1, p3, p4, p0, v1}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    :goto_2
    invoke-static {v2, v4, v3}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw p0
.end method
