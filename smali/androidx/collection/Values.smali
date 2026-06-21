.class public final Landroidx/collection/Values;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public final parent:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Landroidx/collection/Values;->$r8$classId:I

    .line 1
    sget v0, Landroidx/collection/OrderedScatterSetKt;->$r8$clinit:I

    .line 2
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet;

    const/4 v1, 0x6

    .line 3
    invoke-direct {v0, v1}, Landroidx/collection/MutableOrderedScatterSet;-><init>(I)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/collection/MutableScatterMap;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/Values;->$r8$classId:I

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/collection/Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    iget p0, p0, Landroidx/collection/Values;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final clear()V
    .locals 1

    iget v0, p0, Landroidx/collection/Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {p0}, Landroidx/collection/MutableOrderedScatterSet;->clear()V

    return-void

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/collection/Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 3

    iget v0, p0, Landroidx/collection/Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {v1, v0}, Landroidx/collection/MutableOrderedScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0

    :pswitch_0
    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2, v0}, Landroidx/collection/MutableScatterMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Landroidx/collection/Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableOrderedScatterSet;

    iget p0, p0, Landroidx/collection/MutableOrderedScatterSet;->_size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0}, Landroidx/collection/MutableScatterMap;->isEmpty()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Landroidx/collection/Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/collection/MutableOrderedSetWrapper;

    invoke-direct {v0, p0}, Landroidx/collection/MutableOrderedSetWrapper;-><init>(Landroidx/collection/MutableOrderedScatterSet;)V

    new-instance p0, Lkotlin/sequences/GeneratorSequence$iterator$1;

    invoke-direct {p0, v0}, Lkotlin/sequences/GeneratorSequence$iterator$1;-><init>(Landroidx/collection/MutableOrderedSetWrapper;)V

    return-object p0

    :pswitch_0
    new-instance v0, Landroidx/collection/Values$iterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/collection/Values$iterator$1;-><init>(Landroidx/collection/Values;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/collection/Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Landroidx/collection/Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final removeIf(Ljava/util/function/Predicate;)Z
    .locals 0

    iget p0, p0, Landroidx/collection/Values;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Landroidx/collection/Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Landroidx/collection/Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableOrderedScatterSet;

    iget p0, p0, Landroidx/collection/MutableOrderedScatterSet;->_size:I

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableScatterMap;

    iget p0, p0, Landroidx/collection/MutableScatterMap;->_size:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/collection/Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics$Kotlin;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics$Kotlin;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/collection/Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics$Kotlin;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_0
    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics$Kotlin;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
