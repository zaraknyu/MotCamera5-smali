.class public final Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;
.super Landroidx/compose/runtime/snapshots/StateObjectImpl;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroidx/compose/runtime/snapshots/SnapshotMutableState;
.implements Landroidx/compose/runtime/MutableState;
.implements Landroidx/compose/runtime/State;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public next:Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState$Companion$CREATOR$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState$Companion$CREATOR$1;-><init>(I)V

    sput-object v0, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 4

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateObjectImpl;-><init>()V

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    new-instance v1, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1, p2}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;-><init>(JJ)V

    instance-of v0, v0, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    const/4 v2, 0x1

    int-to-long v2, v2

    invoke-direct {v0, v2, v3, p1, p2}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;-><init>(JJ)V

    iput-object v0, v1, Landroidx/compose/runtime/snapshots/StateRecord;->next:Landroidx/compose/runtime/snapshots/StateRecord;

    :cond_0
    iput-object v1, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;->next:Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;->next:Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    return-object p0
.end method

.method public final getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 0

    sget-object p0, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$3:Landroidx/compose/runtime/NeverEqualPolicy;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;->next:Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    invoke-static {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    iget-wide v0, p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final mergeRecords(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 2

    move-object p0, p2

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    check-cast p3, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    iget-wide p0, p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;->value:J

    iget-wide v0, p3, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;->value:J

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final prependStateRecord(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableLongStateImpl.LongStateStateRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    iput-object p1, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;->next:Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    return-void
.end method

.method public final setLongValue(J)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;->next:Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    iget-wide v1, v0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;->value:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;->next:Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    invoke-static {v1, p0, v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->overwritableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObjectImpl;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    iput-wide p1, v0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-static {v3, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;->setLongValue(J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;->next:Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MutableLongState(value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;->value:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;->next:Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    invoke-static {p2, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    iget-wide v0, p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;->value:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
