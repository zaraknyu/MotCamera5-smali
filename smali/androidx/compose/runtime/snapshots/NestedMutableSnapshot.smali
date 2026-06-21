.class public final Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;
.super Landroidx/compose/runtime/snapshots/MutableSnapshot;
.source "SourceFile"


# instance fields
.field public deactivated:Z

.field public final parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;


# direct methods
.method public constructor <init>(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/MutableSnapshot;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/runtime/snapshots/MutableSnapshot;-><init>(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    iput-object p6, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    invoke-virtual {p6}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->nestedActivated$runtime_release()V

    return-void
.end method


# virtual methods
.method public final apply()Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;
    .locals 11

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    iget-boolean v1, v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->applied:Z

    if-nez v1, :cond_b

    iget-boolean v1, v0, Landroidx/compose/runtime/snapshots/Snapshot;->disposed:Z

    if-eqz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v5, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->modified:Landroidx/collection/MutableScatterSet;

    iget-wide v8, p0, Landroidx/compose/runtime/snapshots/Snapshot;->snapshotId:J

    const/4 v1, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v2

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    invoke-static {v2, v3, p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$optimisticMerges(JLandroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Ljava/util/HashMap;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_1
    move-object v6, v1

    :goto_0
    sget-object v10, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$validateOpen(Landroidx/compose/runtime/snapshots/Snapshot;)V

    if-eqz v5, :cond_2

    iget v0, v5, Landroidx/collection/MutableScatterSet;->_size:I

    if-nez v0, :cond_3

    :cond_2
    move-object v2, p0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v3

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->innerApplyLocked$runtime_release(JLandroidx/collection/MutableScatterSet;Ljava/util/HashMap;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;

    move-result-object p0

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;->INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    monitor-exit v10

    return-object p0

    :cond_4
    :try_start_1
    iget-object p0, v2, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getModified$runtime_release()Landroidx/collection/MutableScatterSet;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, v5}, Landroidx/collection/MutableScatterSet;->plusAssign(Landroidx/collection/MutableScatterSet;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :cond_5
    iget-object p0, v2, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    invoke-virtual {p0, v5}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->setModified(Landroidx/collection/MutableScatterSet;)V

    iput-object v1, v2, Landroidx/compose/runtime/snapshots/MutableSnapshot;->modified:Landroidx/collection/MutableScatterSet;

    goto :goto_2

    :goto_1
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->closeAndReleasePinning$runtime_release()V

    :goto_2
    iget-object p0, v2, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v0

    cmp-long p0, v0, v8

    if-gez p0, :cond_6

    iget-object p0, v2, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->advance$runtime_release()V

    :cond_6
    iget-object p0, v2, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    iget-object v1, v2, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->andNot(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/Snapshot;->setInvalid$runtime_release(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    iget-object p0, v2, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    invoke-virtual {p0, v8, v9}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->recordPrevious$runtime_release(J)V

    iget-object p0, v2, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    iget v0, v2, Landroidx/compose/runtime/snapshots/Snapshot;->pinningTrackingHandle:I

    const/4 v1, -0x1

    iput v1, v2, Landroidx/compose/runtime/snapshots/Snapshot;->pinningTrackingHandle:I

    if-ltz v0, :cond_7

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    const-string v3, "<this>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v1

    add-int/lit8 v4, v3, 0x1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    aput v0, v1, v3

    iput-object v1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    iget-object p0, v2, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    iget-object v0, v2, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->or(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v10

    iget-object p0, v2, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    iget-object v0, v2, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, v0

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    array-length v3, v1

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    array-length v3, v1

    array-length v4, v0

    add-int v5, v3, v4

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_4
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    monitor-exit v10

    const/4 p0, 0x1

    iput-boolean p0, v2, Landroidx/compose/runtime/snapshots/MutableSnapshot;->applied:Z

    iget-boolean v0, v2, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->deactivated:Z

    if-nez v0, :cond_a

    iput-boolean p0, v2, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->deactivated:Z

    iget-object p0, v2, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->nestedDeactivated$runtime_release()V

    :cond_a
    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;->INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;

    return-object p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_4
    monitor-exit v10

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    monitor-exit v10

    throw p0

    :cond_b
    :goto_7
    new-instance p0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->disposed:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->deactivated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->deactivated:Z

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->nestedDeactivated$runtime_release()V

    :cond_0
    return-void
.end method
