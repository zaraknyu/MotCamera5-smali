.class public final Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $elements:Ljava/lang/Object;

.field public final synthetic $index:I

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;->$r8$classId:I

    iput-object p3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;->$elements:Ljava/lang/Object;

    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;->$index:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;->$r8$classId:I

    .line 2
    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;->$index:I

    iput-object p2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;->$elements:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;->$elements:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    iget p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;->$index:I

    neg-int p0, p0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;->$elements:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchStrategy:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;->$index:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->schedulePrefetch(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;->$elements:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    iget p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;->$index:I

    invoke-interface {p1, p0, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
