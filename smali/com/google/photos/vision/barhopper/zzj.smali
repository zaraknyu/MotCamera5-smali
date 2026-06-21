.class public final Lcom/google/photos/vision/barhopper/zzj;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;


# static fields
.field private static final zzb:Lcom/google/photos/vision/barhopper/zzj;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/photos/vision/barhopper/zzj;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzj;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzj;->zzb:Lcom/google/photos/vision/barhopper/zzj;

    const-class v1, Lcom/google/photos/vision/barhopper/zzj;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzV(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzj;->zze:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzj;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    return-void
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/photos/vision/barhopper/zzj;->zzb:Lcom/google/photos/vision/barhopper/zzj;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/barhopper/deeplearning/zzm;

    sget-object p1, Lcom/google/photos/vision/barhopper/zzj;->zzb:Lcom/google/photos/vision/barhopper/zzj;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzj;

    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/zzj;-><init>()V

    return-object p0

    :cond_3
    const-string/jumbo p0, "zzf"

    const-class p1, Lcom/google/photos/vision/barhopper/zzx;

    const-string/jumbo p2, "zzd"

    const-string/jumbo v0, "zze"

    filled-new-array {p2, v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/photos/vision/barhopper/zzj;->zzb:Lcom/google/photos/vision/barhopper/zzj;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
