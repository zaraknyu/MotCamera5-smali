.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zziq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/lang/Long;

.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzio;

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

.field public final zzd:Ljava/lang/Integer;

.field public final zze:Ljava/lang/Integer;

.field public final zzf:Ljava/lang/Integer;

.field public final zzg:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/utility/AudioLensSwitchHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziq;->zza:Ljava/lang/Long;

    iget-object v0, p1, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzio;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzio;

    iget-object v0, p1, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    iget-object v0, p1, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziq;->zzd:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziq;->zze:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziq;->zzf:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziq;->zzg:Ljava/lang/Integer;

    return-void
.end method
