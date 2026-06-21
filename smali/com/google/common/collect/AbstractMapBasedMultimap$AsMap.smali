.class public Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public transient entrySet:Ljava/util/AbstractSet;

.field public final transient submap:Ljava/util/Map;

.field public final synthetic this$0:Ljava/io/Serializable;

.field public transient values:Ljava/util/AbstractCollection;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Serializable;Ljava/util/Map;I)V
    .locals 0

    iput p3, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->$r8$classId:I

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Ljava/io/Serializable;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    if-ne v1, v2, :cond_1

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->clear()V

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->next()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->remove()V

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Ljava/io/Serializable;

    check-cast v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    iget-object v1, v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->map:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    if-ne v2, v1, :cond_3

    invoke-virtual {v0}, Lcom/google/common/collect/Multimaps$CustomListMultimap;->clear()V

    goto :goto_4

    :cond_3
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V

    :goto_3
    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->next()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->remove()V

    goto :goto_3

    :cond_4
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->entrySet:Ljava/util/AbstractSet;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->entrySet:Ljava/util/AbstractSet;

    :cond_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->entrySet:Ljava/util/AbstractSet;

    check-cast v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->entrySet:Ljava/util/AbstractSet;

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    if-eq p0, p1, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

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

    :pswitch_0
    if-eq p0, p1, :cond_3

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p0, 0x1

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Ljava/io/Serializable;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/List;

    instance-of v2, v0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    goto :goto_1

    :goto_2
    return-object v1

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-object v0, v1

    :goto_3
    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_2

    goto :goto_5

    :cond_2
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Ljava/io/Serializable;

    check-cast p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    check-cast v0, Ljava/util/List;

    instance-of v2, v0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    :goto_4
    move-object v1, v2

    goto :goto_5

    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    goto :goto_4

    :goto_5
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Ljava/io/Serializable;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;->zzw()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Ljava/io/Serializable;

    check-cast p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->keySet:Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->map:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/util/NavigableMap;)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    instance-of v1, v0, Ljava/util/SortedMap;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/util/SortedMap;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/util/Map;)V

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->keySet:Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Ljava/io/Serializable;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    move-object p0, p1

    :goto_0
    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Ljava/io/Serializable;

    check-cast v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    iget-object p1, v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->factory:Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;

    invoke-virtual {p1}, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    iget v2, v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    move-object p0, p1

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->values:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/common/collect/Maps$Values;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Maps$Values;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Maps$Values;-><init>(Ljava/util/AbstractMap;I)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->values:Ljava/util/AbstractCollection;

    :cond_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->values:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/common/collect/Maps$Values;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/common/collect/Maps$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Maps$Values;-><init>(Ljava/util/AbstractMap;I)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->values:Ljava/util/AbstractCollection;

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public wrapEntry(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableEntry;
    .locals 3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Ljava/io/Serializable;

    check-cast p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    check-cast p1, Ljava/util/List;

    instance-of v1, p1, Ljava/util/RandomAccess;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    :goto_0
    new-instance p0, Lcom/google/common/collect/ImmutableEntry;

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
