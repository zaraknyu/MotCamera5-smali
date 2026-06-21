.class public final Lcom/google/mlkit/vision/barcode/internal/zzi;
.super Landroidx/media3/common/BasePlayer;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media3/common/BasePlayer;-><init>(I)V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzf()Z

    move-result v2

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "play-services-mlkit-barcode-scanning"

    goto :goto_0

    :cond_0
    const-string v1, "barcode-scanning"

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxa;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    move-result-object v1

    sget-object v2, Lcom/google/mlkit/vision/barcode/internal/zzo;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    const-string v2, "com.google.mlkit.dynamite.barcode"

    invoke-static {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v2

    const v3, 0xc306c20

    if-lt v2, v3, :cond_2

    :goto_1
    new-instance v2, Lcom/google/mlkit/vision/barcode/internal/zzo;

    invoke-direct {v2, v0, p1, v1}, Lcom/google/mlkit/vision/barcode/internal/zzo;-><init>(Landroid/content/Context;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;)V

    goto :goto_2

    :cond_2
    new-instance v2, Landroidx/compose/material/ripple/StateLayer;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzah;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    iput-object v0, v2, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzah;->zza:I

    iput-object v1, v2, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    :goto_2
    new-instance v0, Lcom/google/mlkit/vision/barcode/internal/zzl;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/mlkit/vision/barcode/internal/zzl;-><init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzm;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;)V

    return-object v0
.end method
