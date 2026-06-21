.class public final Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;
.super Landroidx/compose/runtime/snapshots/StateRecord;
.source "SourceFile"


# instance fields
.field public value:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/snapshots/StateRecord;-><init>(J)V

    iput-wide p3, p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;->value:J

    return-void
.end method


# virtual methods
.method public final assign(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 2

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableLongStateImpl.LongStateStateRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    iget-wide v0, p1, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;->value:J

    iput-wide v0, p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;->value:J

    return-void
.end method

.method public final create(J)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 3

    new-instance v0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;

    iget-wide v1, p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;->value:J

    invoke-direct {v0, p1, p2, v1, v2}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;-><init>(JJ)V

    return-object v0
.end method
