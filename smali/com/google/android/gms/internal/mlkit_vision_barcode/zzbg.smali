.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;Ljava/util/Map;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->$r8$classId:I

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>(I)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Map;

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->next()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->remove()V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Map;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Map;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    if-eq p0, p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/util/AbstractSet;->hashCode()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Map;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

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

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;Ljava/util/Iterator;)V

    return-object v1

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Map;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    if-lez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_2

    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Map;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Ljava/io/Serializable;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p0, 0x0

    :goto_1
    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    :cond_2
    const/4 p0, 0x1

    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_0
    if-eqz p1, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzas;->zzc(Lcom/google/common/collect/Sets$ImprovedAbstractSet;Ljava/util/Collection;)Z

    move-result p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_0
    if-eqz p1, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "expectedSize cannot be negative but was: "

    invoke-static {v0, p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    if-ge v0, v2, :cond_3

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_0

    :cond_3
    const v0, 0x7fffffff

    :goto_0
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, v0, Ljava/util/Map$Entry;

    if-eqz v2, :cond_4

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Map;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Ljava/io/Serializable;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;->zzw()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Sets$ImprovedAbstractSet;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Map;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

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
