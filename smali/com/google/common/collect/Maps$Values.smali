.class public final Lcom/google/common/collect/Maps$Values;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final map:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Serializable;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/common/collect/Maps$Values;->$r8$classId:I

    iput-object p1, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/AbstractMap;I)V
    .locals 0

    .line 2
    iput p2, p0, Lcom/google/common/collect/Maps$Values;->$r8$classId:I

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget v0, p0, Lcom/google/common/collect/Maps$Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->clear()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomListMultimap;->clear()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->clear()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->clear()V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/Maps$Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->asMap()Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Maps$Values;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$Values;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_2
    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_3
    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/Maps$Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    return p0

    :pswitch_2
    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Lcom/google/common/collect/Maps$Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/CompactHashMap$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/CompactHashMap$1;-><init>(Lcom/google/common/collect/CompactHashMap;I)V

    move-object p0, v0

    :goto_0
    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$1;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPNode$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/adobe/internal/xmp/impl/XMPNode$1;-><init>(Ljava/util/Iterator;I)V

    return-object v0

    :pswitch_2
    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->zzl()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;I)V

    move-object p0, v0

    :goto_1
    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Lcom/google/common/collect/Maps$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lcom/google/common/collect/Maps$Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwa;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_2
    iget-object v0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    :try_start_1
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4

    iget v0, p0, Lcom/google/common/collect/Maps$Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    if-eqz p1, :cond_0

    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-super {p0, v1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    throw p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Ljava/io/Serializable;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;->zzw()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    :goto_1
    return p0

    :pswitch_2
    iget-object v0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-super {p0, v1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4

    iget v0, p0, Lcom/google/common/collect/Maps$Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    if-eqz p1, :cond_0

    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-super {p0, v1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    throw p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Ljava/io/Serializable;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;->zzw()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    :goto_1
    return p0

    :pswitch_2
    iget-object v0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-super {p0, v1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/Maps$Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    iget p0, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0

    :pswitch_2
    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->size()I

    move-result p0

    return p0

    :pswitch_3
    iget-object p0, p0, Lcom/google/common/collect/Maps$Values;->map:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
