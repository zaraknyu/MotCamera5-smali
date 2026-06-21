.class public final Landroidx/compose/runtime/ParcelableSnapshotMutableState;
.super Landroidx/compose/runtime/snapshots/StateObjectImpl;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroidx/compose/runtime/snapshots/SnapshotMutableState;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/compose/runtime/ParcelableSnapshotMutableState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

.field public final policy:Landroidx/compose/runtime/SnapshotMutationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState$Companion$CREATOR$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V
    .locals 3

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateObjectImpl;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p2

    new-instance v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;-><init>(JLjava/lang/Object;)V

    instance-of p2, p2, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    const/4 v1, 0x1

    int-to-long v1, v1

    invoke-direct {p2, v1, v2, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;-><init>(JLjava/lang/Object;)V

    iput-object p2, v0, Landroidx/compose/runtime/snapshots/StateRecord;->next:Landroidx/compose/runtime/snapshots/StateRecord;

    :cond_0
    iput-object v0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

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

    iget-object p0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    return-object p0
.end method

.method public final getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    invoke-static {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    iget-object p0, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final mergeRecords(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    check-cast p3, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    iget-object p1, p1, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->value:Ljava/lang/Object;

    iget-object p3, p3, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->value:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    invoke-interface {p0, p1, p3}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final prependStateRecord(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    iput-object p1, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    iget-object v1, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    iget-object v2, v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->value:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    invoke-static {v1, p0, v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->overwritableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObjectImpl;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    iput-object p1, v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->value:Ljava/lang/Object;
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

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MutableState(value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->value:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    sget-object p2, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE:Landroidx/compose/runtime/NeverEqualPolicy;

    iget-object p0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p2, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$3:Landroidx/compose/runtime/NeverEqualPolicy;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    sget-object p2, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$1:Landroidx/compose/runtime/NeverEqualPolicy;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    :goto_0
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only known types of MutableState\'s SnapshotMutationPolicy are supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
