.class public final Lcom/google/mlkit/vision/barcode/common/Barcode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

.field public final zzb:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    invoke-interface {p1}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode;->zzb:Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getCornerPoints()[Landroid/graphics/Point;

    return-void
.end method
