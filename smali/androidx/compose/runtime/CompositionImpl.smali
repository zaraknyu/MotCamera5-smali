.class public final Landroidx/compose/runtime/CompositionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/Composition;


# instance fields
.field public final abandonSet:Landroidx/collection/MutableSetWrapper;

.field public final applier:Landroidx/core/view/MenuHostHelper;

.field public final changes:Landroidx/compose/runtime/changelist/ChangeList;

.field public final composer:Landroidx/compose/runtime/ComposerImpl;

.field public final conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

.field public final derivedStates:Landroidx/collection/MutableScatterMap;

.field public disposed:Z

.field public final invalidatedScopes:Landroidx/collection/MutableScatterSet;

.field public invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

.field public invalidationDelegateGroup:I

.field public invalidations:Landroidx/collection/MutableScatterMap;

.field public final lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

.field public final lock:Ljava/lang/Object;

.field public final observations:Landroidx/collection/MutableScatterMap;

.field public final observationsProcessed:Landroidx/collection/MutableScatterMap;

.field public final observerHolder:Landroidx/compose/runtime/NeverEqualPolicy;

.field public final parent:Landroidx/compose/runtime/CompositionContext;

.field public pendingInvalidScopes:Z

.field public final pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

.field public final slotTable:Landroidx/compose/runtime/SlotTable;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/CompositionContext;Landroidx/core/view/MenuHostHelper;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    iput-object p2, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/core/view/MenuHostHelper;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    new-instance v0, Landroidx/collection/MutableScatterSet;

    invoke-direct {v0}, Landroidx/collection/MutableScatterSet;-><init>()V

    new-instance v5, Landroidx/collection/MutableSetWrapper;

    invoke-direct {v5, v0}, Landroidx/collection/MutableSetWrapper;-><init>(Landroidx/collection/MutableScatterSet;)V

    iput-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    new-instance v4, Landroidx/compose/runtime/SlotTable;

    invoke-direct {v4}, Landroidx/compose/runtime/SlotTable;-><init>()V

    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime_release()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v0}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    iput-object v0, v4, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime_release()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotTable;->collectSourceInformation()V

    :cond_1
    iput-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default()Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    new-instance v0, Landroidx/collection/MutableScatterSet;

    invoke-direct {v0}, Landroidx/collection/MutableScatterSet;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->invalidatedScopes:Landroidx/collection/MutableScatterSet;

    new-instance v0, Landroidx/collection/MutableScatterSet;

    invoke-direct {v0}, Landroidx/collection/MutableScatterSet;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default()Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    new-instance v6, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v6}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V

    iput-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    new-instance v7, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v7}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V

    iput-object v7, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default()Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/collection/MutableScatterMap;

    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default()Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    new-instance v0, Landroidx/compose/runtime/NeverEqualPolicy;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroidx/compose/runtime/NeverEqualPolicy;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/NeverEqualPolicy;

    new-instance v1, Landroidx/compose/runtime/ComposerImpl;

    move-object v8, p0

    move-object v3, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Landroidx/compose/runtime/ComposerImpl;-><init>(Landroidx/core/view/MenuHostHelper;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/SlotTable;Landroidx/collection/MutableSetWrapper;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/CompositionImpl;)V

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/CompositionContext;->registerComposer$runtime_release(Landroidx/compose/runtime/ComposerImpl;)V

    iput-object v1, v8, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    sget-object p0, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void
.end method


# virtual methods
.method public final abandonChanges()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v0, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v0, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->clear()V

    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    iget-object v0, p0, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Compose:abandons"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lkotlin/sequences/GeneratorSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/GeneratorSequence$iterator$1;-><init>(Landroidx/collection/MutableSetWrapper;)V

    :goto_0
    invoke-virtual {v0}, Lkotlin/sequences/GeneratorSequence$iterator$1;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lkotlin/sequences/GeneratorSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/RememberObserver;

    invoke-virtual {v0}, Lkotlin/sequences/GeneratorSequence$iterator$1;->remove()V

    invoke-interface {p0}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_1
    return-void
.end method

