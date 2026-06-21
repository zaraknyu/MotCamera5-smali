.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;


# instance fields
.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;

.field public final zzd:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzd:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zza:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    move-result-object p0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;->zzd:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;

    invoke-direct {v2, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;)V

    goto :goto_1

    :cond_0
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;->$r8$clinit:I

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;->$r8$clinit:I

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;->zzc()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    sget v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;->$r8$clinit:I

    invoke-static {p0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;->zzl(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;

    if-nez p0, :cond_2

    return-object v2

    :cond_2
    return-object p0

    :cond_3
    return-object v1

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "messageType"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
