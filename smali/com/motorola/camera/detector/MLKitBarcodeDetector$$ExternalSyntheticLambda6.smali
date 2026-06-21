.class public final synthetic Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    iput-wide p2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda6;->f$1:J

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/zzw;)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    iget-wide v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda6;->f$1:J

    iget-object p0, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-enter p0

    :try_start_0
    iget-object v3, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    invoke-direct {v4, v0, p1, v1, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;Lcom/google/android/gms/tasks/zzw;J)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->onComplete(Lcom/google/android/gms/tasks/zzw;)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
