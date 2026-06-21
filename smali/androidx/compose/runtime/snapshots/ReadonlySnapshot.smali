.class public final Landroidx/compose/runtime/snapshots/ReadonlySnapshot;
.super Landroidx/compose/runtime/snapshots/Snapshot;
.source "SourceFile"


# instance fields
.field public final readObserver:Lkotlin/jvm/functions/Function1;

.field public snapshots:I


# direct methods
.method public constructor <init>(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/snapshots/Snapshot;-><init>(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    iput-object p4, p0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->snapshots:I

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->disposed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->nestedDeactivated$runtime_release()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->disposed:Z

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->releasePinnedSnapshotLocked$runtime_release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    return-void
.end method

.method public final getReadObserver()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getReadOnly()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getWriteObserver$runtime_release()Lkotlin/jvm/functions/Function1;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final nestedActivated$runtime_release()V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->snapshots:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->snapshots:I

    return-void
.end method

.method public final nestedDeactivated$runtime_release()V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->snapshots:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->snapshots:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->closeAndReleasePinning$runtime_release()V

    :cond_0
    return-void
.end method

.method public final notifyObjectsInitialized$runtime_release()V
    .locals 0

    return-void
.end method

.method public final recordModified$runtime_release(Landroidx/compose/runtime/snapshots/StateObject;)V
    .locals 0

    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->threadSnapshot:Landroidx/core/view/MenuHostHelper;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot modify a state object in a read-only snapshot"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 6

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$validateOpen(Landroidx/compose/runtime/snapshots/Snapshot;)V

    new-instance v0, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;

    iget-wide v1, p0, Landroidx/compose/runtime/snapshots/Snapshot;->snapshotId:J

    iget-object v3, p0, Landroidx/compose/runtime/snapshots/Snapshot;->invalid:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-object v4, p0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;

    move-result-object v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;-><init>(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/Snapshot;)V

    return-object v0
.end method
