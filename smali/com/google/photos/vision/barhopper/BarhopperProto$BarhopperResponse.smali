.class public final Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;


# static fields
.field private static final zzb:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

.field private zzi:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzb:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    const-class v1, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzV(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzi:B

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzg:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    return-void
.end method

.method public static zzb([BLcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;)Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;
    .locals 7

    sget-object v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzb:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    array-length v5, p0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;

    move-result-object v1

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcu;

    invoke-direct {v6, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;)V

    const/4 v4, 0x0

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;->zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcu;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;->zzf(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzer; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzX(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzer;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    check-cast v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    return-object v0

    :catch_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzer;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzer;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzer;

    throw p0

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzer;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception v0

    move-object p0, v0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzer;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception v0

    move-object p0, v0

    throw p0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    return-object p0
.end method

.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;
    .locals 7

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
    iput-byte p1, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzi:B

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzb:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/barhopper/deeplearning/zzm;

    sget-object p1, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzb:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;-><init>()V

    return-object p0

    :cond_4
    sget-object v4, Lcom/google/photos/vision/barhopper/zzd;->zza$1:Lcom/google/photos/vision/barhopper/zzd;

    const-string/jumbo v5, "zzg"

    const-string/jumbo v6, "zzh"

    const-string/jumbo v0, "zzd"

    const-string/jumbo v1, "zze"

    const-class v2, Lcom/google/photos/vision/barhopper/zzc;

    const-string/jumbo v3, "zzf"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzb:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0002\u0001\u041b\u0002\u1d0c\u0000\u0003\u1008\u0001\u0004\u100a\u0002"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_5
    iget-byte p0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzi:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
