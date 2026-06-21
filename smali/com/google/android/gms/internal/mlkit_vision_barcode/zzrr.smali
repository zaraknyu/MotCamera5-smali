.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqq;

.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

.field public final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

.field public final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqk;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/AppFeatures;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqq;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqq;

    iget-object v0, p1, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;

    iget-object v0, p1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    iget-object v0, p1, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    iget-object p1, p1, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqk;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqk;

    return-void
.end method
