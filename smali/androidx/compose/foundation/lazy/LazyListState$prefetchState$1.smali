.class public final Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $firstVisibleItemIndex:I

.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;->$r8$classId:I

    .line 1
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;->$firstVisibleItemIndex:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;->$r8$classId:I

    .line 2
    iput p2, p0, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;->$firstVisibleItemIndex:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/focus/FocusTargetNode;

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;->$firstVisibleItemIndex:I

    invoke-virtual {p1, p0}, Landroidx/compose/ui/focus/FocusTargetNode;->requestFocus-3ESFkO8(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;->$firstVisibleItemIndex:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->schedulePrefetch(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
