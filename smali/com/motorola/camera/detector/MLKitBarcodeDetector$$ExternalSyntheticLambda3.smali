.class public final synthetic Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

.field public final synthetic f$1:Lcom/google/mlkit/vision/common/InputImage;

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;Lcom/google/mlkit/vision/common/InputImage;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    iput-object p2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;->f$1:Lcom/google/mlkit/vision/common/InputImage;

    iput p3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;->f$2:I

    iput-wide p4, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    iget-object v2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;->f$1:Lcom/google/mlkit/vision/common/InputImage;

    iget v3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;->f$2:I

    iget-wide v4, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;->f$3:J

    iget-object p0, v1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanner:Lcom/google/mlkit/vision/barcode/internal/zzh;

    if-eqz p0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v6, "This detector is already closed!"

    const/16 v7, 0xe

    invoke-direct {v0, v6, v7}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {v6}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget v0, v2, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    const/16 v6, 0x20

    if-lt v0, v6, :cond_1

    iget v0, v2, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    if-lt v0, v6, :cond_1

    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzl;

    iget-object v6, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzf:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/google/mlkit/vision/common/internal/zza;

    invoke-direct {v7, p0, v2}, Lcom/google/mlkit/vision/common/internal/zza;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzh;Lcom/google/mlkit/vision/common/InputImage;)V

    iget-object v8, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zze:Lcom/google/android/gms/tasks/zzs;

    iget-object v8, v8, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/tasks/zzb;

    invoke-virtual {v0, v6, v7, v8}, Lcom/google/mlkit/vision/barcode/internal/zzl;->callAfterLoad(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/zzb;)Lcom/google/android/gms/tasks/zzw;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v6, "InputImage width and height should be at least 32!"

    const/4 v7, 0x3

    invoke-direct {v0, v6, v7}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {v6}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    :goto_0
    iget v0, v2, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    iget v7, v2, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    new-instance v8, Lcom/motorola/camera/PermissionCallback;

    invoke-direct {v8, p0, v0, v7}, Lcom/motorola/camera/PermissionCallback;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzh;II)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    new-instance v7, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {v7}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/zzh;

    invoke-direct {v0, p0, v8, v7}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/motorola/camera/PermissionCallback;Lcom/google/android/gms/tasks/zzw;)V

    iget-object v8, v6, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzh;)V

    invoke-virtual {v6}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    new-instance v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda4;

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;Lcom/google/mlkit/vision/common/InputImage;IJ)V

    invoke-virtual {v7, p0, v0}, Lcom/google/android/gms/tasks/zzw;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v2, 0x16

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v7, p0, v0}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    new-instance p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda6;

    invoke-direct {p0, v1, v4, v5}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;J)V

    invoke-virtual {v7, p0}, Lcom/google/android/gms/tasks/zzw;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2
    return-void
.end method
