.class public abstract Landroidx/compose/runtime/snapshots/Snapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public disposed:Z

.field public invalid:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

.field public pinningTrackingHandle:I

.field public snapshotId:J


# direct methods
.method public constructor <init>(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/compose/runtime/snapshots/Snapshot;->invalid:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iput-wide p1, p0, Landroidx/compose/runtime/snapshots/Snapshot;->snapshotId:J

    sget-object p3, Landroidx/compose/runtime/snapshots/SnapshotKt;->threadSnapshot:Landroidx/core/view/MenuHostHelper;

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p3

    iget-wide v2, p3, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    iget-object v4, p3, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    if-eqz v4, :cond_0

    const/4 p1, 0x0

    aget-wide p1, v4, p1

    goto :goto_1

    :cond_0
    iget-wide v4, p3, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    cmp-long v6, v4, v0

    if-eqz v6, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p1

    :goto_0
    int-to-long p1, p1

    add-long/2addr p1, v2

    goto :goto_1

    :cond_1
    iget-wide v4, p3, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    cmp-long p3, v4, v0

    if-eqz p3, :cond_2

    const/16 p1, 0x40

    int-to-long p1, p1

    add-long/2addr v2, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p3, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->pinningTable:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->add(J)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p3

    throw p0

    :cond_3
    const/4 p1, -0x1

    :goto_2
    iput p1, p0, Landroidx/compose/runtime/snapshots/Snapshot;->pinningTrackingHandle:I

    return-void
.end method

.method public static restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 1

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->threadSnapshot:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0, p0}, Landroidx/core/view/MenuHostHelper;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final closeAndReleasePinning$runtime_release()V
    .locals 1

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->closeLocked$runtime_release()V

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->releasePinnedSnapshotsForCloseLocked$runtime_release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public closeLocked$runtime_release()V
    .locals 3

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    sput-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-void
.end method

.method public abstract dispose()V
.end method

.method public getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->invalid:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-object p0
.end method

.method public abstract getReadObserver()Lkotlin/jvm/functions/Function1;
.end method

.method public abstract getReadOnly()Z
.end method

.method public getSnapshotId()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->snapshotId:J

    return-wide v0
.end method

.method public getWriteCount$runtime_release()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getWriteObserver$runtime_release()Lkotlin/jvm/functions/Function1;
.end method

.method public final makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 2

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->threadSnapshot:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/snapshots/Snapshot;

    invoke-virtual {v0, p0}, Landroidx/core/view/MenuHostHelper;->set(Ljava/lang/Object;)V

    return-object v1
.end method

.method public abstract nestedActivated$runtime_release()V
.end method

.method public abstract nestedDeactivated$runtime_release()V
.end method

.method public abstract notifyObjectsInitialized$runtime_release()V
.end method

.method public abstract recordModified$runtime_release(Landroidx/compose/runtime/snapshots/StateObject;)V
.end method

.method public final releasePinnedSnapshotLocked$runtime_release()V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->pinningTrackingHandle:I

    if-ltz v0, :cond_0

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->releasePinningLocked(I)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->pinningTrackingHandle:I

    :cond_0
    return-void
.end method

.method public releasePinnedSnapshotsForCloseLocked$runtime_release()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->releasePinnedSnapshotLocked$runtime_release()V

    return-void
.end method

.method public setInvalid$runtime_release(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/Snapshot;->invalid:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-void
.end method

.method public setSnapshotId$runtime_release(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/runtime/snapshots/Snapshot;->snapshotId:J

    return-void
.end method

.method public setWriteCount$runtime_release(I)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Updating write count is not supported for this snapshot"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;
.end method
