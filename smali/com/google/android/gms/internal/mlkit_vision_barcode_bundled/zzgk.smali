.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/util/AbstractMap;

.field public zzb:I

.field public zzc:Z

.field public zzd:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/AbstractMap;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zza:Ljava/util/AbstractMap;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverflowIterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzd:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zza:Ljava/util/AbstractMap;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzd:Ljava/util/Iterator;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzd:Ljava/util/Iterator;

    return-object p0
.end method

.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zza:Ljava/util/AbstractMap;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->entryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zza:Ljava/util/AbstractMap;

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    iget v3, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzb:I

    if-lt v0, v3, :cond_3

    iget-object v0, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zza()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzc:Z

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zza:Ljava/util/AbstractMap;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->entryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->entryList:Ljava/util/List;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    :goto_0
    return-object p0

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzc:Z

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zza:Ljava/util/AbstractMap;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzb:I

    if-ge v1, v2, :cond_1

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zza:[Ljava/lang/Object;

    aget-object p0, p0, v1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zza()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->$r8$classId:I

    const-string/jumbo v1, "remove() was called before next()"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zza:Ljava/util/AbstractMap;

    packed-switch v0, :pswitch_data_0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzc:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzc:Z

    sget v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->$r8$clinit:I

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->checkMutable()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:I

    iget-object v1, v3, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->entryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:I

    invoke-virtual {v3, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->removeArrayEntryAt(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzc:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzc:Z

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->$r8$clinit:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzo()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:I

    iget v1, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzb:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:I

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzm(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zza()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :goto_1
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public zza()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzd:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zza:Ljava/util/AbstractMap;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzd:Ljava/util/Iterator;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzd:Ljava/util/Iterator;

    return-object p0
.end method
