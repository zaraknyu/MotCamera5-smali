.class public final Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;
.super Landroidx/compose/runtime/snapshots/StateRecord;
.source "SourceFile"


# instance fields
.field public list:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

.field public modification:I

.field public structuralChange:I


# direct methods
.method public constructor <init>(JLandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/snapshots/StateRecord;-><init>(J)V

    iput-object p3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->list:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    return-void
.end method


# virtual methods
.method public final assign(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 2

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    iget-object v1, v1, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->list:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->list:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    move-object v1, p1

    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    iget v1, v1, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->modification:I

    iput v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->modification:I

    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    iget p1, p1, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->structuralChange:I

    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->structuralChange:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final create(J)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;->list:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    invoke-direct {v0, p1, p2, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$StateListStateRecord;-><init>(JLandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;)V

    return-object v0
.end method
