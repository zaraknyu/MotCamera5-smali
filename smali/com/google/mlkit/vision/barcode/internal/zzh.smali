.class public final Lcom/google/mlkit/vision/barcode/internal/zzh;
.super Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/BarcodeScanner;


# instance fields
.field public final zze:Z


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzl;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzl;Ljava/util/concurrent/Executor;)V

    invoke-static {}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzf()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zze:Z

    new-instance p0, Lcom/motorola/camera/AppFeatures;

    const/16 p3, 0xf

    invoke-direct {p0, p3}, Lcom/motorola/camera/AppFeatures;-><init>(I)V

    invoke-static {p1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;-><init>(Lcom/motorola/camera/AppFeatures;)V

    new-instance p0, Lcom/motorola/camera/fsm/Fsm;

    const/16 p3, 0x8

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/motorola/camera/fsm/Fsm;-><init>(IZ)V

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    :goto_0
    iput-object p2, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    new-instance p1, Lcom/google/common/base/Splitter;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/google/common/base/Splitter;-><init>(Lcom/motorola/camera/fsm/Fsm;I)V

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zzj()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;

    invoke-direct {p3, p4, p1, p0, p2}, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;Lcom/google/common/base/Splitter;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;Ljava/lang/String;)V

    sget-object p0, Lcom/google/mlkit/common/sdkinternal/zzh;->zza:Lcom/google/mlkit/common/sdkinternal/zzh;

    invoke-virtual {p0, p3}, Lcom/google/mlkit/common/sdkinternal/zzh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getOptionalFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 2

    iget-boolean p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zze:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

    return-object p0

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [Lcom/google/android/gms/common/Feature;

    const/4 v0, 0x0

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_BARCODE:Lcom/google/android/gms/common/Feature;

    aput-object v1, p0, v0

    return-object p0
.end method
