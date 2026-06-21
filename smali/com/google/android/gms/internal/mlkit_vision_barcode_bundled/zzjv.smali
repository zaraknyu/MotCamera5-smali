.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;


# instance fields
.field private zze:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzV(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;->zze:B

    return-void
.end method

.method public static zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x0

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
    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;->zze:B

    return-object v1

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;-><init>(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;-><init>()V

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string p2, "\u0003\u0000"

    invoke-direct {p1, p0, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjv;->zze:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
