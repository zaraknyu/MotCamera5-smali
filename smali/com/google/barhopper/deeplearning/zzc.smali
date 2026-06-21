.class public final Lcom/google/barhopper/deeplearning/zzc;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;


# static fields
.field private static final zzb:Lcom/google/barhopper/deeplearning/zzc;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/barhopper/deeplearning/zzc;

    invoke-direct {v0}, Lcom/google/barhopper/deeplearning/zzc;-><init>()V

    sput-object v0, Lcom/google/barhopper/deeplearning/zzc;->zzb:Lcom/google/barhopper/deeplearning/zzc;

    const-class v1, Lcom/google/barhopper/deeplearning/zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzV(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    return-void
.end method

.method public static zza$1()Lcom/google/barhopper/deeplearning/zzb;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/zzc;->zzb:Lcom/google/barhopper/deeplearning/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzG()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    move-result-object v0

    check-cast v0, Lcom/google/barhopper/deeplearning/zzb;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/barhopper/deeplearning/zzc;I)V
    .locals 1

    iget v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzd:I

    iput p1, p0, Lcom/google/barhopper/deeplearning/zzc;->zzh:I

    return-void
.end method

.method public static zzd(Lcom/google/barhopper/deeplearning/zzc;F)V
    .locals 4

    iget-object v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcs;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcs;->zza:Z

    if-nez v1, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzc:I

    if-nez v1, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :cond_0
    add-int v2, v1, v1

    :goto_0
    if-lt v2, v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzb:[F

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzc:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;-><init>([FIZ)V

    iput-object v1, p0, Lcom/google/barhopper/deeplearning/zzc;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/google/barhopper/deeplearning/zzc;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzh(F)V

    return-void
.end method

.method public static zze(Lcom/google/barhopper/deeplearning/zzc;F)V
    .locals 4

    iget-object v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcs;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcs;->zza:Z

    if-nez v1, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzc:I

    if-nez v1, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :cond_0
    add-int v2, v1, v1

    :goto_0
    if-lt v2, v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzb:[F

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzc:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;-><init>([FIZ)V

    iput-object v1, p0, Lcom/google/barhopper/deeplearning/zzc;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzh(F)V

    return-void
.end method

.method public static synthetic zzf(Lcom/google/barhopper/deeplearning/zzc;I)V
    .locals 1

    iget v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzd:I

    iput p1, p0, Lcom/google/barhopper/deeplearning/zzc;->zzg:I

    return-void
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;
    .locals 7

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
    sget-object p0, Lcom/google/barhopper/deeplearning/zzc;->zzb:Lcom/google/barhopper/deeplearning/zzc;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/barhopper/deeplearning/zzb;

    sget-object p1, Lcom/google/barhopper/deeplearning/zzc;->zzb:Lcom/google/barhopper/deeplearning/zzc;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/barhopper/deeplearning/zzc;

    invoke-direct {p0}, Lcom/google/barhopper/deeplearning/zzc;-><init>()V

    return-object p0

    :cond_3
    const-string/jumbo v5, "zzi"

    const-string/jumbo v6, "zzj"

    const-string/jumbo v0, "zzd"

    const-string/jumbo v1, "zze"

    const-string/jumbo v2, "zzf"

    const-string/jumbo v3, "zzg"

    const-string/jumbo v4, "zzh"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/barhopper/deeplearning/zzc;->zzb:Lcom/google/barhopper/deeplearning/zzc;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0002\u0000\u0001\u0013\u0002\u0013\u0003\u100b\u0000\u0004\u100b\u0001\u0005\u100b\u0002\u0006\u100b\u0003"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
