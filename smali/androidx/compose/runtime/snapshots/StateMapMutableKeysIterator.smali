.class public final Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public current:Ljava/util/Map$Entry;

.field public final iterator:Ljava/util/Iterator;

.field public final map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

.field public modification:I

.field public next:Ljava/util/Map$Entry;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;Ljava/util/Iterator;I)V
    .locals 0

    iput p3, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    iput-object p2, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->iterator:Ljava/util/Iterator;

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-result-object p1

    iget p1, p1, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->modification:I

    iput p1, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->modification:I

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->advance()V

    return-void
.end method


# virtual methods
.method public final advance()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->next:Ljava/util/Map$Entry;

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->current:Ljava/util/Map$Entry;

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->next:Ljava/util/Map$Entry;

    return-void
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->next:Ljava/util/Map$Entry;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->next:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->advance()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->advance()V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->current:Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1;-><init>(Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->next:Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->advance()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-result-object v1

    iget v1, v1, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->modification:I

    iget v2, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->modification:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->current:Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->current:Ljava/util/Map$Entry;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getReadable$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    move-result-object v0

    iget v0, v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->modification:I

    iput v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableKeysIterator;->modification:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method
