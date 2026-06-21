.class public final synthetic Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

.field public final synthetic f$1:Lcom/google/mlkit/vision/common/InputImage;

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;Lcom/google/mlkit/vision/common/InputImage;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    iput-object p2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda4;->f$1:Lcom/google/mlkit/vision/common/InputImage;

    iput p3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda4;->f$2:I

    iput-wide p4, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda4;->f$3:J

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 7

    iget-object v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    iget-object v2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda4;->f$1:Lcom/google/mlkit/vision/common/InputImage;

    iget v3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda4;->f$2:I

    iget-wide v4, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda4;->f$3:J

    move-object v6, p1

    check-cast v6, Ljava/util/List;

    iget-object p0, v1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-enter p0

    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, v1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, v1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;Lcom/google/mlkit/vision/common/InputImage;IJLjava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
