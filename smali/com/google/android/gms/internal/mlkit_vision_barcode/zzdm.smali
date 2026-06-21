.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcv;
.source "SourceFile"


# instance fields
.field public final transient zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

.field public final transient zzb:[Ljava/lang/Object;

.field public final transient zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzz;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;->zzb:[Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;->zzc:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;->zzj(I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcq;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;->zzc:I

    return p0
.end method

.method public final zza(I[Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;->zza(I[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
