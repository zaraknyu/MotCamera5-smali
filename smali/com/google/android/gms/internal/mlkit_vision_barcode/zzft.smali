.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

.field public final zzc:Ljava/lang/Boolean;

.field public final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;

.field public final zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/AppFeatures;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    iget-object v0, p1, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zzc:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;

    iget-object v0, p1, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    iget-object p1, p1, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzah;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/android/gms/common/internal/zzah;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zzc:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zzc:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzah;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0, v0}, Lcom/google/android/gms/common/internal/zzah;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzah;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzah;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zzah;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 7

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zzc:Ljava/lang/Boolean;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
