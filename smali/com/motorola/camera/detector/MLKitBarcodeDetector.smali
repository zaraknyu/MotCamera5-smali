.class public final Lcom/motorola/camera/detector/MLKitBarcodeDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sInitialized:Z = false

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public mBackoffFrameCounter:I

.field public mBackoffTimeBetweenScansFactor:I

.field public final mBarcodeListener:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

.field public mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

.field public mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mLastCaptureTimeStamp:J

.field public mScanAllowed:Z

.field public mScanner:Lcom/google/mlkit/vision/barcode/internal/zzh;

.field public mScanning:Z

.field public final mShouldBackoff:Z

.field public final mTimeBetweenScans:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    iput-boolean v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanning:Z

    iput v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    iput v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffFrameCounter:I

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBarcodeListener:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mTimeBetweenScans:J

    iput-boolean p3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mShouldBackoff:Z

    new-instance p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;I)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/zzw;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mLastCaptureTimeStamp:J

    iget-boolean v0, p1, Lcom/google/android/gms/tasks/zzw;->zzd:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->processBarcodes(Ljava/util/List;)V

    :cond_2
    iput-boolean v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanning:Z

    return-void
.end method

.method public final processBarcodes(Ljava/util/List;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    iput v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffFrameCounter:I

    iget-object v2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-eqz v4, :cond_1

    if-eq v4, v2, :cond_5

    iget-object v5, v4, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    invoke-interface {v5}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getRawBytes()[B

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v0

    :goto_0
    iget-object v6, v2, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    invoke-interface {v6}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getRawBytes()[B

    move-result-object v6

    if-eqz v6, :cond_3

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v0

    :goto_1
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    :cond_4
    :goto_2
    move-object v4, v0

    :cond_5
    :goto_3
    iput-object v4, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-nez v4, :cond_d

    iget-object v2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-eqz v4, :cond_7

    if-eq v4, v2, :cond_b

    iget-object v5, v4, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    invoke-interface {v5}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getRawBytes()[B

    move-result-object v5

    if-eqz v5, :cond_8

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    goto :goto_4

    :cond_8
    move-object v5, v0

    :goto_4
    iget-object v6, v2, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    invoke-interface {v6}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getRawBytes()[B

    move-result-object v6

    if-eqz v6, :cond_9

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    goto :goto_5

    :cond_9
    move-object v6, v0

    :goto_5
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_7

    :cond_a
    :goto_6
    move-object v4, v0

    :cond_b
    :goto_7
    iput-object v4, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-nez v4, :cond_c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/vision/barcode/common/Barcode;

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    :cond_c
    move-object v2, v0

    :cond_d
    iget-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    const/16 v1, 0x1000

    const/4 v3, -0x1

    if-eqz p1, :cond_f

    iget-object p1, p1, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    invoke-interface {p1}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getFormat()I

    move-result p1

    if-gt p1, v1, :cond_f

    if-nez p1, :cond_e

    goto :goto_8

    :cond_e
    move v3, p1

    :cond_f
    :goto_8
    const/16 p1, 0x10

    if-eq v3, p1, :cond_13

    const/16 p1, 0x100

    if-eq v3, p1, :cond_13

    const/16 p1, 0x800

    if-eq v3, p1, :cond_13

    if-eq v3, v1, :cond_13

    iget-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    iget-object v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-eqz p1, :cond_12

    if-eqz v1, :cond_12

    if-eq p1, v1, :cond_13

    iget-object p1, p1, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    invoke-interface {p1}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getRawBytes()[B

    move-result-object p1

    if-eqz p1, :cond_10

    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_9

    :cond_10
    move-object p1, v0

    :goto_9
    iget-object v1, v1, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    invoke-interface {v1}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getRawBytes()[B

    move-result-object v1

    if-eqz v1, :cond_11

    array-length v0, v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_11
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_a

    :cond_12
    iput-object v2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    return-void

    :cond_13
    :goto_a
    iget-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    return-void

    :cond_14
    iget-boolean p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mShouldBackoff:Z

    if-nez p1, :cond_15

    goto :goto_b

    :cond_15
    iget p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffFrameCounter:I

    const/4 v1, 0x4

    const/16 v2, 0x8

    if-eq p1, v1, :cond_16

    if-ne p1, v2, :cond_17

    :cond_16
    iget v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    :cond_17
    if-gt p1, v2, :cond_18

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffFrameCounter:I

    :cond_18
    :goto_b
    iget-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-nez p1, :cond_19

    iput-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    return-void

    :cond_19
    iput-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    return-void
.end method

.method public final declared-synchronized setScanAllowed(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mLastCaptureTimeStamp:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
