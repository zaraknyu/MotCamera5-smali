.class public final Lcom/google/barhopper/deeplearning/zzf;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;


# static fields
.field private static final zzb:Lcom/google/barhopper/deeplearning/zzf;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/barhopper/deeplearning/zzf;

    invoke-direct {v0}, Lcom/google/barhopper/deeplearning/zzf;-><init>()V

    sput-object v0, Lcom/google/barhopper/deeplearning/zzf;->zzb:Lcom/google/barhopper/deeplearning/zzf;

    const-class v1, Lcom/google/barhopper/deeplearning/zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzV(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;

    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzf;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    return-void
.end method

.method public static zza$1()Lcom/google/barhopper/deeplearning/zze;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/zzf;->zzb:Lcom/google/barhopper/deeplearning/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzG()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    move-result-object v0

    check-cast v0, Lcom/google/barhopper/deeplearning/zze;

    return-object v0
.end method

.method public static zzc(Lcom/google/barhopper/deeplearning/zzf;Lcom/google/barhopper/deeplearning/zzc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/barhopper/deeplearning/zzf;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcs;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcs;->zza:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzf;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    :cond_1
    iget-object p0, p0, Lcom/google/barhopper/deeplearning/zzf;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    sget-object p0, Lcom/google/barhopper/deeplearning/zzf;->zzb:Lcom/google/barhopper/deeplearning/zzf;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/barhopper/deeplearning/zze;

    sget-object p1, Lcom/google/barhopper/deeplearning/zzf;->zzb:Lcom/google/barhopper/deeplearning/zzf;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/barhopper/deeplearning/zzf;

    invoke-direct {p0}, Lcom/google/barhopper/deeplearning/zzf;-><init>()V

    return-object p0

    :cond_3
    const-string/jumbo p0, "zzd"

    const-class p1, Lcom/google/barhopper/deeplearning/zzc;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/barhopper/deeplearning/zzf;->zzb:Lcom/google/barhopper/deeplearning/zzf;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
