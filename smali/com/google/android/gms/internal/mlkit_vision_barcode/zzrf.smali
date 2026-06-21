.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvd;

.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

.field public final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;

.field public final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzru;

.field public final zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfv;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/Fsm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvd;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrf;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvd;

    iget-object v0, p1, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    iget-object v0, p1, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrf;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    iget-object v0, p1, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrf;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;

    iget-object v0, p1, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzru;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrf;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzru;

    iget-object p1, p1, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfv;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrf;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfv;

    return-void
.end method
