.class public final Lcom/google/android/gms/internal/mlkit_common/zzan;
.super Lcom/google/android/gms/internal/mlkit_common/zzaj;
.source "SourceFile"


# instance fields
.field public final transient zza:Lcom/google/android/gms/internal/mlkit_common/zzaq;

.field public final transient zzb:[Ljava/lang/Object;

.field public final transient zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzaq;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzan;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzan;->zzb:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzan;->zzc:I

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

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzan;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzaj;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaf;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzam;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzam;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzan;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzaj;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaf;

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzaf;->zzj(I)Lcom/google/android/gms/internal/mlkit_common/zzad;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzan;->zzc:I

    return p0
.end method

.method public final zza([Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzaj;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaf;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzam;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzam;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzan;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzaj;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaf;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzaf;->zza([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
