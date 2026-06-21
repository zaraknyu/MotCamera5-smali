.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/lang/Long;

.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

.field public final zzc:Ljava/lang/Boolean;

.field public final zzd:Ljava/lang/Boolean;

.field public final zze:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/AppFeatures;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqq;->zza:Ljava/lang/Long;

    iget-object v0, p1, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    iget-object v0, p1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqq;->zzc:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqq;->zzd:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqq;->zze:Ljava/lang/Boolean;

    return-void
.end method
