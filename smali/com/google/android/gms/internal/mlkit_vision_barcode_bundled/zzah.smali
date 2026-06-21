.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzx;

.field private zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;

.field private zzl:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzV(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null containingTypeDefaultInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;->zzl:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;->zzf:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;->zzi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;
    .locals 9

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;->zzl:B

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;-><init>(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;-><init>()V

    return-object p0

    :cond_4
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzi;->zza$1:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzi;

    const-string/jumbo v7, "zzk"

    const-string/jumbo v8, "zzj"

    const-string/jumbo v0, "zzd"

    const-string/jumbo v1, "zze"

    const-string/jumbo v2, "zzf"

    const-string/jumbo v3, "zzg"

    const-string/jumbo v5, "zzh"

    const-string/jumbo v6, "zzi"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0001\u0007\u0000\u0001\u0001\u01f4\u0007\u0000\u0001\u0002\u0001\u1508\u0000\u0002\u1008\u0001\u0003\u081e\u0005\u1008\u0002\u0006\u1008\u0003\u000f\u1409\u0005\u01f4\u1009\u0004"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;->zzl:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
