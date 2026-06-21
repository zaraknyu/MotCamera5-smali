.class public final synthetic Le/P0;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroidx/compose/ui/geometry/Size;

    iget-wide v0, p1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    check-cast p2, Landroidx/compose/ui/geometry/Size;

    iget-wide p1, p2, Landroidx/compose/ui/geometry/Size;->packedValue:J

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Le/z1;

    iget-object p0, p0, Le/z1;->a:Le/n1;

    iget-object v2, p0, Le/n1;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v3, p0, Le/n1;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/geometry/Size;

    iget-wide v3, v3, Landroidx/compose/ui/geometry/Size;->packedValue:J

    invoke-static {v3, v4, v0, v1}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object p0, p0, Le/n1;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v3, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v3, v0, v1}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Size;

    iget-wide v0, p0, Landroidx/compose/ui/geometry/Size;->packedValue:J

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Landroidx/compose/ui/geometry/Size;

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-virtual {v2, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
