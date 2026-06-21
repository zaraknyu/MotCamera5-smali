.class public final Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $alreadyComposed:Landroidx/collection/MutableScatterSet;

.field public final synthetic $modifiedValues:Landroidx/collection/MutableScatterSet;

.field public final synthetic $modifiedValuesSet:Ljava/util/Set;

.field public final synthetic $toApply:Ljava/util/List;

.field public final synthetic $toComplete:Landroidx/collection/MutableScatterSet;

.field public final synthetic $toInsert:Ljava/util/List;

.field public final synthetic $toLateApply:Landroidx/collection/MutableScatterSet;

.field public final synthetic $toRecompose:Ljava/util/List;

.field public final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValues:Landroidx/collection/MutableScatterSet;

    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$alreadyComposed:Landroidx/collection/MutableScatterSet;

    iput-object p4, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toRecompose:Ljava/util/List;

    iput-object p5, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toInsert:Ljava/util/List;

    iput-object p6, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toLateApply:Landroidx/collection/MutableScatterSet;

    iput-object p7, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toApply:Ljava/util/List;

    iput-object p8, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toComplete:Landroidx/collection/MutableScatterSet;

    iput-object p9, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValuesSet:Ljava/util/Set;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v4, v3, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {v3}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    monitor-exit v4

    if-eqz v3, :cond_2

    const-string v3, "Recomposer:animation"

    iget-object v5, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    iget-object v3, v5, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    invoke-virtual {v3, v1, v2}, Landroidx/compose/runtime/BroadcastFrameClock;->sendFrame(J)V

    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalSnapshot:Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    iget-object v2, v2, Landroidx/compose/runtime/snapshots/MutableSnapshot;->modified:Landroidx/collection/MutableScatterSet;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    :try_start_3
    monitor-exit v1

    if-eqz v3, :cond_1

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$advanceGlobalSnapshot()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_2
    :goto_1
    const-string v1, "Recomposer:recompose"

    iget-object v5, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v11, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValues:Landroidx/collection/MutableScatterSet;

    iget-object v12, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$alreadyComposed:Landroidx/collection/MutableScatterSet;

    iget-object v6, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toRecompose:Ljava/util/List;

    iget-object v7, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toInsert:Ljava/util/List;

    iget-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toLateApply:Landroidx/collection/MutableScatterSet;

    iget-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toApply:Ljava/util/List;

    iget-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toComplete:Landroidx/collection/MutableScatterSet;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValuesSet:Ljava/util/Set;

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_5
    invoke-static {v5}, Landroidx/compose/runtime/Recomposer;->access$recordComposerModifications(Landroidx/compose/runtime/Recomposer;)Z

    iget-object v1, v5, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_e

    :try_start_6
    iget-object v2, v5, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v3, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v2, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v2, :cond_3

    aget-object v14, v3, v13

    check-cast v14, Landroidx/compose/runtime/CompositionImpl;

    invoke-interface {v6, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto/16 :goto_1f

    :cond_3
    iget-object v2, v5, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v1

    invoke-virtual {v11}, Landroidx/collection/MutableScatterSet;->clear()V

    invoke-virtual {v12}, Landroidx/collection/MutableScatterSet;->clear()V

    :cond_4
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_13

    :cond_5
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_e

    if-nez v0, :cond_8

    :try_start_8
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_6

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v10, v3}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_5

    :cond_6
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_7

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/CompositionImpl;->applyChanges()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    :try_start_9
    invoke-interface {v8}, Ljava/util/List;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_e

    goto :goto_7

    :goto_5
    :try_start_a
    invoke-virtual {v5, v0, v2}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    invoke-static/range {v5 .. v12}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-interface {v8}, Ljava/util/List;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    :goto_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_1e

    :catchall_4
    move-exception v0

    :try_start_c
    invoke-interface {v8}, Ljava/util/List;->clear()V

    throw v0

    :cond_8
    :goto_7
    invoke-virtual {v9}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_e

    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-eqz v0, :cond_e

    :try_start_d
    invoke-virtual {v10, v9}, Landroidx/collection/MutableScatterSet;->plusAssign(Landroidx/collection/MutableScatterSet;)V

    iget-object v0, v9, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    const/16 p0, 0x7

    iget-object v1, v9, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_c

    const/4 v13, 0x0

    const-wide/16 v19, 0x80

    :goto_8
    const/16 v21, 0x8

    aget-wide v2, v1, v13

    const-wide/16 v22, 0xff

    not-long v14, v2

    shl-long v14, v14, p0

    and-long/2addr v14, v2

    and-long v14, v14, v17

    cmp-long v14, v14, v17

    if-eqz v14, :cond_b

    sub-int v14, v13, v4

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    rsub-int/lit8 v14, v14, 0x8

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v14, :cond_a

    and-long v24, v2, v22

    cmp-long v24, v24, v19

    if-gez v24, :cond_9

    shl-int/lit8 v24, v13, 0x3

    add-int v24, v24, v15

    aget-object v24, v0, v24

    check-cast v24, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/CompositionImpl;->applyLateChanges()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    const/4 v14, 0x0

    goto :goto_b

    :cond_9
    :goto_a
    shr-long v2, v2, v21

    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_a
    move/from16 v2, v21

    if-ne v14, v2, :cond_d

    :cond_b
    if-eq v13, v4, :cond_d

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_c
    const-wide/16 v19, 0x80

    const-wide/16 v22, 0xff

    :cond_d
    :try_start_e
    invoke-virtual {v9}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    goto :goto_c

    :goto_b
    :try_start_f
    invoke-virtual {v5, v0, v14}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    invoke-static/range {v5 .. v12}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :try_start_10
    invoke-virtual {v9}, Landroidx/collection/MutableScatterSet;->clear()V

    goto :goto_6

    :catchall_6
    move-exception v0

    invoke-virtual {v9}, Landroidx/collection/MutableScatterSet;->clear()V

    throw v0

    :cond_e
    const/16 p0, 0x7

    const-wide/16 v19, 0x80

    const-wide/16 v22, 0xff

    :goto_c
    invoke-virtual {v10}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    if-eqz v0, :cond_13

    :try_start_11
    iget-object v0, v10, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, v10, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_12

    const/4 v3, 0x0

    :goto_d
    aget-wide v14, v1, v3

    move-object v4, v0

    move-object v13, v1

    not-long v0, v14

    shl-long v0, v0, p0

    and-long/2addr v0, v14

    and-long v0, v0, v17

    cmp-long v0, v0, v17

    if-eqz v0, :cond_11

    sub-int v0, v3, v2

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v21, 0x8

    rsub-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_10

    and-long v24, v14, v22

    cmp-long v24, v24, v19

    if-gez v24, :cond_f

    shl-int/lit8 v24, v3, 0x3

    add-int v24, v24, v1

    aget-object v24, v4, v24

    check-cast v24, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/CompositionImpl;->changesApplied()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :cond_f
    move/from16 v24, v1

    const/16 v1, 0x8

    goto :goto_f

    :catchall_7
    move-exception v0

    const/4 v14, 0x0

    goto :goto_11

    :goto_f
    shr-long/2addr v14, v1

    add-int/lit8 v21, v24, 0x1

    move/from16 v1, v21

    goto :goto_e

    :cond_10
    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    goto :goto_10

    :cond_11
    const/16 v1, 0x8

    :goto_10
    if-eq v3, v2, :cond_12

    add-int/lit8 v3, v3, 0x1

    move-object v0, v4

    move-object v1, v13

    goto :goto_d

    :cond_12
    :try_start_12
    invoke-virtual {v10}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    goto :goto_12

    :goto_11
    :try_start_13
    invoke-virtual {v5, v0, v14}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    invoke-static/range {v5 .. v12}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :try_start_14
    invoke-virtual {v10}, Landroidx/collection/MutableScatterSet;->clear()V

    goto/16 :goto_6

    :catchall_8
    move-exception v0

    invoke-virtual {v10}, Landroidx/collection/MutableScatterSet;->clear()V

    throw v0

    :cond_13
    :goto_12
    iget-object v1, v5, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    :try_start_15
    invoke-virtual {v5}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :try_start_16
    monitor-exit v1

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->notifyObjectsInitialized$runtime_release()V

    invoke-virtual {v12}, Landroidx/collection/MutableScatterSet;->clear()V

    invoke-virtual {v11}, Landroidx/collection/MutableScatterSet;->clear()V

    const/4 v14, 0x0

    iput-object v14, v5, Landroidx/compose/runtime/Recomposer;->compositionsRemoved:Ljava/util/LinkedHashSet;

    goto/16 :goto_6

    :catchall_9
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    :cond_14
    :goto_13
    :try_start_17
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_16

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionImpl;

    invoke-static {v5, v3, v11}, Landroidx/compose/runtime/Recomposer;->access$performRecompose(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/CompositionImpl;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/CompositionImpl;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-interface {v8, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :catchall_a
    move-exception v0

    const/4 v14, 0x0

    goto/16 :goto_1d

    :cond_15
    :goto_15
    invoke-virtual {v12, v3}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_16
    :try_start_18
    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-virtual {v11}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v5, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz v1, :cond_1d

    :cond_17
    iget-object v1, v5, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    :try_start_19
    invoke-virtual {v5}, Landroidx/compose/runtime/Recomposer;->getKnownCompositions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_19

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v12, v13}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_18

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/CompositionImpl;->observesAnyOf(Ljava/util/Set;)Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v6, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :catchall_b
    move-exception v0

    goto/16 :goto_1c

    :cond_18
    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_19
    iget-object v2, v5, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    iget v3, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v4, 0x0

    const/4 v13, 0x0

    :goto_18
    if-ge v4, v3, :cond_1c

    iget-object v15, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v15, v15, v4

    check-cast v15, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v12, v15}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1a

    invoke-interface {v6, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1a

    invoke-interface {v6, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_19

    :cond_1a
    if-lez v13, :cond_1b

    iget-object v15, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    sub-int v16, v4, v13

    aget-object v17, v15, v4

    aput-object v17, v15, v16

    :cond_1b
    :goto_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_1c
    iget-object v4, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    sub-int v13, v3, v13

    const/4 v14, 0x0

    invoke-static {v4, v13, v3, v14}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v13, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    :try_start_1a
    monitor-exit v1

    :cond_1d
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    if-eqz v1, :cond_4

    :try_start_1b
    invoke-static {v7, v5}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V

    :goto_1a
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v5, v7, v11}, Landroidx/compose/runtime/Recomposer;->performInsertValues(Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Object;)V

    goto :goto_1b

    :cond_1e
    invoke-static {v7, v5}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    goto :goto_1a

    :catchall_c
    move-exception v0

    const/4 v14, 0x0

    :try_start_1c
    invoke-virtual {v5, v0, v14}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    invoke-static/range {v5 .. v12}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V

    goto/16 :goto_6

    :goto_1c
    monitor-exit v1

    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    :goto_1d
    :try_start_1d
    invoke-virtual {v5, v0, v14}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    invoke-static/range {v5 .. v12}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    :try_start_1e
    invoke-interface {v6}, Ljava/util/List;->clear()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    goto/16 :goto_6

    :goto_1e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_d
    move-exception v0

    :try_start_1f
    invoke-interface {v6}, Ljava/util/List;->clear()V

    throw v0

    :goto_1f
    monitor-exit v1

    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    :catchall_e
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :catchall_f
    move-exception v0

    monitor-exit v4

    throw v0
.end method
