.class public final Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;
.super Landroidx/compose/runtime/snapshots/StateRecord;
.source "SourceFile"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/snapshots/StateRecord;-><init>(J)V

    iput p3, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;->value:I

    return-void
.end method


# virtual methods
.method public final assign(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableIntStateImpl.IntStateStateRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;

    iget p1, p1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;->value:I

    iput p1, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;->value:I

    return-void
.end method

.method public final create(J)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;

    iget p0, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;->value:I

    invoke-direct {v0, p1, p2, p0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;-><init>(JI)V

    return-object v0
.end method
