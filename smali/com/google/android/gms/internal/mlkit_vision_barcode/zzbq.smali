.class public Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/lang/Object;

.field public zzb:Ljava/util/Collection;

.field public final zzc:Ljava/util/AbstractCollection;

.field public final zzd:Ljava/util/Collection;

.field public final synthetic zze:Ljava/io/Serializable;

.field public final synthetic zzf:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzf:Ljava/io/Serializable;

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zze:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc:Ljava/util/AbstractCollection;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzd:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzf:Ljava/io/Serializable;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zze:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc:Ljava/util/AbstractCollection;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 9
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzd:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 15
    check-cast v1, Ljava/util/List;

    .line 16
    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzf:Ljava/io/Serializable;

    check-cast p1, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    .line 18
    iget p2, p1, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->addToMap()V

    :cond_0
    return-void

    .line 20
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 22
    check-cast v1, Ljava/util/List;

    .line 23
    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zze:Ljava/io/Serializable;

    check-cast v1, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    .line 5
    iget v2, v1, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->addToMap()V

    :cond_0
    return p1

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 9
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 13
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->size()I

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 16
    check-cast v1, Ljava/util/List;

    .line 17
    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 19
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzf:Ljava/io/Serializable;

    check-cast v1, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    sub-int/2addr p2, v0

    .line 21
    iget v2, v1, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    add-int/2addr v2, p2

    iput v2, v1, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    if-nez v0, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->addToMap()V

    :cond_1
    move p0, p1

    :goto_0
    return p0

    .line 23
    :pswitch_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 25
    check-cast v1, Ljava/util/List;

    .line 26
    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 27
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    if-nez v0, :cond_3

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza()V

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    move p0, p1

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->size()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zze:Ljava/io/Serializable;

    check-cast v2, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    sub-int/2addr v1, v0

    .line 6
    iget v3, v2, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->addToMap()V

    :cond_1
    move p0, p1

    :goto_0
    return p0

    .line 8
    :pswitch_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 10
    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 11
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza()V

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    move p0, p1

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public addToMap()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->addToMap()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zze:Ljava/io/Serializable;

    check-cast v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clear()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zze:Ljava/io/Serializable;

    check-cast v1, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    iget v2, v1, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->removeIfEmpty()V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0

    :pswitch_0
    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->hashCode()I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    .line 2
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    return-object v0

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    .line 6
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;I)V

    return-object v0

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;

    .line 8
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public refreshIfEmpty()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzd:Ljava/util/Collection;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zze:Ljava/io/Serializable;

    check-cast v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    :cond_2
    :goto_0
    return-void
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 11
    check-cast v0, Ljava/util/List;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzf:Ljava/io/Serializable;

    check-cast v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    .line 14
    iget v1, v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->removeIfEmpty()V

    return-object p1

    .line 16
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 17
    check-cast v0, Ljava/util/List;

    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zze:Ljava/io/Serializable;

    check-cast v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    .line 4
    iget v1, v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->removeIfEmpty()V

    :cond_0
    return p1

    .line 6
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc()V

    :cond_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zze:Ljava/io/Serializable;

    check-cast v2, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    sub-int/2addr v1, v0

    iget v0, v2, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->removeIfEmpty()V

    :cond_1
    move p0, p1

    :goto_0
    return p0

    :pswitch_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->size()I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc()V

    :cond_3
    move p0, p1

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeIfEmpty()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->removeIfEmpty()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zze:Ljava/io/Serializable;

    check-cast v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->map:Ljava/util/Map;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zze:Ljava/io/Serializable;

    check-cast v2, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    sub-int/2addr v1, v0

    iget v0, v2, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/google/common/collect/Multimaps$CustomListMultimap;->totalSize:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->removeIfEmpty()V

    :cond_0
    return p1

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->size()I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc()V

    :cond_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final subList(II)Ljava/util/List;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzf:Ljava/io/Serializable;

    check-cast v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc:Ljava/util/AbstractCollection;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    if-nez p2, :cond_0

    move-object p2, p0

    :cond_0
    instance-of v1, p1, Ljava/util/RandomAccess;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Ljava/lang/Object;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;-><init>(Lcom/google/common/collect/Multimaps$CustomListMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    :goto_0
    return-object v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc:Ljava/util/AbstractCollection;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    if-nez p2, :cond_2

    move-object p2, p0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzf:Ljava/io/Serializable;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    instance-of v1, p1, Ljava/util/RandomAccess;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Ljava/lang/Object;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->refreshIfEmpty()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zze:Ljava/io/Serializable;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzd:Ljava/util/Collection;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zze:Ljava/io/Serializable;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    :cond_2
    :goto_0
    return-void
.end method

.method public zzc()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zze:Ljava/io/Serializable;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
