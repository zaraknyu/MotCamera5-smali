.class public final Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;
.super Landroidx/compose/runtime/snapshots/Snapshot;
.source "SourceFile"


# instance fields
.field public final ownsPreviousSnapshot:Z

.field public final previousSnapshot:Landroidx/compose/runtime/snapshots/Snapshot;

.field public readObserver:Lkotlin/jvm/functions/Function1;

.field public final threadId:J


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;Z)V
    .locals 3

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->threadSnapshot:Landroidx/core/view/MenuHostHelper;

    const-wide/16 v0, 0x0

    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/runtime/snapshots/Snapshot;-><init>(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->previousSnapshot:Landroidx/compose/runtime/snapshots/Snapshot;

    iput-boolean p3, p0, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->ownsPreviousSnapshot:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    sget-object p1, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalSnapshot:Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    iget-object p1, p1, Landroidx/compose/runtime/snapshots/MutableSnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    :cond_1
    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    invoke-static {}, Landroidx/compose/runtime/internal/Utils_jvmKt;->currentThreadId()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->threadId:J

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->disposed:Z

    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->ownsPreviousSnapshot:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->previousSnapshot:Landroidx/compose/runtime/snapshots/Snapshot;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    :cond_0
    return-void
.end method

.method public final getCurrentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->previousSnapshot:Landroidx/compose/runtime/snapshots/Snapshot;

    if-nez p0, :cond_0

    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalSnapshot:Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    :cond_0
    return-object p0
.end method

.method public final getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    return-object p0
.end method

.method public final getReadObserver()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getReadOnly()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadOnly()Z

    move-result p0

    return p0
.end method

.method public final getSnapshotId()J
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getWriteObserver$runtime_release()Lkotlin/jvm/functions/Function1;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final nestedActivated$runtime_release()V
    .locals 0

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->unsupported()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final nestedDeactivated$runtime_release()V
    .locals 0

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->unsupported()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final notifyObjectsInitialized$runtime_release()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->notifyObjectsInitialized$runtime_release()V

    return-void
.end method

.method public final recordModified$runtime_release(Landroidx/compose/runtime/snapshots/StateObject;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->recordModified$runtime_release(Landroidx/compose/runtime/snapshots/StateObject;)V

    return-void
.end method

.method public final takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/Snapshot;->takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->createTransparentSnapshotWithNoParentReadObserver(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p0

    return-object p0
.end method
