.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final _parentPinnableContainer$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public index:I

.field public isDisposed:Z

.field public final key:Ljava/lang/Object;

.field public parentHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

.field public final pinnedItemList:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

.field public pinsCount:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->key:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pinnedItemList:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->index:I

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->_parentPinnableContainer$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method


# virtual methods
.method public final pin()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->isDisposed:Z

    if-eqz v0, :cond_0

    const-string v0, "Pin should not be called on an already disposed item "

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pinsCount:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pinnedItemList:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    iget-object v0, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;->items:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->_parentPinnableContainer$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pin()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->parentHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    :cond_2
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pinsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pinsCount:I

    return-object p0
.end method

.method public final release()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->isDisposed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pinsCount:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Release should only be called once"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pinsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pinsCount:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pinnedItemList:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    iget-object v0, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;->items:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->parentHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->release()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->parentHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    :cond_3
    :goto_1
    return-void
.end method
