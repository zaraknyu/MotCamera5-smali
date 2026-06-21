.class public final Landroidx/compose/runtime/snapshots/SnapshotKt$mergedReadObserver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $parentObserver:Lkotlin/jvm/functions/Function1;

.field public final synthetic $r8$classId:I

.field public final synthetic $readObserver:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p3, p0, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedReadObserver$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedReadObserver$1;->$readObserver:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedReadObserver$1;->$parentObserver:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedReadObserver$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedReadObserver$1;->$readObserver:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedReadObserver$1;->$parentObserver:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    sget-object p1, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-wide v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    sput-wide v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedReadObserver$1;->$readObserver:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedReadObserver$1;->$parentObserver:Lkotlin/jvm/functions/Function1;

    new-instance v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/snapshots/MutableSnapshot;-><init>(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1

    throw p0

    :pswitch_1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedReadObserver$1;->$readObserver:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedReadObserver$1;->$parentObserver:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
