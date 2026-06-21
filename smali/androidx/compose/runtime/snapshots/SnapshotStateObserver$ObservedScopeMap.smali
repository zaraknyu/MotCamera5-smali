.class public final Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public currentScope:Ljava/lang/Object;

.field public currentScopeReads:Landroidx/collection/MutableObjectIntMap;

.field public currentToken:I

.field public final dependencyToDerivedStates:Landroidx/collection/MutableScatterMap;

.field public deriveStateScopeCount:I

.field public final derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

.field public final invalidated:Landroidx/collection/MutableScatterSet;

.field public final onChanged:Lkotlin/jvm/functions/Function1;

.field public final recordedDerivedStateValues:Ljava/util/HashMap;

.field public final scopeToValues:Landroidx/collection/MutableScatterMap;

.field public final statesToReread:Landroidx/compose/runtime/collection/MutableVector;

.field public final valueToScopes:Landroidx/collection/MutableScatterMap;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lkotlin/jvm/functions/Function1;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default()Landroidx/collection/MutableScatterMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/collection/MutableScatterMap;

    new-instance p1, Landroidx/collection/MutableScatterMap;

    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    new-instance p1, Landroidx/collection/MutableScatterSet;

    invoke-direct {p1}, Landroidx/collection/MutableScatterSet;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v0, v0, [Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-direct {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    new-instance p1, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default()Landroidx/collection/MutableScatterMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/collection/MutableScatterMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final observe(Landroidx/compose/ui/node/OwnerScope;Landroidx/compose/runtime/Recomposer$effectJob$1$1;Lkotlin/jvm/functions/Function0;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    iget v4, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    iput-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/MutableObjectIntMap;

    iput-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    iget v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    iput v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    :cond_0
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    invoke-static {}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v5

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    invoke-static {v7, v1}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->observe(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, v5, Landroidx/compose/runtime/collection/MutableVector;->size:I

    sub-int/2addr v1, v6

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    iget-object v7, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    if-eqz v7, :cond_7

    iget-object v8, v7, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    array-length v9, v8

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_7

    const/4 v11, 0x0

    :goto_0
    aget-wide v12, v8, v11

    not-long v14, v12

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v12

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v14, v14, v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_6

    sub-int v14, v11, v9

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v15, 0x8

    rsub-int/lit8 v14, v14, 0x8

    move/from16 p1, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v14, :cond_5

    const-wide/16 v16, 0xff

    and-long v16, v12, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_3

    shl-int/lit8 v16, v11, 0x3

    add-int v10, v16, v6

    move/from16 p3, v15

    iget-object v15, v7, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    aget-object v15, v15, v10

    move/from16 v16, v6

    iget-object v6, v7, Landroidx/collection/MutableObjectIntMap;->values:[I

    aget v6, v6, v10

    if-eq v6, v5, :cond_1

    move/from16 v6, p1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_2

    invoke-virtual {v0, v1, v15}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    if-eqz v6, :cond_4

    invoke-virtual {v7, v10}, Landroidx/collection/MutableObjectIntMap;->removeValueAt(I)V

    goto :goto_3

    :cond_3
    move/from16 v16, v6

    move/from16 p3, v15

    :cond_4
    :goto_3
    shr-long v12, v12, p3

    add-int/lit8 v6, v16, 0x1

    move/from16 v15, p3

    goto :goto_1

    :cond_5
    move v6, v15

    if-ne v14, v6, :cond_7

    goto :goto_4

    :cond_6
    move/from16 p1, v6

    :goto_4
    if-eq v11, v9, :cond_7

    add-int/lit8 v11, v11, 0x1

    move/from16 v6, p1

    goto :goto_0

    :cond_7
    iput-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    iput-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    iput v4, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    return-void

    :catchall_0
    move-exception v0

    move/from16 p1, v6

    iget v1, v5, Landroidx/compose/runtime/collection/MutableVector;->size:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    throw v0
.end method

.method public final recordInvalidation(Ljava/util/Set;)Z
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$3:Landroidx/compose/runtime/NeverEqualPolicy;

    instance-of v3, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.DerivedState<kotlin.Any?>"

    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    const/4 v11, 0x2

    const/16 v16, 0x0

    const-wide/16 v17, 0x80

    iget-object v6, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/collection/MutableScatterMap;

    iget-object v7, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    const-wide/16 v19, 0xff

    iget-object v8, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/collection/MutableScatterMap;

    iget-object v9, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    if-eqz v3, :cond_21

    check-cast v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    iget-object v1, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;->set:Landroidx/collection/MutableScatterSet;

    iget-object v3, v1, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/MutableScatterSet;->metadata:[J

    const/16 v21, 0x7

    array-length v10, v1

    sub-int/2addr v10, v11

    if-ltz v10, :cond_20

    move/from16 v12, v16

    move v13, v12

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    :goto_0
    const/16 v24, 0x8

    aget-wide v14, v1, v12

    move/from16 p1, v12

    not-long v11, v14

    shl-long v11, v11, v21

    and-long/2addr v11, v14

    and-long v11, v11, v22

    cmp-long v11, v11, v22

    if-eqz v11, :cond_1f

    sub-int v12, p1, v10

    not-int v11, v12

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    move/from16 v12, v16

    :goto_1
    if-ge v12, v11, :cond_1e

    and-long v27, v14, v19

    cmp-long v27, v27, v17

    if-gez v27, :cond_1d

    shl-int/lit8 v27, p1, 0x3

    add-int v27, v27, v12

    move-object/from16 v28, v1

    aget-object v1, v3, v27

    move-object/from16 v27, v2

    instance-of v2, v1, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    move-object/from16 v29, v3

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime_release(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_11

    :cond_0
    move-object/from16 v29, v3

    :cond_1
    invoke-virtual {v6, v1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v6, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_15

    instance-of v3, v2, Landroidx/collection/MutableScatterSet;

    if-eqz v3, :cond_e

    check-cast v2, Landroidx/collection/MutableScatterSet;

    iget-object v3, v2, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v2, v2, Landroidx/collection/MutableScatterSet;->metadata:[J

    move-object/from16 v30, v3

    array-length v3, v2

    const/16 v26, 0x2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_15

    move-object/from16 v31, v2

    move/from16 v32, v12

    move/from16 v33, v13

    move/from16 v2, v16

    :goto_2
    aget-wide v12, v31, v2

    move-wide/from16 v34, v14

    not-long v14, v12

    shl-long v14, v14, v21

    and-long/2addr v14, v12

    and-long v14, v14, v22

    cmp-long v14, v14, v22

    if-eqz v14, :cond_c

    sub-int v14, v2, v3

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    rsub-int/lit8 v14, v14, 0x8

    move/from16 v15, v16

    :goto_3
    if-ge v15, v14, :cond_b

    and-long v36, v12, v19

    cmp-long v36, v36, v17

    if-gez v36, :cond_a

    shl-int/lit8 v36, v2, 0x3

    add-int v36, v36, v15

    aget-object v36, v30, v36

    move-wide/from16 v37, v12

    move-object/from16 v12, v36

    check-cast v12, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move/from16 v36, v15

    iget-object v15, v12, Landroidx/compose/runtime/DerivedSnapshotState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    if-nez v15, :cond_2

    move-object/from16 v15, v27

    :cond_2
    invoke-virtual {v12}, Landroidx/compose/runtime/DerivedSnapshotState;->getCurrentRecord()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    invoke-interface {v15, v0, v13}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v8, v12}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v12, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v12, :cond_7

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v12, v0, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v13, v0

    const/16 v26, 0x2

    add-int/lit8 v13, v13, -0x2

    if-ltz v13, :cond_6

    move/from16 v39, v10

    move/from16 v40, v11

    move/from16 v15, v16

    :goto_4
    aget-wide v10, v0, v15

    move-object/from16 v42, v0

    move-object/from16 v41, v1

    not-long v0, v10

    shl-long v0, v0, v21

    and-long/2addr v0, v10

    and-long v0, v0, v22

    cmp-long v0, v0, v22

    if-eqz v0, :cond_5

    sub-int v0, v15, v13

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    rsub-int/lit8 v0, v0, 0x8

    move/from16 v1, v16

    :goto_5
    if-ge v1, v0, :cond_4

    and-long v43, v10, v19

    cmp-long v43, v43, v17

    if-gez v43, :cond_3

    shl-int/lit8 v33, v15, 0x3

    add-int v33, v33, v1

    move/from16 v43, v1

    aget-object v1, v12, v33

    invoke-virtual {v9, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v33, 0x1

    goto :goto_6

    :cond_3
    move/from16 v43, v1

    :goto_6
    shr-long v10, v10, v24

    add-int/lit8 v1, v43, 0x1

    goto :goto_5

    :cond_4
    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    :cond_5
    if-eq v15, v13, :cond_9

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v41

    move-object/from16 v0, v42

    const/16 v24, 0x8

    goto :goto_4

    :cond_6
    move-object/from16 v41, v1

    move/from16 v39, v10

    move/from16 v40, v11

    goto :goto_7

    :cond_7
    move-object/from16 v41, v1

    move/from16 v39, v10

    move/from16 v40, v11

    invoke-virtual {v9, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v33, 0x1

    goto :goto_7

    :cond_8
    move-object/from16 v41, v1

    move/from16 v39, v10

    move/from16 v40, v11

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_9
    :goto_7
    const/16 v1, 0x8

    goto :goto_8

    :cond_a
    move-object/from16 v41, v1

    move/from16 v39, v10

    move/from16 v40, v11

    move-wide/from16 v37, v12

    move/from16 v36, v15

    goto :goto_7

    :goto_8
    shr-long v12, v37, v1

    add-int/lit8 v15, v36, 0x1

    move-object/from16 v0, p0

    move/from16 v24, v1

    move/from16 v10, v39

    move/from16 v11, v40

    move-object/from16 v1, v41

    goto/16 :goto_3

    :cond_b
    move-object/from16 v41, v1

    move/from16 v39, v10

    move/from16 v40, v11

    move/from16 v1, v24

    if-ne v14, v1, :cond_d

    goto :goto_9

    :cond_c
    move-object/from16 v41, v1

    move/from16 v39, v10

    move/from16 v40, v11

    :goto_9
    if-eq v2, v3, :cond_d

    add-int/lit8 v2, v2, 0x1

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move-wide/from16 v14, v34

    move/from16 v10, v39

    move/from16 v11, v40

    move-object/from16 v1, v41

    goto/16 :goto_2

    :cond_d
    move/from16 v13, v33

    goto/16 :goto_c

    :cond_e
    move-object/from16 v41, v1

    move/from16 v39, v10

    move/from16 v40, v11

    move/from16 v32, v12

    move-wide/from16 v34, v14

    check-cast v2, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v2, Landroidx/compose/runtime/DerivedSnapshotState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    if-nez v1, :cond_f

    move-object/from16 v1, v27

    :cond_f
    invoke-virtual {v2}, Landroidx/compose/runtime/DerivedSnapshotState;->getCurrentRecord()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    invoke-interface {v1, v3, v0}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v8, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    instance-of v1, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v1, :cond_13

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v1, v0, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v2, v0

    const/16 v26, 0x2

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_16

    move/from16 v3, v16

    :goto_a
    aget-wide v10, v0, v3

    not-long v14, v10

    shl-long v14, v14, v21

    and-long/2addr v14, v10

    and-long v14, v14, v22

    cmp-long v12, v14, v22

    if-eqz v12, :cond_12

    sub-int v12, v3, v2

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v14, v12, 0x8

    move/from16 v12, v16

    :goto_b
    if-ge v12, v14, :cond_11

    and-long v30, v10, v19

    cmp-long v15, v30, v17

    if-gez v15, :cond_10

    shl-int/lit8 v13, v3, 0x3

    add-int/2addr v13, v12

    aget-object v13, v1, v13

    invoke-virtual {v9, v13}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    :cond_10
    const/16 v15, 0x8

    shr-long/2addr v10, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_11
    const/16 v15, 0x8

    if-ne v14, v15, :cond_16

    :cond_12
    if-eq v3, v2, :cond_16

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_13
    invoke-virtual {v9, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    goto :goto_c

    :cond_14
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_c

    :cond_15
    move-object/from16 v41, v1

    move/from16 v39, v10

    move/from16 v40, v11

    move/from16 v32, v12

    move-wide/from16 v34, v14

    :cond_16
    :goto_c
    move-object/from16 v0, v41

    goto :goto_d

    :cond_17
    move/from16 v39, v10

    move/from16 v40, v11

    move/from16 v32, v12

    move-wide/from16 v34, v14

    move-object v0, v1

    :goto_d
    invoke-virtual {v8, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    instance-of v1, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v1, :cond_1b

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v1, v0, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v2, v0

    const/16 v26, 0x2

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_1c

    move/from16 v3, v16

    :goto_e
    aget-wide v10, v0, v3

    not-long v14, v10

    shl-long v14, v14, v21

    and-long/2addr v14, v10

    and-long v14, v14, v22

    cmp-long v12, v14, v22

    if-eqz v12, :cond_1a

    sub-int v12, v3, v2

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v14, v12, 0x8

    move/from16 v12, v16

    :goto_f
    if-ge v12, v14, :cond_19

    and-long v30, v10, v19

    cmp-long v15, v30, v17

    if-gez v15, :cond_18

    shl-int/lit8 v13, v3, 0x3

    add-int/2addr v13, v12

    aget-object v13, v1, v13

    invoke-virtual {v9, v13}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    :cond_18
    const/16 v15, 0x8

    shr-long/2addr v10, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_19
    const/16 v15, 0x8

    if-ne v14, v15, :cond_1c

    :cond_1a
    if-eq v3, v2, :cond_1c

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1b
    invoke-virtual {v9, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    :cond_1c
    :goto_10
    const/16 v15, 0x8

    goto :goto_12

    :cond_1d
    move-object/from16 v28, v1

    move-object/from16 v27, v2

    move-object/from16 v29, v3

    :goto_11
    move/from16 v39, v10

    move/from16 v40, v11

    move/from16 v32, v12

    move-wide/from16 v34, v14

    goto :goto_10

    :goto_12
    shr-long v0, v34, v15

    add-int/lit8 v12, v32, 0x1

    move/from16 v24, v15

    move-object/from16 v2, v27

    move-object/from16 v3, v29

    move/from16 v10, v39

    move/from16 v11, v40

    move-wide v14, v0

    move-object/from16 v1, v28

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v28, v1

    move-object/from16 v27, v2

    move-object/from16 v29, v3

    move/from16 v39, v10

    move v14, v11

    move/from16 v15, v24

    if-ne v14, v15, :cond_3c

    move/from16 v10, v39

    :goto_13
    move/from16 v0, p1

    goto :goto_14

    :cond_1f
    move-object/from16 v28, v1

    move-object/from16 v27, v2

    move-object/from16 v29, v3

    goto :goto_13

    :goto_14
    if-eq v0, v10, :cond_3c

    add-int/lit8 v12, v0, 0x1

    move-object/from16 v2, v27

    move-object/from16 v1, v28

    move-object/from16 v3, v29

    const/4 v11, 0x2

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_20
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move/from16 v13, v16

    goto/16 :goto_26

    :cond_21
    move-object/from16 v27, v2

    const/16 v21, 0x7

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move-object v0, v1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move/from16 v13, v16

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v2, :cond_22

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime_release(I)Z

    move-result v2

    if-nez v2, :cond_22

    move-object/from16 p1, v0

    move-object/from16 v30, v4

    move-object/from16 v31, v6

    goto/16 :goto_25

    :cond_22
    invoke-virtual {v6, v1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v6, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_35

    instance-of v3, v2, Landroidx/collection/MutableScatterSet;

    if-eqz v3, :cond_2e

    check-cast v2, Landroidx/collection/MutableScatterSet;

    iget-object v3, v2, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v2, v2, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v10, v2

    const/16 v26, 0x2

    add-int/lit8 v10, v10, -0x2

    if-ltz v10, :cond_35

    move/from16 v11, v16

    :goto_16
    aget-wide v14, v2, v11

    move-object/from16 v28, v2

    move-object v12, v3

    not-long v2, v14

    shl-long v2, v2, v21

    and-long/2addr v2, v14

    and-long v2, v2, v22

    cmp-long v2, v2, v22

    if-eqz v2, :cond_2d

    sub-int v2, v11, v10

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v2, v2, 0x8

    move/from16 v3, v16

    :goto_17
    if-ge v3, v2, :cond_2c

    and-long v29, v14, v19

    cmp-long v29, v29, v17

    if-gez v29, :cond_2a

    shl-int/lit8 v29, v11, 0x3

    add-int v29, v29, v3

    aget-object v29, v12, v29

    move-object/from16 p1, v0

    move-object/from16 v0, v29

    check-cast v0, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v29, v3

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v30, v4

    iget-object v4, v0, Landroidx/compose/runtime/DerivedSnapshotState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    if-nez v4, :cond_23

    move-object/from16 v4, v27

    :cond_23
    move-object/from16 v31, v6

    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getCurrentRecord()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v6

    iget-object v6, v6, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    invoke-interface {v4, v6, v3}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v8, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    instance-of v3, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v3, :cond_28

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v3, v0, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v4, v0

    const/16 v26, 0x2

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_2b

    move-object/from16 v32, v12

    move/from16 v33, v13

    move/from16 v6, v16

    :goto_18
    aget-wide v12, v0, v6

    move-wide/from16 v34, v14

    not-long v14, v12

    shl-long v14, v14, v21

    and-long/2addr v14, v12

    and-long v14, v14, v22

    cmp-long v14, v14, v22

    if-eqz v14, :cond_26

    sub-int v14, v6, v4

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v14, v14, 0x8

    move/from16 v15, v16

    :goto_19
    if-ge v15, v14, :cond_25

    and-long v36, v12, v19

    cmp-long v36, v36, v17

    if-gez v36, :cond_24

    shl-int/lit8 v33, v6, 0x3

    add-int v33, v33, v15

    move-object/from16 v36, v0

    aget-object v0, v3, v33

    invoke-virtual {v9, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v33, 0x1

    :goto_1a
    const/16 v0, 0x8

    goto :goto_1b

    :cond_24
    move-object/from16 v36, v0

    goto :goto_1a

    :goto_1b
    shr-long/2addr v12, v0

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v36

    goto :goto_19

    :cond_25
    move-object/from16 v36, v0

    const/16 v0, 0x8

    if-ne v14, v0, :cond_27

    goto :goto_1c

    :cond_26
    move-object/from16 v36, v0

    :goto_1c
    if-eq v6, v4, :cond_27

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v14, v34

    move-object/from16 v0, v36

    goto :goto_18

    :cond_27
    move/from16 v13, v33

    goto :goto_1d

    :cond_28
    move-object/from16 v32, v12

    move-wide/from16 v34, v14

    invoke-virtual {v9, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    goto :goto_1d

    :cond_29
    move-object/from16 v32, v12

    move-wide/from16 v34, v14

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :goto_1d
    const/16 v15, 0x8

    goto :goto_1e

    :cond_2a
    move-object/from16 p1, v0

    move/from16 v29, v3

    move-object/from16 v30, v4

    move-object/from16 v31, v6

    :cond_2b
    move-object/from16 v32, v12

    move-wide/from16 v34, v14

    goto :goto_1d

    :goto_1e
    shr-long v3, v34, v15

    add-int/lit8 v0, v29, 0x1

    move-wide v14, v3

    move-object/from16 v4, v30

    move-object/from16 v6, v31

    move-object/from16 v12, v32

    move v3, v0

    move-object/from16 v0, p1

    goto/16 :goto_17

    :cond_2c
    move-object/from16 p1, v0

    move-object/from16 v30, v4

    move-object/from16 v31, v6

    move-object/from16 v32, v12

    const/16 v15, 0x8

    if-ne v2, v15, :cond_36

    goto :goto_1f

    :cond_2d
    move-object/from16 p1, v0

    move-object/from16 v30, v4

    move-object/from16 v31, v6

    move-object/from16 v32, v12

    :goto_1f
    if-eq v11, v10, :cond_36

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, v28

    move-object/from16 v4, v30

    move-object/from16 v6, v31

    move-object/from16 v3, v32

    goto/16 :goto_16

    :cond_2e
    move-object/from16 p1, v0

    move-object/from16 v30, v4

    move-object/from16 v31, v6

    check-cast v2, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, v2, Landroidx/compose/runtime/DerivedSnapshotState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    if-nez v3, :cond_2f

    move-object/from16 v3, v27

    :cond_2f
    invoke-virtual {v2}, Landroidx/compose/runtime/DerivedSnapshotState;->getCurrentRecord()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v4

    iget-object v4, v4, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    invoke-interface {v3, v4, v0}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {v8, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_36

    instance-of v2, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v2, :cond_33

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v2, v0, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v3, v0

    const/16 v26, 0x2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_36

    move/from16 v4, v16

    :goto_20
    aget-wide v10, v0, v4

    not-long v14, v10

    shl-long v14, v14, v21

    and-long/2addr v14, v10

    and-long v14, v14, v22

    cmp-long v6, v14, v22

    if-eqz v6, :cond_32

    sub-int v6, v4, v3

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v14, v6, 0x8

    move/from16 v6, v16

    :goto_21
    if-ge v6, v14, :cond_31

    and-long v28, v10, v19

    cmp-long v12, v28, v17

    if-gez v12, :cond_30

    shl-int/lit8 v12, v4, 0x3

    add-int/2addr v12, v6

    aget-object v12, v2, v12

    invoke-virtual {v9, v12}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    :cond_30
    const/16 v15, 0x8

    shr-long/2addr v10, v15

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_31
    const/16 v15, 0x8

    if-ne v14, v15, :cond_36

    :cond_32
    if-eq v4, v3, :cond_36

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_33
    invoke-virtual {v9, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    goto :goto_22

    :cond_34
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_22

    :cond_35
    move-object/from16 p1, v0

    move-object/from16 v30, v4

    move-object/from16 v31, v6

    :cond_36
    :goto_22
    invoke-virtual {v8, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    instance-of v1, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v1, :cond_3a

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v1, v0, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v2, v0

    const/16 v26, 0x2

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_3b

    move/from16 v3, v16

    :goto_23
    aget-wide v10, v0, v3

    not-long v14, v10

    shl-long v14, v14, v21

    and-long/2addr v14, v10

    and-long v14, v14, v22

    cmp-long v4, v14, v22

    if-eqz v4, :cond_39

    sub-int v4, v3, v2

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v14, v4, 0x8

    move/from16 v4, v16

    :goto_24
    if-ge v4, v14, :cond_38

    and-long v28, v10, v19

    cmp-long v6, v28, v17

    if-gez v6, :cond_37

    shl-int/lit8 v6, v3, 0x3

    add-int/2addr v6, v4

    aget-object v6, v1, v6

    invoke-virtual {v9, v6}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    :cond_37
    const/16 v15, 0x8

    shr-long/2addr v10, v15

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_38
    const/16 v15, 0x8

    if-ne v14, v15, :cond_3b

    :cond_39
    if-eq v3, v2, :cond_3b

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_3a
    invoke-virtual {v9, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    :cond_3b
    :goto_25
    move-object/from16 v0, p1

    move-object/from16 v4, v30

    move-object/from16 v6, v31

    goto/16 :goto_15

    :cond_3c
    :goto_26
    iget v0, v5, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz v0, :cond_47

    iget-object v1, v5, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    move/from16 v2, v16

    :goto_27
    if-ge v2, v0, :cond_46

    aget-object v3, v1, v2

    check-cast v3, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v8, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_44

    instance-of v7, v6, Landroidx/collection/MutableScatterSet;

    move-object/from16 v9, p0

    iget-object v10, v9, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    if-eqz v7, :cond_42

    check-cast v6, Landroidx/collection/MutableScatterSet;

    iget-object v7, v6, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v6, v6, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v11, v6

    const/16 v26, 0x2

    add-int/lit8 v11, v11, -0x2

    if-ltz v11, :cond_41

    move/from16 v12, v16

    :goto_28
    aget-wide v14, v6, v12

    move/from16 v25, v0

    move-object/from16 v27, v1

    not-long v0, v14

    shl-long v0, v0, v21

    and-long/2addr v0, v14

    and-long v0, v0, v22

    cmp-long v0, v0, v22

    if-eqz v0, :cond_40

    sub-int v0, v12, v11

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v0, v0, 0x8

    move/from16 v1, v16

    :goto_29
    if-ge v1, v0, :cond_3f

    and-long v28, v14, v19

    cmp-long v28, v28, v17

    if-gez v28, :cond_3e

    shl-int/lit8 v28, v12, 0x3

    add-int v28, v28, v1

    move/from16 v29, v1

    aget-object v1, v7, v28

    invoke-virtual {v10, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroidx/collection/MutableObjectIntMap;

    move/from16 v30, v2

    if-nez v28, :cond_3d

    new-instance v2, Landroidx/collection/MutableObjectIntMap;

    invoke-direct {v2}, Landroidx/collection/MutableObjectIntMap;-><init>()V

    invoke-virtual {v10, v1, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2a

    :cond_3d
    move-object/from16 v2, v28

    :goto_2a
    invoke-virtual {v9, v3, v4, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V

    :goto_2b
    const/16 v1, 0x8

    goto :goto_2c

    :cond_3e
    move/from16 v29, v1

    move/from16 v30, v2

    goto :goto_2b

    :goto_2c
    shr-long/2addr v14, v1

    add-int/lit8 v2, v29, 0x1

    move v1, v2

    move/from16 v2, v30

    goto :goto_29

    :cond_3f
    move/from16 v30, v2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_45

    goto :goto_2d

    :cond_40
    move/from16 v30, v2

    const/16 v1, 0x8

    :goto_2d
    if-eq v12, v11, :cond_45

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v30

    goto :goto_28

    :cond_41
    move/from16 v25, v0

    move-object/from16 v27, v1

    move/from16 v30, v2

    const/16 v1, 0x8

    goto :goto_2e

    :cond_42
    move/from16 v25, v0

    move-object/from16 v27, v1

    move/from16 v30, v2

    const/16 v1, 0x8

    const/16 v26, 0x2

    invoke-virtual {v10, v6}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/MutableObjectIntMap;

    if-nez v0, :cond_43

    new-instance v0, Landroidx/collection/MutableObjectIntMap;

    invoke-direct {v0}, Landroidx/collection/MutableObjectIntMap;-><init>()V

    invoke-virtual {v10, v6, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    invoke-virtual {v9, v3, v4, v6, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V

    goto :goto_2e

    :cond_44
    move/from16 v25, v0

    move-object/from16 v27, v1

    move/from16 v30, v2

    const/16 v1, 0x8

    const/16 v26, 0x2

    move-object/from16 v9, p0

    :cond_45
    :goto_2e
    add-int/lit8 v2, v30, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v27

    goto/16 :goto_27

    :cond_46
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    :cond_47
    return v13
.end method

.method public final recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    iget v4, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->deriveStateScopeCount:I

    if-lez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v3, v1}, Landroidx/collection/MutableObjectIntMap;->findIndex(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    not-int v4, v4

    const/4 v6, -0x1

    goto :goto_0

    :cond_1
    iget-object v6, v3, Landroidx/collection/MutableObjectIntMap;->values:[I

    aget v6, v6, v4

    :goto_0
    iget-object v7, v3, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    aput-object v1, v7, v4

    iget-object v3, v3, Landroidx/collection/MutableObjectIntMap;->values:[I

    aput v2, v3, v4

    instance-of v3, v1, Landroidx/compose/runtime/DerivedSnapshotState;

    const/4 v4, 0x2

    if-eqz v3, :cond_6

    if-eq v6, v2, :cond_6

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v2}, Landroidx/compose/runtime/DerivedSnapshotState;->getCurrentRecord()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    iget-object v7, v2, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v2, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->dependencies:Landroidx/collection/MutableObjectIntMap;

    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/collection/MutableScatterMap;

    invoke-static {v3, v1}, Landroidx/compose/runtime/collection/ScopeMap;->removeScope-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    iget-object v7, v2, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    iget-object v2, v2, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    array-length v8, v2

    sub-int/2addr v8, v4

    if-ltz v8, :cond_6

    const/4 v10, 0x0

    :goto_1
    aget-wide v11, v2, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_5

    sub-int v13, v10, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v13, :cond_4

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_3

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    aget-object v16, v7, v16

    move-object/from16 v9, v16

    check-cast v9, Landroidx/compose/runtime/snapshots/StateObject;

    instance-of v5, v9, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v5, :cond_2

    move-object v5, v9

    check-cast v5, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime_release(I)V

    :cond_2
    invoke-static {v3, v9, v1}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    shr-long/2addr v11, v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_4
    if-ne v13, v14, :cond_6

    :cond_5
    if-eq v10, v8, :cond_6

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, -0x1

    if-ne v6, v2, :cond_8

    instance-of v2, v1, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v2, :cond_7

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime_release(I)V

    :cond_7
    iget-object v0, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/collection/MutableScatterMap;

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/collection/MutableScatterMap;

    invoke-static {v0, p2, p1}, Landroidx/compose/runtime/collection/ScopeMap;->remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    instance-of p1, p2, Landroidx/compose/runtime/DerivedSnapshotState;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p2}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/collection/MutableScatterMap;

    invoke-static {p1, p2}, Landroidx/compose/runtime/collection/ScopeMap;->removeScope-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final removeScopeIf()V
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    iget-object v2, v1, Landroidx/collection/MutableScatterMap;->metadata:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_9

    const/4 v5, 0x0

    :goto_0
    aget-wide v6, v2, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v11

    cmp-long v8, v8, v11

    if-eqz v8, :cond_8

    sub-int v8, v5, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v8, :cond_7

    const-wide/16 v14, 0xff

    and-long v16, v6, v14

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_6

    shl-int/lit8 v16, v5, 0x3

    add-int v4, v16, v13

    move/from16 v16, v10

    iget-object v10, v1, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    aget-object v10, v10, v4

    move-wide/from16 v20, v11

    iget-object v11, v1, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v11, v11, v4

    check-cast v11, Landroidx/collection/MutableObjectIntMap;

    const-string v12, "null cannot be cast to non-null type androidx.compose.ui.node.OwnerScope"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/node/OwnerScope;

    invoke-interface {v12}, Landroidx/compose/ui/node/OwnerScope;->isValidOwnerScope()Z

    move-result v12

    if-nez v12, :cond_3

    move-wide/from16 v22, v14

    iget-object v14, v11, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    iget-object v15, v11, Landroidx/collection/MutableObjectIntMap;->values:[I

    iget-object v11, v11, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    move/from16 v24, v9

    array-length v9, v11

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_3

    move-object/from16 v25, v2

    move-wide/from16 v26, v6

    const/4 v2, 0x0

    :goto_2
    aget-wide v6, v11, v2

    move-object/from16 v29, v11

    move/from16 v28, v12

    not-long v11, v6

    shl-long v11, v11, v16

    and-long/2addr v11, v6

    and-long v11, v11, v20

    cmp-long v11, v11, v20

    if-eqz v11, :cond_2

    sub-int v11, v2, v9

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_1

    and-long v30, v6, v22

    cmp-long v30, v30, v18

    if-gez v30, :cond_0

    shl-int/lit8 v30, v2, 0x3

    add-int v30, v30, v12

    move-wide/from16 v31, v6

    aget-object v6, v14, v30

    aget v7, v15, v30

    invoke-virtual {v0, v10, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_0
    move-wide/from16 v31, v6

    :goto_4
    shr-long v6, v31, v24

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_1
    move/from16 v6, v24

    if-ne v11, v6, :cond_4

    :cond_2
    if-eq v2, v9, :cond_4

    add-int/lit8 v2, v2, 0x1

    move/from16 v12, v28

    move-object/from16 v11, v29

    const/16 v24, 0x8

    goto :goto_2

    :cond_3
    move-object/from16 v25, v2

    move-wide/from16 v26, v6

    move/from16 v28, v12

    :cond_4
    if-nez v28, :cond_5

    invoke-virtual {v1, v4}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_5
    const/16 v6, 0x8

    goto :goto_5

    :cond_6
    move-object/from16 v25, v2

    move-wide/from16 v26, v6

    move/from16 v16, v10

    move-wide/from16 v20, v11

    move v6, v9

    :goto_5
    shr-long v9, v26, v6

    add-int/lit8 v13, v13, 0x1

    move-wide v11, v9

    move v9, v6

    move-wide v6, v11

    move/from16 v10, v16

    move-wide/from16 v11, v20

    move-object/from16 v2, v25

    goto/16 :goto_1

    :cond_7
    move-object/from16 v25, v2

    move v6, v9

    if-ne v8, v6, :cond_9

    goto :goto_6

    :cond_8
    move-object/from16 v25, v2

    :goto_6
    if-eq v5, v3, :cond_9

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v25

    goto/16 :goto_0

    :cond_9
    return-void
.end method
