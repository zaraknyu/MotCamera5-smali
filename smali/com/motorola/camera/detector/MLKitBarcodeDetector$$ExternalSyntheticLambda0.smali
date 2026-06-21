.class public final synthetic Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->sInitialized:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    sget-object v3, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zza:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v4, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    invoke-static {v1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb(Lcom/motorola/camera/CameraApp;)Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sput-boolean v2, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->sInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    invoke-direct {v1, v0}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v3

    const-class v4, Lcom/google/mlkit/vision/barcode/internal/zzg;

    invoke-virtual {v3, v4}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mlkit/vision/barcode/internal/zzg;

    iget-object v4, v3, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Lcom/google/mlkit/vision/barcode/internal/zzi;

    new-instance v5, Lcom/google/mlkit/vision/barcode/internal/zzh;

    invoke-virtual {v4, v1}, Landroidx/media3/common/BasePlayer;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mlkit/vision/barcode/internal/zzl;

    iget-object v3, v3, Lcom/google/mlkit/vision/barcode/internal/zzg;->zzb:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    iget-object v0, v3, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;->zza:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    :goto_1
    invoke-static {}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzf()Z

    move-result v3

    if-eq v2, v3, :cond_2

    const-string/jumbo v2, "play-services-mlkit-barcode-scanning"

    goto :goto_2

    :cond_2
    const-string v2, "barcode-scanning"

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxa;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    move-result-object v2

    invoke-direct {v5, v1, v4, v0, v2}, Lcom/google/mlkit/vision/barcode/internal/zzh;-><init>(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzl;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;)V

    iput-object v5, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanner:Lcom/google/mlkit/vision/barcode/internal/zzh;

    return-void

    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanner:Lcom/google/mlkit/vision/barcode/internal/zzh;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/mlkit/vision/barcode/internal/zzh;->close()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanner:Lcom/google/mlkit/vision/barcode/internal/zzh;

    iget-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-enter v0

    :try_start_6
    iget-object p0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
