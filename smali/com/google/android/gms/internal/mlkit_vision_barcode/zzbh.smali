.class public Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/util/Iterator;

.field public zzb:Ljava/util/Collection;

.field public final synthetic zzc:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zzc:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zzb:Ljava/util/Collection;

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zza:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;Ljava/util/ListIterator;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zzc:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zzb:Ljava/util/Collection;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zza:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zzc:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zza:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zza()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zza:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zza:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zza()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zza:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zza:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zzb:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zzc:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Ljava/io/Serializable;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/List;

    instance-of v2, v0, Ljava/util/RandomAccess;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    :goto_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzco;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzco;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zza:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zzc:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zzb:Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxa;->zzf(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zza:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zzc:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Ljava/io/Serializable;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zzb:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zzb:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zzb:Ljava/util/Collection;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public zza()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zzc:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb()V

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;->zzb:Ljava/util/Collection;

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method
