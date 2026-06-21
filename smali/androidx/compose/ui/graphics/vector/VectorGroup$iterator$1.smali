.class public final Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public final it:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;)V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 4
    new-array v1, v0, [Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNodeBaseIterator;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNodeMutableEntriesIterator;

    invoke-direct {v3, p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNodeMutableEntriesIterator;-><init>(Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilderBaseIterator;

    invoke-direct {v0, p1, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilderBaseIterator;-><init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;[Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNodeBaseIterator;)V

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;->it:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/vector/VectorGroup;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object p1, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->children:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;->it:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;->$r8$classId:I

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;->it:Ljava/util/Iterator;

    check-cast p0, Lkotlin/UIntArray$Iterator;

    invoke-virtual {p0}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;->it:Ljava/util/Iterator;

    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilderBaseIterator;

    iget-boolean p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBaseIterator;->hasNext:Z

    return p0

    :pswitch_1
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;->it:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;->it:Ljava/util/Iterator;

    check-cast p0, Lkotlin/UIntArray$Iterator;

    invoke-virtual {p0}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;->it:Ljava/util/Iterator;

    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilderBaseIterator;

    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilderBaseIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;->it:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/vector/VectorNode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;->it:Ljava/util/Iterator;

    check-cast p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilderBaseIterator;

    invoke-virtual {p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilderBaseIterator;->remove()V

    return-void

    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