.method public final addPendingInvalidationsLocked(Ljava/lang/Object;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 2
    invoke-virtual {v2, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3
    instance-of v3, v2, Landroidx/collection/MutableScatterSet;

    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->invalidatedScopes:Landroidx/collection/MutableScatterSet;

    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

    iget-object v0, v0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/collection/MutableScatterMap;

    if-eqz v3, :cond_4

    .line 4
    check-cast v2, Landroidx/collection/MutableScatterSet;

    .line 5
    iget-object v3, v2, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 6
    iget-object v2, v2, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 7
    array-length v6, v2

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_6

    const/4 v8, 0x0

    .line 8
    :goto_0
    aget-wide v9, v2, v8

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_3

    sub-int v11, v8, v6

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_2

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    const-wide/16 v16, 0x80

    cmp-long v14, v14, v16

    if-gez v14, :cond_1

    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    .line 9
    aget-object v14, v3, v14

    check-cast v14, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 10
    invoke-static {v0, v1, v14}, Landroidx/compose/runtime/collection/ScopeMap;->remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 11
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v15

    sget-object v7, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    if-eq v15, v7, :cond_1

    .line 12
    iget-object v7, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    if-eqz v7, :cond_0

    if-nez p2, :cond_0

    .line 13
    invoke-virtual {v5, v14}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_0
    invoke-virtual {v4, v14}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    shr-long/2addr v9, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    if-ne v11, v12, :cond_6

    :cond_3
    if-eq v8, v6, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 15
    :cond_4
    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 16
    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/collection/ScopeMap;->remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 17
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    if-eq v0, v1, :cond_6

    .line 18
    iget-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    .line 19
    invoke-virtual {v5, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 20
    :cond_5
    invoke-virtual {v4, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public final addPendingInvalidationsLocked(Ljava/util/Set;Z)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 21
    instance-of v3, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    const/4 v5, 0x0

    const/16 v14, 0x8

    if-eqz v3, :cond_b

    .line 22
    check-cast v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 23
    iget-object v1, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;->set:Landroidx/collection/MutableScatterSet;

    .line 24
    iget-object v3, v1, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 25
    iget-object v1, v1, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 26
    array-length v15, v1

    add-int/lit8 v15, v15, -0x2

    if-ltz v15, :cond_a

    const/4 v6, 0x0

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    .line 27
    :goto_0
    aget-wide v8, v1, v6

    const/4 v7, 0x7

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    not-long v10, v8

    shl-long/2addr v10, v7

    and-long/2addr v10, v8

    and-long v10, v10, v20

    cmp-long v10, v10, v20

    if-eqz v10, :cond_9

    sub-int v10, v6, v15

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    rsub-int/lit8 v10, v10, 0x8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_8

    and-long v22, v8, v18

    cmp-long v12, v22, v16

    if-gez v12, :cond_7

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    .line 28
    aget-object v12, v3, v12

    move/from16 v22, v7

    .line 29
    instance-of v7, v12, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v7, :cond_1

    .line 30
    check-cast v12, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    :cond_0
    move-object/from16 v29, v1

    move-wide/from16 v26, v8

    move/from16 p1, v15

    goto/16 :goto_6

    .line 31
    :cond_1
    invoke-virtual {v0, v12, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    .line 32
    invoke-virtual {v4, v12}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 33
    instance-of v12, v7, Landroidx/collection/MutableScatterSet;

    if-eqz v12, :cond_5

    .line 34
    check-cast v7, Landroidx/collection/MutableScatterSet;

    .line 35
    iget-object v12, v7, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 36
    iget-object v7, v7, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 37
    array-length v13, v7

    add-int/lit8 v13, v13, -0x2

    if-ltz v13, :cond_0

    move/from16 v25, v14

    move/from16 p1, v15

    const/4 v5, 0x0

    .line 38
    :goto_2
    aget-wide v14, v7, v5

    move-wide/from16 v26, v8

    move-object v9, v7

    not-long v7, v14

    shl-long v7, v7, v22

    and-long/2addr v7, v14

    and-long v7, v7, v20

    cmp-long v7, v7, v20

    if-eqz v7, :cond_4

    sub-int v7, v5, v13

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_3

    and-long v28, v14, v18

    cmp-long v28, v28, v16

    if-gez v28, :cond_2

    shl-int/lit8 v28, v5, 0x3

    add-int v28, v28, v8

    .line 39
    aget-object v28, v12, v28

    move-object/from16 v29, v1

    move-object/from16 v1, v28

    check-cast v1, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 40
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    goto :goto_4

    :cond_2
    move-object/from16 v29, v1

    :goto_4
    shr-long v14, v14, v25

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v29

    goto :goto_3

    :cond_3
    move-object/from16 v29, v1

    move/from16 v1, v25

    if-ne v7, v1, :cond_6

    goto :goto_5

    :cond_4
    move-object/from16 v29, v1

    :goto_5
    if-eq v5, v13, :cond_6

    add-int/lit8 v5, v5, 0x1

    move-object v7, v9

    move-wide/from16 v8, v26

    move-object/from16 v1, v29

    const/16 v25, 0x8

    goto :goto_2

    :cond_5
    move-object/from16 v29, v1

    move-wide/from16 v26, v8

    move/from16 p1, v15

    .line 41
    check-cast v7, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 42
    invoke-virtual {v0, v7, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    :cond_6
    :goto_6
    const/16 v1, 0x8

    goto :goto_7

    :cond_7
    move-object/from16 v29, v1

    move/from16 v22, v7

    move-wide/from16 v26, v8

    move/from16 p1, v15

    move v1, v14

    :goto_7
    shr-long v8, v26, v1

    add-int/lit8 v11, v11, 0x1

    move/from16 v15, p1

    move v14, v1

    move/from16 v7, v22

    move-object/from16 v1, v29

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v29, v1

    move/from16 v22, v7

    move v1, v14

    move/from16 p1, v15

    if-ne v10, v1, :cond_12

    move/from16 v15, p1

    goto :goto_8

    :cond_9
    move-object/from16 v29, v1

    move/from16 v22, v7

    :goto_8
    if-eq v6, v15, :cond_12

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v29

    const/4 v5, 0x0

    const/16 v14, 0x8

    goto/16 :goto_0

    :cond_a
    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v22, 0x7

    goto/16 :goto_c

    :cond_b
    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v22, 0x7

    .line 43
    check-cast v1, Ljava/lang/Iterable;

    .line 44
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 45
    instance-of v5, v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v5, :cond_d

    .line 46
    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    goto :goto_9

    :cond_d
    const/4 v5, 0x0

    .line 47
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    .line 48
    invoke-virtual {v4, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 49
    instance-of v6, v3, Landroidx/collection/MutableScatterSet;

    if-eqz v6, :cond_11

    .line 50
    check-cast v3, Landroidx/collection/MutableScatterSet;

    .line 51
    iget-object v6, v3, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 52
    iget-object v3, v3, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 53
    array-length v7, v3

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_c

    const/4 v8, 0x0

    .line 54
    :goto_a
    aget-wide v9, v3, v8

    not-long v11, v9

    shl-long v11, v11, v22

    and-long/2addr v11, v9

    and-long v11, v11, v20

    cmp-long v11, v11, v20

    if-eqz v11, :cond_10

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v25, 0x8

    rsub-int/lit8 v14, v11, 0x8

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v14, :cond_f

    and-long v12, v9, v18

    cmp-long v12, v12, v16

    if-gez v12, :cond_e

    shl-int/lit8 v12, v8, 0x3

    add-int/2addr v12, v11

    .line 55
    aget-object v12, v6, v12

    check-cast v12, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 56
    invoke-virtual {v0, v12, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    :cond_e
    const/16 v12, 0x8

    shr-long/2addr v9, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_f
    const/16 v12, 0x8

    if-ne v14, v12, :cond_c

    :cond_10
    if-eq v8, v7, :cond_c

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 57
    :cond_11
    check-cast v3, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 58
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    goto :goto_9

    .line 59
    :cond_12
    :goto_c
    const-string v1, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap"

    const-string v3, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>"

    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    iget-object v6, v0, Landroidx/compose/runtime/CompositionImpl;->invalidatedScopes:Landroidx/collection/MutableScatterSet;

    if-eqz v2, :cond_22

    iget-object v2, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v7

    if-eqz v7, :cond_22

    .line 60
    iget-object v7, v4, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 61
    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_21

    const/4 v9, 0x0

    .line 62
    :goto_d
    aget-wide v10, v7, v9

    not-long v12, v10

    shl-long v12, v12, v22

    and-long/2addr v12, v10

    and-long v12, v12, v20

    cmp-long v12, v12, v20

    if-eqz v12, :cond_20

    sub-int v12, v9, v8

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v25, 0x8

    rsub-int/lit8 v14, v12, 0x8

    const/4 v12, 0x0

    :goto_e
    if-ge v12, v14, :cond_1f

    and-long v26, v10, v18

    cmp-long v13, v26, v16

    if-gez v13, :cond_1e

    shl-int/lit8 v13, v9, 0x3

    add-int/2addr v13, v12

    .line 63
    iget-object v15, v4, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    aget-object v15, v15, v13

    iget-object v15, v4, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v15, v15, v13

    .line 64
    instance-of v5, v15, Landroidx/collection/MutableScatterSet;

    if-eqz v5, :cond_1a

    .line 65
    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Landroidx/collection/MutableScatterSet;

    .line 66
    iget-object v5, v15, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 67
    iget-object v0, v15, Landroidx/collection/MutableScatterSet;->metadata:[J

    move-object/from16 v24, v5

    .line 68
    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_18

    move-object/from16 v26, v0

    move-wide/from16 v27, v10

    const/4 v0, 0x0

    .line 69
    :goto_f
    aget-wide v10, v26, v0

    move-object/from16 v29, v7

    move/from16 p2, v8

    not-long v7, v10

    shl-long v7, v7, v22

    and-long/2addr v7, v10

    and-long v7, v7, v20

    cmp-long v7, v7, v20

    if-eqz v7, :cond_17

    sub-int v7, v0, v5

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v25, 0x8

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_10
    if-ge v8, v7, :cond_16

    and-long v30, v10, v18

    cmp-long v30, v30, v16

    if-gez v30, :cond_15

    shl-int/lit8 v30, v0, 0x3

    move/from16 v31, v8

    add-int v8, v30, v31

    .line 70
    aget-object v30, v24, v8

    move-wide/from16 v32, v10

    move-object/from16 v10, v30

    check-cast v10, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 71
    invoke-virtual {v2, v10}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    invoke-virtual {v6, v10}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 72
    :cond_13
    invoke-virtual {v15, v8}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    :cond_14
    :goto_11
    const/16 v8, 0x8

    goto :goto_12

    :cond_15
    move/from16 v31, v8

    move-wide/from16 v32, v10

    goto :goto_11

    :goto_12
    shr-long v10, v32, v8

    add-int/lit8 v25, v31, 0x1

    move/from16 v8, v25

    goto :goto_10

    :cond_16
    const/16 v8, 0x8

    if-ne v7, v8, :cond_19

    :cond_17
    if-eq v0, v5, :cond_19

    add-int/lit8 v0, v0, 0x1

    move/from16 v8, p2

    move-object/from16 v7, v29

    goto :goto_f

    :cond_18
    move-object/from16 v29, v7

    move/from16 p2, v8

    move-wide/from16 v27, v10

    .line 73
    :cond_19
    invoke-virtual {v15}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v0

    goto :goto_14

    :cond_1a
    move-object/from16 v29, v7

    move/from16 p2, v8

    move-wide/from16 v27, v10

    .line 74
    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 75
    invoke-virtual {v2, v15}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v6, v15}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_13

    :cond_1b
    const/4 v0, 0x0

    goto :goto_14

    :cond_1c
    :goto_13
    const/4 v0, 0x1

    :goto_14
    if-eqz v0, :cond_1d

    .line 76
    invoke-virtual {v4, v13}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_1d
    :goto_15
    const/16 v8, 0x8

    goto :goto_16

    :cond_1e
    move-object/from16 v29, v7

    move/from16 p2, v8

    move-wide/from16 v27, v10

    goto :goto_15

    :goto_16
    shr-long v10, v27, v8

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v8, p2

    move-object/from16 v7, v29

    goto/16 :goto_e

    :cond_1f
    move-object/from16 v29, v7

    move/from16 p2, v8

    const/16 v8, 0x8

    if-ne v14, v8, :cond_21

    move/from16 v8, p2

    goto :goto_17

    :cond_20
    move-object/from16 v29, v7

    :goto_17
    if-eq v9, v8, :cond_21

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, v29

    goto/16 :goto_d

    .line 77
    :cond_21
    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->cleanUpDerivedStateObservations()V

    return-void

    .line 79
    :cond_22
    invoke-virtual {v6}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 80
    iget-object v0, v4, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 81
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_30

    const/4 v5, 0x0

    .line 82
    :goto_18
    aget-wide v7, v0, v5

    not-long v9, v7

    shl-long v9, v9, v22

    and-long/2addr v9, v7

    and-long v9, v9, v20

    cmp-long v9, v9, v20

    if-eqz v9, :cond_2f

    sub-int v9, v5, v2

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v25, 0x8

    rsub-int/lit8 v14, v9, 0x8

    const/4 v9, 0x0

    :goto_19
    if-ge v9, v14, :cond_2e

    and-long v10, v7, v18

    cmp-long v10, v10, v16

    if-gez v10, :cond_23

    const/4 v10, 0x1

    goto :goto_1a

    :cond_23
    const/4 v10, 0x0

    :goto_1a
    if-eqz v10, :cond_2d

    shl-int/lit8 v10, v5, 0x3

    add-int/2addr v10, v9

    .line 83
    iget-object v11, v4, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    aget-object v11, v11, v10

    iget-object v11, v4, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v11, v11, v10

    .line 84
    instance-of v12, v11, Landroidx/collection/MutableScatterSet;

    if-eqz v12, :cond_2b

    .line 85
    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroidx/collection/MutableScatterSet;

    .line 86
    iget-object v12, v11, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 87
    iget-object v13, v11, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 88
    array-length v15, v13

    add-int/lit8 v15, v15, -0x2

    move-object/from16 v24, v0

    if-ltz v15, :cond_29

    move-wide/from16 v26, v7

    const/4 v0, 0x0

    .line 89
    :goto_1b
    aget-wide v7, v13, v0

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    not-long v12, v7

    shl-long v12, v12, v22

    and-long/2addr v12, v7

    and-long v12, v12, v20

    cmp-long v12, v12, v20

    if-eqz v12, :cond_28

    sub-int v12, v0, v15

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v25, 0x8

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_1c
    if-ge v13, v12, :cond_27

    and-long v30, v7, v18

    cmp-long v30, v30, v16

    if-gez v30, :cond_24

    const/16 v30, 0x1

    goto :goto_1d

    :cond_24
    const/16 v30, 0x0

    :goto_1d
    if-eqz v30, :cond_26

    shl-int/lit8 v30, v0, 0x3

    move-object/from16 v31, v3

    add-int v3, v30, v13

    .line 90
    aget-object v30, v28, v3

    move-wide/from16 v32, v7

    move-object/from16 v7, v30

    check-cast v7, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 91
    invoke-virtual {v6, v7}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 92
    invoke-virtual {v11, v3}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    :cond_25
    :goto_1e
    const/16 v8, 0x8

    goto :goto_1f

    :cond_26
    move-object/from16 v31, v3

    move-wide/from16 v32, v7

    goto :goto_1e

    :goto_1f
    shr-long v32, v32, v8

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v31

    move-wide/from16 v7, v32

    goto :goto_1c

    :cond_27
    move-object/from16 v31, v3

    const/16 v8, 0x8

    if-ne v12, v8, :cond_2a

    goto :goto_20

    :cond_28
    move-object/from16 v31, v3

    :goto_20
    if-eq v0, v15, :cond_2a

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    move-object/from16 v3, v31

    goto :goto_1b

    :cond_29
    move-object/from16 v31, v3

    move-wide/from16 v26, v7

    .line 93
    :cond_2a
    invoke-virtual {v11}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v0

    goto :goto_21

    :cond_2b
    move-object/from16 v24, v0

    move-object/from16 v31, v3

    move-wide/from16 v26, v7

    .line 94
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 95
    invoke-virtual {v6, v11}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_21
    if-eqz v0, :cond_2c

    .line 96
    invoke-virtual {v4, v10}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_2c
    :goto_22
    const/16 v8, 0x8

    goto :goto_23

    :cond_2d
    move-object/from16 v24, v0

    move-object/from16 v31, v3

    move-wide/from16 v26, v7

    goto :goto_22

    :goto_23
    shr-long v10, v26, v8

    add-int/lit8 v9, v9, 0x1

    move-wide v7, v10

    move-object/from16 v0, v24

    move-object/from16 v3, v31

    goto/16 :goto_19

    :cond_2e
    move-object/from16 v24, v0

    move-object/from16 v31, v3

    const/16 v8, 0x8

    if-ne v14, v8, :cond_30

    goto :goto_24

    :cond_2f
    move-object/from16 v24, v0

    move-object/from16 v31, v3

    const/16 v8, 0x8

    :goto_24
    if-eq v5, v2, :cond_30

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v24

    move-object/from16 v3, v31

    goto/16 :goto_18

    .line 97
    :cond_30
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->cleanUpDerivedStateObservations()V

    .line 98
    invoke-virtual {v6}, Landroidx/collection/MutableScatterSet;->clear()V

    :cond_31
    return-void
.end method

.method public final applyChanges()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/CompositionImpl;->applyChangesInLocked(Landroidx/compose/runtime/changelist/ChangeList;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    iget-object v2, v2, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v2, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Compose:abandons"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Lkotlin/sequences/GeneratorSequence$iterator$1;

    invoke-direct {v3, v2}, Lkotlin/sequences/GeneratorSequence$iterator$1;-><init>(Landroidx/collection/MutableSetWrapper;)V

    :goto_0
    iget-object v2, v3, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    check-cast v2, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-virtual {v2}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    check-cast v2, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-virtual {v2}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/RememberObserver;

    invoke-virtual {v3}, Lkotlin/sequences/GeneratorSequence$iterator$1;->remove()V

    invoke-interface {v2}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1

    :catchall_2
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_2
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_3
    :try_start_4
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public final applyChangesInLocked(Landroidx/compose/runtime/changelist/ChangeList;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    new-instance v3, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    invoke-direct {v3, v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    :try_start_0
    iget-object v4, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v4}, Landroidx/compose/runtime/changelist/Operations;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v4, :cond_0

    iget-object v0, v2, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v3}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    return-void

    :cond_0
    :try_start_1
    const-string v4, "Compose:applyChanges"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/core/view/MenuHostHelper;

    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v5}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v1, v4, v5, v3}, Landroidx/compose/runtime/changelist/ChangeList;->executeAndFlushAllPendingChanges(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    invoke-virtual {v4}, Landroidx/core/view/MenuHostHelper;->onEndChanges()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v3}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchRememberObservers()V

    iget-object v4, v3, Landroidx/compose/runtime/internal/RememberEventDispatcher;->sideEffects:Landroidx/compose/runtime/collection/MutableVector;

    iget v5, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz v5, :cond_2

    const-string v5, "Compose:sideeffects"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v5, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v7, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v5, v8

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_2
    :goto_2
    iget-boolean v4, v0, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z

    if-eqz v4, :cond_10

    const-string v4, "Compose:unobserve"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iput-boolean v6, v0, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z

    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    iget-object v5, v4, Landroidx/collection/MutableScatterMap;->metadata:[J

    array-length v7, v5

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_f

    move v8, v6

    :goto_3
    aget-wide v9, v5, v8

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v14

    cmp-long v11, v11, v14

    if-eqz v11, :cond_e

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    move v1, v6

    :goto_4
    if-ge v1, v11, :cond_d

    const-wide/16 v16, 0xff

    and-long v18, v9, v16

    const-wide/16 v20, 0x80

    cmp-long v18, v18, v20

    if-gez v18, :cond_c

    shl-int/lit8 v18, v8, 0x3

    move/from16 v19, v13

    add-int v13, v18, v1

    move-wide/from16 v22, v14

    iget-object v14, v4, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    aget-object v14, v14, v13

    iget-object v14, v4, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v14, v14, v13

    instance-of v15, v14, Landroidx/collection/MutableScatterSet;

    if-eqz v15, :cond_9

    const-string v15, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Landroidx/collection/MutableScatterSet;

    iget-object v15, v14, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v6, v14, Landroidx/collection/MutableScatterSet;->metadata:[J

    move/from16 v24, v12

    array-length v12, v6

    add-int/lit8 v12, v12, -0x2

    if-ltz v12, :cond_7

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    const/4 v0, 0x0

    :goto_5
    aget-wide v5, v26, v0

    move-wide/from16 v27, v9

    not-long v9, v5

    shl-long v9, v9, v19

    and-long/2addr v9, v5

    and-long v9, v9, v22

    cmp-long v9, v9, v22

    if-eqz v9, :cond_6

    sub-int v9, v0, v12

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x8

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_5

    and-long v29, v5, v16

    cmp-long v29, v29, v20

    if-gez v29, :cond_3

    shl-int/lit8 v29, v0, 0x3

    move/from16 v30, v1

    add-int v1, v29, v10

    aget-object v29, v15, v1

    check-cast v29, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/RecomposeScopeImpl;->getValid()Z

    move-result v29

    if-nez v29, :cond_4

    invoke-virtual {v14, v1}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :cond_3
    move/from16 v30, v1

    :cond_4
    :goto_7
    shr-long v5, v5, v24

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v30

    goto :goto_6

    :cond_5
    move/from16 v30, v1

    move/from16 v1, v24

    if-ne v9, v1, :cond_8

    goto :goto_8

    :cond_6
    move/from16 v30, v1

    :goto_8
    if-eq v0, v12, :cond_8

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v9, v27

    move/from16 v1, v30

    const/16 v24, 0x8

    goto :goto_5

    :cond_7
    move/from16 v30, v1

    move-object/from16 v25, v5

    move-wide/from16 v27, v9

    :cond_8
    invoke-virtual {v14}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v0

    goto :goto_9

    :cond_9
    move/from16 v30, v1

    move-object/from16 v25, v5

    move-wide/from16 v27, v9

    const-string v0, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v14}, Landroidx/compose/runtime/RecomposeScopeImpl;->getValid()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_b

    invoke-virtual {v4, v13}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_b
    const/16 v1, 0x8

    goto :goto_a

    :cond_c
    move/from16 v30, v1

    move-object/from16 v25, v5

    move-wide/from16 v27, v9

    move/from16 v19, v13

    move-wide/from16 v22, v14

    move v1, v12

    :goto_a
    shr-long v9, v27, v1

    add-int/lit8 v0, v30, 0x1

    const/4 v6, 0x0

    move v12, v1

    move/from16 v13, v19

    move-wide/from16 v14, v22

    move-object/from16 v5, v25

    move v1, v0

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_d
    move-object/from16 v25, v5

    move v1, v12

    if-ne v11, v1, :cond_f

    goto :goto_b

    :cond_e
    move-object/from16 v25, v5

    :goto_b
    if-eq v8, v7, :cond_f

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v25

    const/4 v1, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_3

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->cleanUpDerivedStateObservations()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_d

    :catchall_2
    move-exception v0

    goto :goto_f

    :goto_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_10
    :goto_d
    iget-object v0, v2, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v3}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    :cond_11
    return-void

    :catchall_3
    move-exception v0

    goto :goto_e

    :catchall_4
    move-exception v0

    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_e
    :try_start_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_f
    iget-object v1, v2, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/Operations;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v3}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    :cond_12
    throw v0
.end method

.method public final applyLateChanges()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/Operations;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/CompositionImpl;->applyChangesInLocked(Landroidx/compose/runtime/changelist/ChangeList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    iget-object v2, v2, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v2, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Compose:abandons"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Lkotlin/sequences/GeneratorSequence$iterator$1;

    invoke-direct {v3, v2}, Lkotlin/sequences/GeneratorSequence$iterator$1;-><init>(Landroidx/collection/MutableSetWrapper;)V

    :goto_2
    iget-object v2, v3, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    check-cast v2, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-virtual {v2}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v3, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    check-cast v2, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-virtual {v2}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/RememberObserver;

    invoke-virtual {v3}, Lkotlin/sequences/GeneratorSequence$iterator$1;->remove()V

    invoke-interface {v2}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_1
    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1

    :catchall_2
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception v1

    goto :goto_5

    :cond_2
    :goto_4
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_5
    :try_start_4
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_6
    monitor-exit v0

    throw p0
.end method

.method public final changesApplied()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    iget-object v1, v1, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Compose:abandons"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lkotlin/sequences/GeneratorSequence$iterator$1;

    invoke-direct {v2, v1}, Lkotlin/sequences/GeneratorSequence$iterator$1;-><init>(Landroidx/collection/MutableSetWrapper;)V

    :goto_0
    invoke-virtual {v2}, Lkotlin/sequences/GeneratorSequence$iterator$1;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lkotlin/sequences/GeneratorSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    invoke-virtual {v2}, Lkotlin/sequences/GeneratorSequence$iterator$1;->remove()V

    invoke-interface {v1}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    :try_start_3
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    iget-object v2, v2, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v2, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Compose:abandons"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    new-instance v3, Lkotlin/sequences/GeneratorSequence$iterator$1;

    invoke-direct {v3, v2}, Lkotlin/sequences/GeneratorSequence$iterator$1;-><init>(Landroidx/collection/MutableSetWrapper;)V

    :goto_4
    invoke-virtual {v3}, Lkotlin/sequences/GeneratorSequence$iterator$1;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lkotlin/sequences/GeneratorSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/RememberObserver;

    invoke-virtual {v3}, Lkotlin/sequences/GeneratorSequence$iterator$1;->remove()V

    invoke-interface {v2}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    goto :goto_5

    :cond_2
    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_6

    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1

    :catchall_3
    move-exception p0

    goto :goto_8

    :catch_0
    move-exception v1

    goto :goto_7

    :cond_3
    :goto_6
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_7
    :try_start_6
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_8
    monitor-exit v0

    throw p0
.end method

.method public final cleanUpDerivedStateObservations()V
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    iget-object v2, v1, Landroidx/collection/MutableScatterMap;->metadata:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    const/4 v8, 0x7

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v12, 0x8

    if-ltz v3, :cond_c

    const/4 v14, 0x0

    const-wide/16 v15, 0x80

    :goto_0
    aget-wide v4, v2, v14

    const-wide/16 v17, 0xff

    not-long v6, v4

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    and-long/2addr v6, v9

    cmp-long v6, v6, v9

    if-eqz v6, :cond_b

    sub-int v6, v14, v3

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    rsub-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_a

    and-long v19, v4, v17

    cmp-long v19, v19, v15

    if-gez v19, :cond_9

    shl-int/lit8 v19, v14, 0x3

    move/from16 v20, v8

    add-int v8, v19, v7

    move-wide/from16 v21, v9

    iget-object v9, v1, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    aget-object v9, v9, v8

    iget-object v9, v1, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v9, v9, v8

    instance-of v10, v9, Landroidx/collection/MutableScatterSet;

    iget-object v11, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    if-eqz v10, :cond_6

    const-string v10, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroidx/collection/MutableScatterSet;

    iget-object v10, v9, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v13, v9, Landroidx/collection/MutableScatterSet;->metadata:[J

    move-wide/from16 v23, v15

    array-length v15, v13

    add-int/lit8 v15, v15, -0x2

    if-ltz v15, :cond_4

    move-wide/from16 v25, v4

    move/from16 v16, v12

    const/4 v12, 0x0

    :goto_2
    aget-wide v4, v13, v12

    move-object/from16 v27, v2

    move/from16 v28, v3

    not-long v2, v4

    shl-long v2, v2, v20

    and-long/2addr v2, v4

    and-long v2, v2, v21

    cmp-long v2, v2, v21

    if-eqz v2, :cond_3

    sub-int v2, v12, v15

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    rsub-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_2

    and-long v29, v4, v17

    cmp-long v29, v29, v23

    if-gez v29, :cond_0

    shl-int/lit8 v29, v12, 0x3

    move/from16 v30, v3

    add-int v3, v29, v30

    aget-object v29, v10, v3

    move-wide/from16 v31, v4

    move-object/from16 v4, v29

    check-cast v4, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v11, v4}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v9, v3}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    goto :goto_4

    :cond_0
    move/from16 v30, v3

    move-wide/from16 v31, v4

    :cond_1
    :goto_4
    shr-long v4, v31, v16

    add-int/lit8 v3, v30, 0x1

    goto :goto_3

    :cond_2
    move/from16 v3, v16

    if-ne v2, v3, :cond_5

    :cond_3
    if-eq v12, v15, :cond_5

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v27

    move/from16 v3, v28

    const/16 v16, 0x8

    goto :goto_2

    :cond_4
    move-object/from16 v27, v2

    move/from16 v28, v3

    move-wide/from16 v25, v4

    :cond_5
    invoke-virtual {v9}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v2

    goto :goto_5

    :cond_6
    move-object/from16 v27, v2

    move/from16 v28, v3

    move-wide/from16 v25, v4

    move-wide/from16 v23, v15

    const-string v2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v11, v9}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_8

    invoke-virtual {v1, v8}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_8
    const/16 v3, 0x8

    goto :goto_6

    :cond_9
    move-object/from16 v27, v2

    move/from16 v28, v3

    move-wide/from16 v25, v4

    move/from16 v20, v8

    move-wide/from16 v21, v9

    move-wide/from16 v23, v15

    move v3, v12

    :goto_6
    shr-long v4, v25, v3

    add-int/lit8 v7, v7, 0x1

    move v12, v3

    move/from16 v8, v20

    move-wide/from16 v9, v21

    move-wide/from16 v15, v23

    move-object/from16 v2, v27

    move/from16 v3, v28

    goto/16 :goto_1

    :cond_a
    move-object/from16 v27, v2

    move/from16 v28, v3

    move/from16 v20, v8

    move-wide/from16 v21, v9

    move v3, v12

    move-wide/from16 v23, v15

    if-ne v6, v3, :cond_d

    move/from16 v3, v28

    goto :goto_7

    :cond_b
    move-object/from16 v27, v2

    move/from16 v20, v8

    move-wide/from16 v21, v9

    move-wide/from16 v23, v15

    :goto_7
    if-eq v14, v3, :cond_d

    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v20

    move-wide/from16 v9, v21

    move-wide/from16 v15, v23

    move-object/from16 v2, v27

    const/16 v12, 0x8

    goto/16 :goto_0

    :cond_c
    move/from16 v20, v8

    move-wide/from16 v21, v9

    const-wide/16 v17, 0xff

    const-wide/16 v23, 0x80

    :cond_d
    iget-object v0, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v2, v0, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_13

    const/4 v4, 0x0

    :goto_8
    aget-wide v5, v2, v4

    not-long v7, v5

    shl-long v7, v7, v20

    and-long/2addr v7, v5

    and-long v7, v7, v21

    cmp-long v7, v7, v21

    if-eqz v7, :cond_12

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v16, 0x8

    rsub-int/lit8 v12, v7, 0x8

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v12, :cond_11

    and-long v8, v5, v17

    cmp-long v8, v8, v23

    if-gez v8, :cond_e

    const/4 v8, 0x1

    goto :goto_a

    :cond_e
    const/4 v8, 0x0

    :goto_a
    if-eqz v8, :cond_10

    shl-int/lit8 v8, v4, 0x3

    add-int/2addr v8, v7

    aget-object v9, v1, v8

    check-cast v9, Landroidx/compose/runtime/RecomposeScopeImpl;

    iget-object v9, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    if-eqz v9, :cond_f

    const/4 v9, 0x1

    goto :goto_b

    :cond_f
    const/4 v9, 0x0

    :goto_b
    if-nez v9, :cond_10

    invoke-virtual {v0, v8}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    :cond_10
    const/16 v8, 0x8

    shr-long/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_11
    const/16 v8, 0x8

    if-ne v12, v8, :cond_13

    goto :goto_c

    :cond_12
    const/16 v8, 0x8

    :goto_c
    if-eq v4, v3, :cond_13

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_13
    return-void
.end method

.method public final composeContent(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsForCompositionLocked()V

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default()Landroidx/collection/MutableScatterMap;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/NeverEqualPolicy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v3, v2, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v3, v3, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/Operations;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Expected applyChanges() to have been called"

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2, v1, p1}, Landroidx/compose/runtime/ComposerImpl;->doCompose-aFTiNEg(Landroidx/collection/MutableScatterMap;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    :try_start_5
    monitor-exit v0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    :try_start_6
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    iget-object v0, v0, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Compose:abandons"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    new-instance v1, Lkotlin/sequences/GeneratorSequence$iterator$1;

    invoke-direct {v1, v0}, Lkotlin/sequences/GeneratorSequence$iterator$1;-><init>(Landroidx/collection/MutableSetWrapper;)V

    :goto_2
    iget-object v0, v1, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    check-cast v0, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-virtual {v0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    check-cast v0, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-virtual {v0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    invoke-virtual {v1}, Lkotlin/sequences/GeneratorSequence$iterator$1;->remove()V

    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :cond_1
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p1

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_2
    :goto_4
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :goto_5
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    throw p1
.end method

.method public final composeInitial(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/CompositionImpl;->disposed:Z

    if-eqz v0, :cond_0

    const-string v0, "The composition is disposed"

    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0, p0, p1}, Landroidx/compose/runtime/CompositionContext;->composeInitial$runtime_release(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-void
.end method

.method public final deactivate()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    iget v1, v1, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    iget-object v4, v4, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v4}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_1
    const-string v4, "Compose:deactivate"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    invoke-direct {v4, v5}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1, v4}, Landroidx/compose/runtime/ComposerKt;->deactivateCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->onEndChanges()V

    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchRememberObservers()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw p0

    :cond_2
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->clear()V

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->clear()V

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->clear()V

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/Operations;->clear()V

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/Operations;->clear()V

    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/Operations;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :goto_3
    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public final dispose()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-boolean v1, v1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    if-eqz v1, :cond_0

    const-string v1, "Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block."

    invoke-static {v1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-boolean v1, p0, Landroidx/compose/runtime/CompositionImpl;->disposed:Z

    if-nez v1, :cond_6

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/runtime/CompositionImpl;->disposed:Z

    sget-object v2, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->lambda-2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v2, v2, Landroidx/compose/runtime/ComposerImpl;->deferredChanges:Landroidx/compose/runtime/changelist/ChangeList;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/CompositionImpl;->applyChangesInLocked(Landroidx/compose/runtime/changelist/ChangeList;)V

    :cond_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    iget v2, v2, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    const/4 v3, 0x0

    if-lez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-nez v2, :cond_3

    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    iget-object v4, v4, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v4}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    new-instance v4, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    invoke-direct {v4, v5}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2, v4}, Landroidx/compose/runtime/ComposerKt;->removeCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->clear()V

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->onEndChanges()V

    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchRememberObservers()V

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    :cond_5
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Compose:Composer.dispose"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, v1, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/CompositionContext;->unregisterComposer$runtime_release(Landroidx/compose/runtime/ComposerImpl;)V

    iget-object v2, v1, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v2, v2, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operations;->clear()V

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    iget-object v1, v1, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :goto_3
    monitor-exit v0

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/CompositionContext;->unregisterComposition$runtime_release(Landroidx/compose/runtime/CompositionImpl;)V

    return-void

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public final drainPendingModificationsForCompositionLocked()V
    .locals 5

    sget-object v0, Landroidx/compose/runtime/AnchoredGroupPath;->PendingApplyNoModifications:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, v2, Ljava/util/Set;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    check-cast v2, Ljava/util/Set;

    invoke-virtual {p0, v2, v3}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    return-void

    :cond_0
    instance-of v0, v2, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v2, [Ljava/util/Set;

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v4, v2, v1

    invoke-virtual {p0, v4, v3}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "corrupt pendingModifications drain: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    const-string/jumbo p0, "pending composition has not been applied"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public final drainPendingModificationsLocked()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/AnchoredGroupPath;->PendingApplyNoModifications:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    instance-of v2, v0, Ljava/util/Set;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0, v0, v3}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    return-void

    :cond_0
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    check-cast v0, [Ljava/util/Set;

    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    invoke-virtual {p0, v4, v3}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const-string p0, "calling recordModificationsOf and applyChanges concurrently is not supported"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "corrupt pendingModifications drain: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public final drainPendingModificationsOutOfBandLocked()V
    .locals 5

    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/AnchoredGroupPath;->PendingApplyNoModifications:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    instance-of v2, v0, Ljava/util/Set;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0, v0, v3}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    return-void

    :cond_2
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_4

    check-cast v0, [Ljava/util/Set;

    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    invoke-virtual {p0, v4, v3}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "corrupt pendingModifications drain: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final insertMovableContent(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-gtz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/ComposerImpl;->insertMovableContentGuarded(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->cleanUpCompose()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->abortRoot()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object v1, v0, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Compose:abandons"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v1, Lkotlin/sequences/GeneratorSequence$iterator$1;

    invoke-direct {v1, v0}, Lkotlin/sequences/GeneratorSequence$iterator$1;-><init>(Landroidx/collection/MutableSetWrapper;)V

    :goto_0
    invoke-virtual {v1}, Lkotlin/sequences/GeneratorSequence$iterator$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lkotlin/sequences/GeneratorSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    invoke-virtual {v1}, Lkotlin/sequences/GeneratorSequence$iterator$1;->remove()V

    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p1

    :cond_1
    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    throw p1

    :cond_2
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    iget-object p0, p0, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MovableContentStateReference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public final invalidate(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;
    .locals 2

    iget v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    :cond_0
    iget-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3
    iget-object v1, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/runtime/CompositionImpl;->invalidateChecked(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    return-object p0

    :cond_5
    :goto_0
    sget-object p0, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    return-object p0
.end method

.method public final invalidateAll()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    iget-object p0, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    instance-of v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/CompositionImpl;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3, v5}, Landroidx/compose/runtime/CompositionImpl;->invalidate(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final invalidateChecked(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    iget-object v7, v0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    iget v8, v0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    iget-boolean v9, v7, Landroidx/compose/runtime/SlotTable;->writer:Z

    if-eqz v9, :cond_0

    const-string v9, "Writer is active"

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    if-ltz v8, :cond_1

    iget v9, v7, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ge v8, v9, :cond_1

    goto :goto_0

    :cond_1
    const-string v9, "Invalid group index"

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v7, v7, Landroidx/compose/runtime/SlotTable;->groups:[I

    mul-int/lit8 v9, v8, 0x5

    add-int/lit8 v9, v9, 0x3

    aget v7, v7, v9

    add-int/2addr v7, v8

    iget v9, v2, Landroidx/compose/runtime/Anchor;->location:I

    if-gt v8, v9, :cond_2

    if-ge v9, v7, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    move-object v6, v5

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_3
    :goto_2
    if-nez v6, :cond_e

    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-boolean v7, v5, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    if-eqz v7, :cond_4

    invoke-virtual {v5, v1, v3}, Landroidx/compose/runtime/ComposerImpl;->tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_5

    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v0

    :cond_5
    :try_start_1
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/NeverEqualPolicy;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_6

    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    sget-object v7, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$2:Landroidx/compose/runtime/NeverEqualPolicy;

    invoke-virtual {v5, v1, v7}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_6
    instance-of v5, v3, Landroidx/compose/runtime/DerivedSnapshotState;

    if-nez v5, :cond_7

    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    sget-object v7, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$2:Landroidx/compose/runtime/NeverEqualPolicy;

    invoke-virtual {v5, v1, v7}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_7
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_d

    instance-of v7, v5, Landroidx/collection/MutableScatterSet;

    if-eqz v7, :cond_c

    check-cast v5, Landroidx/collection/MutableScatterSet;

    iget-object v7, v5, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v5, v5, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v9, v5

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_d

    const/4 v10, 0x0

    :goto_4
    aget-wide v11, v5, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_b

    sub-int v13, v10, v9

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v13, :cond_a

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_8

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    aget-object v8, v7, v16

    move/from16 v16, v14

    sget-object v14, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$2:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v8, v14, :cond_9

    goto :goto_6

    :cond_8
    move/from16 v16, v14

    :cond_9
    shr-long v11, v11, v16

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v16

    goto :goto_5

    :cond_a
    move v8, v14

    if-ne v13, v8, :cond_d

    :cond_b
    if-eq v10, v9, :cond_d

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_c
    sget-object v7, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$2:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v5, v7, :cond_d

    goto :goto_6

    :cond_d
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    invoke-static {v5, v1, v3}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_e
    :goto_6
    monitor-exit v4

    if-eqz v6, :cond_f

    invoke-virtual {v6, v1, v2, v3}, Landroidx/compose/runtime/CompositionImpl;->invalidateChecked(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/CompositionContext;->invalidate$runtime_release(Landroidx/compose/runtime/CompositionImpl;)V

    iget-object v0, v0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-boolean v0, v0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    if-eqz v0, :cond_10

    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->DEFERRED:Landroidx/compose/runtime/InvalidationResult;

    return-object v0

    :cond_10
    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->SCHEDULED:Landroidx/compose/runtime/InvalidationResult;

    return-object v0

    :goto_7
    monitor-exit v4

    throw v0
.end method

.method public final invalidateScopeOfLocked(Ljava/lang/Object;)V
    .locals 14

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v1, v0, Landroidx/collection/MutableScatterSet;

    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/collection/MutableScatterMap;

    if-eqz v1, :cond_3

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v1, v0, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_4

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    aget-wide v5, v0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, v1, v10

    check-cast v10, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v10, p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v11

    sget-object v12, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    if-ne v11, v12, :cond_0

    invoke-static {p0, p1, v10}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_4

    :cond_2
    if-eq v4, v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    if-ne v1, v2, :cond_4

    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final observesAnyOf(Ljava/util/Set;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    iget-object v3, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    iget-object v0, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    check-cast v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    iget-object v1, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;->set:Landroidx/collection/MutableScatterSet;

    iget-object v2, v1, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v6, v1

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_7

    move v7, v4

    :goto_0
    aget-wide v8, v1, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v4

    :goto_1
    if-ge v12, v10, :cond_2

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_1

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget-object v13, v2, v13

    invoke-virtual {v0, v13}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v3, v13}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    return v5

    :cond_1
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    if-ne v10, v11, :cond_7

    :cond_3
    if-eq v7, v6, :cond_7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v3, v2}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_6
    return v5

    :cond_7
    return v4
.end method

.method public final recompose()Z
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsForCompositionLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default()Landroidx/collection/MutableScatterMap;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/NeverEqualPolicy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->recompose-aFTiNEg$runtime_release(Landroidx/collection/MutableScatterMap;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsLocked()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v2

    :goto_1
    :try_start_3
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    iget-object v2, v2, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Landroidx/collection/MutableSetWrapper;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v2, Landroidx/collection/MutableSetWrapper;->parent$1:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Compose:abandons"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    new-instance v3, Lkotlin/sequences/GeneratorSequence$iterator$1;

    invoke-direct {v3, v2}, Lkotlin/sequences/GeneratorSequence$iterator$1;-><init>(Landroidx/collection/MutableSetWrapper;)V

    :goto_3
    iget-object v2, v3, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    check-cast v2, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-virtual {v2}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v3, Lkotlin/sequences/GeneratorSequence$iterator$1;->nextItem:Ljava/lang/Object;

    check-cast v2, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-virtual {v2}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/RememberObserver;

    invoke-virtual {v3}, Lkotlin/sequences/GeneratorSequence$iterator$1;->remove()V

    invoke-interface {v2}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    :cond_1
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_5

    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1

    :catchall_2
    move-exception p0

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :cond_2
    :goto_5
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_6
    :try_start_7
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_7
    monitor-exit v0

    throw p0
.end method

.method public final recordModificationsOf(Landroidx/compose/runtime/collection/ScatterSetWrapper;)V
    .locals 4

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    sget-object v2, Landroidx/compose/runtime/AnchoredGroupPath;->PendingApplyNoModifications:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    move-object v2, p1

    goto :goto_1

    :cond_2
    instance-of v2, v0, Ljava/util/Set;

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    aput-object p1, v2, v1

    goto :goto_1

    :cond_3
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_5

    const-string v1, "null cannot be cast to non-null type kotlin.Array<kotlin.collections.Set<kotlin.Any>>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, [Ljava/util/Set;

    const-string v2, "<this>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    aput-object p1, v1, v2

    move-object v2, v1

    :goto_1
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_4

    iget-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "corrupt pendingModifications: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final recordReadOf(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget v3, v2, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    if-lez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_c

    iget v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    if-nez v3, :cond_2

    new-instance v3, Landroidx/collection/MutableObjectIntMap;

    invoke-direct {v3}, Landroidx/collection/MutableObjectIntMap;-><init>()V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    :cond_2
    iget v5, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    invoke-virtual {v3, v1}, Landroidx/collection/MutableObjectIntMap;->findIndex(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_3

    not-int v6, v6

    const/4 v7, -0x1

    goto :goto_0

    :cond_3
    iget-object v7, v3, Landroidx/collection/MutableObjectIntMap;->values:[I

    aget v7, v7, v6

    :goto_0
    iget-object v8, v3, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    aput-object v1, v8, v6

    iget-object v3, v3, Landroidx/collection/MutableObjectIntMap;->values:[I

    aput v5, v3, v6

    iget v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    if-ne v7, v3, :cond_4

    goto/16 :goto_5

    :cond_4
    :goto_1
    instance-of v3, v1, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v3, :cond_5

    move-object v3, v1

    check-cast v3, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime_release(I)V

    :cond_5
    iget-object v3, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    instance-of v3, v1, Landroidx/compose/runtime/DerivedSnapshotState;

    if-eqz v3, :cond_c

    move-object v3, v1

    check-cast v3, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v3}, Landroidx/compose/runtime/DerivedSnapshotState;->getCurrentRecord()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v5

    iget-object v0, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    invoke-static {v0, v1}, Landroidx/compose/runtime/collection/ScopeMap;->removeScope-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    iget-object v6, v5, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->dependencies:Landroidx/collection/MutableObjectIntMap;

    iget-object v7, v6, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    iget-object v6, v6, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    array-length v8, v6

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_a

    const/4 v10, 0x0

    :goto_2
    aget-wide v11, v6, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_9

    sub-int v13, v10, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v13, :cond_8

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_7

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    aget-object v16, v7, v16

    move-object/from16 v9, v16

    check-cast v9, Landroidx/compose/runtime/snapshots/StateObject;

    move/from16 v16, v14

    instance-of v14, v9, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v14, :cond_6

    move-object v14, v9

    check-cast v14, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime_release(I)V

    :cond_6
    invoke-static {v0, v9, v1}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    move/from16 v16, v14

    :goto_4
    shr-long v11, v11, v16

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v16

    goto :goto_3

    :cond_8
    move v9, v14

    if-ne v13, v9, :cond_a

    :cond_9
    if-eq v10, v8, :cond_a

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_a
    iget-object v0, v5, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    iget-object v1, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    if-nez v1, :cond_b

    new-instance v1, Landroidx/collection/MutableScatterMap;

    invoke-direct {v1}, Landroidx/collection/MutableScatterMap;-><init>()V

    iput-object v1, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    :cond_b
    invoke-virtual {v1, v3, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    :goto_5
    return-void
.end method

.method public final recordWriteOf(Ljava/lang/Object;)V
    .locals 14

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->invalidateScopeOfLocked(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    instance-of v1, p1, Landroidx/collection/MutableScatterSet;

    if-eqz v1, :cond_3

    check-cast p1, Landroidx/collection/MutableScatterSet;

    iget-object v1, p1, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object p1, p1, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_4

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    aget-wide v5, p1, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, v1, v10

    check-cast v10, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {p0, v10}, Landroidx/compose/runtime/CompositionImpl;->invalidateScopeOfLocked(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_2
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_4

    :cond_2
    if-eq v4, v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    check-cast p1, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->invalidateScopeOfLocked(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p0
.end method
