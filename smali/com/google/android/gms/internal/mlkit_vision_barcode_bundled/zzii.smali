.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzia;

.field private zzi:Ljava/lang/String;

.field private zzj:I

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

.field private zzm:Ljava/lang/String;

.field private zzn:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzV(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;->zzg:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;->zzi:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;->zzm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;
    .locals 17

    add-int/lit8 v0, p1, -0x1

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;

    const/16 v2, 0x11

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;-><init>(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;-><init>()V

    return-object v0

    :cond_3
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzi;->zza$8:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzi;

    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzi;->zza$9:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzi;

    sget-object v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzi;->zza$10:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzi;

    const-string/jumbo v15, "zzn"

    sget-object v16, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzi;->zza$11:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzi;

    const-string/jumbo v1, "zzd"

    const-string/jumbo v2, "zze"

    const-string/jumbo v4, "zzf"

    const-class v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzic;

    const-string/jumbo v6, "zzg"

    const-string/jumbo v7, "zzh"

    const-string/jumbo v8, "zzi"

    const-string/jumbo v9, "zzj"

    const-string/jumbo v11, "zzk"

    const-string/jumbo v13, "zzl"

    const-string/jumbo v14, "zzm"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzii;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v3, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0002\u0000\u0001\u180c\u0000\u0002\u001b\u0003\u1004\u0001\u0004\u1009\u0002\u0005\u1008\u0003\u0006\u180c\u0004\u0007\u180c\u0005\u0008\'\t\u1008\u0006\n\u180c\u0007"

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
