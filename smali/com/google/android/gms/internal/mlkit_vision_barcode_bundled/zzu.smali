.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;


# instance fields
.field private zzd:I

.field private zze:J

.field private zzf:J

.field private zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;

.field private zzh:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;

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
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;->zzh:B

    return-void
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;
    .locals 1

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
    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;->zzh:B

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzl;

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;-><init>()V

    return-object p0

    :cond_4
    const-string/jumbo p0, "zzf"

    const-string/jumbo p1, "zzg"

    const-string/jumbo p2, "zzd"

    const-string/jumbo v0, "zze"

    filled-new-array {p2, v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0003\u0001\u1505\u0000\u0002\u1505\u0001\u0003\u1409\u0002"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;->zzh:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
