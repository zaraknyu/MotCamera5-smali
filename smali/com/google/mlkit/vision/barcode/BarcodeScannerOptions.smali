.class public final Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zzc:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zzc:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zzah;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-static {p0, p0}, Lcom/google/android/gms/common/internal/zzah;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zzc:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    filled-new-array {v0, v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
