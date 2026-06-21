.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;

.field public transient zzc:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;->zzv()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;->zzv()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;->zzv()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;->zzv()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzv()Ljava/util/Map;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;->zzc:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;-><init>(Ljava/io/Serializable;Ljava/util/Map;I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;->zzc:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final zzw()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;

    return-object v1

    :cond_0
    return-object v0
.end method
