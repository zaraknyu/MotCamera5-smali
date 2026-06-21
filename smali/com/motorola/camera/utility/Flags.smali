.class public final Lcom/motorola/camera/utility/Flags;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mFlags:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/util/Map;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/utility/Flags;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/utility/Flags;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Enum;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/utility/Flags;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2
    :pswitch_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->put$kotlin$reflect$jvm$internal$impl$protobuf$SmallSortedMap(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 5
    :pswitch_2
    check-cast p1, Ljava/util/Map$Entry;

    .line 6
    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzf(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    .line 8
    :pswitch_3
    check-cast p1, Ljava/lang/Enum;

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/utility/Flags;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public addOrRemoveIf(ZLjava/lang/Enum;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    if-eqz p1, :cond_0

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/utility/Flags;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0}, Ljava/util/AbstractCollection;->clear()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->clear()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->clear()V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/motorola/camera/utility/Flags;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/util/Map$Entry;

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :pswitch_2
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    return v0

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/utility/Flags;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/utility/Flags;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/utility/Flags;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;-><init>(Ljava/util/AbstractMap;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;-><init>(Ljava/util/AbstractMap;I)V

    return-object v0

    :pswitch_1
    new-instance v0, Landroidx/collection/ArrayMap$MapIterator;

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArrayMap;

    invoke-direct {v0, p0}, Landroidx/collection/ArrayMap$MapIterator;-><init>(Landroidx/collection/ArrayMap;)V

    return-object v0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/utility/Flags;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_2
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/utility/Flags;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/utility/Flags;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/utility/Flags;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->size()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->size()I

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArrayMap;

    iget p0, p0, Landroidx/collection/SimpleArrayMap;->size:I

    return p0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/utility/Flags;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1
    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/utility/Flags;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/utility/Flags;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
