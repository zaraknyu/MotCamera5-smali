.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza([BIII)I
    .locals 11

    const/16 v0, -0x13

    const/16 v1, -0x10

    const/16 v2, -0x3e

    const/4 v3, 0x0

    const/16 v4, -0x60

    const/16 v5, -0x20

    const/16 v6, -0x41

    const/4 v7, -0x1

    if-eqz p1, :cond_d

    if-lt p2, p3, :cond_0

    return p1

    :cond_0
    int-to-byte v8, p1

    if-ge v8, v5, :cond_1

    if-lt v8, v2, :cond_18

    add-int/lit8 p1, p2, 0x1

    .line 1
    aget-byte p2, p0, p2

    if-gt p2, v6, :cond_18

    :goto_0
    move p2, p1

    goto/16 :goto_5

    :cond_1
    shr-int/lit8 v9, p1, 0x8

    not-int v9, v9

    if-ge v8, v1, :cond_6

    int-to-byte p1, v9

    if-nez p1, :cond_3

    add-int/lit8 p1, p2, 0x1

    .line 2
    aget-byte p2, p0, p2

    if-ge p1, p3, :cond_2

    move v10, p2

    move p2, p1

    move p1, v10

    goto :goto_1

    .line 3
    :cond_2
    invoke-static {v8, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;->zzh(II)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    if-gt p1, v6, :cond_18

    if-ne v8, v5, :cond_4

    if-lt p1, v4, :cond_18

    :cond_4
    if-ne v8, v0, :cond_5

    if-ge p1, v4, :cond_18

    :cond_5
    add-int/lit8 p1, p2, 0x1

    .line 4
    aget-byte p2, p0, p2

    if-gt p2, v6, :cond_18

    goto :goto_0

    :cond_6
    int-to-byte v9, v9

    if-nez v9, :cond_8

    add-int/lit8 p1, p2, 0x1

    .line 5
    aget-byte v9, p0, p2

    if-ge p1, p3, :cond_7

    move p2, p1

    move p1, v3

    goto :goto_2

    .line 6
    :cond_7
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;->zzh(II)I

    move-result p0

    return p0

    :cond_8
    shr-int/lit8 p1, p1, 0x10

    :goto_2
    if-nez p1, :cond_c

    add-int/lit8 p1, p2, 0x1

    .line 7
    aget-byte p2, p0, p2

    if-ge p1, p3, :cond_9

    move v10, p2

    move p2, p1

    move p1, v10

    goto :goto_4

    .line 8
    :cond_9
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    const/16 p0, -0xc

    if-gt v8, p0, :cond_b

    if-gt v9, v6, :cond_b

    if-le p2, v6, :cond_a

    goto :goto_3

    :cond_a
    shl-int/lit8 p0, v9, 0x8

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, v8

    xor-int/2addr p0, p1

    return p0

    :cond_b
    :goto_3
    return v7

    :cond_c
    :goto_4
    if-gt v9, v6, :cond_18

    shl-int/lit8 v8, v8, 0x1c

    add-int/lit8 v9, v9, 0x70

    add-int/2addr v9, v8

    shr-int/lit8 v8, v9, 0x1e

    if-nez v8, :cond_18

    if-gt p1, v6, :cond_18

    add-int/lit8 p1, p2, 0x1

    .line 9
    aget-byte p2, p0, p2

    if-gt p2, v6, :cond_18

    goto :goto_0

    :cond_d
    :goto_5
    if-ge p2, p3, :cond_e

    .line 10
    aget-byte p1, p0, p2

    if-ltz p1, :cond_e

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_e
    if-lt p2, p3, :cond_f

    goto :goto_7

    :cond_f
    :goto_6
    if-lt p2, p3, :cond_10

    :goto_7
    return v3

    :cond_10
    add-int/lit8 p1, p2, 0x1

    .line 11
    aget-byte v8, p0, p2

    if-gez v8, :cond_19

    if-ge v8, v5, :cond_12

    if-lt p1, p3, :cond_11

    return v8

    :cond_11
    if-lt v8, v2, :cond_18

    add-int/lit8 p2, p2, 0x2

    .line 12
    aget-byte p1, p0, p1

    if-le p1, v6, :cond_f

    goto :goto_8

    :cond_12
    if-ge v8, v1, :cond_16

    add-int/lit8 v9, p3, -0x1

    if-lt p1, v9, :cond_13

    .line 13
    invoke-static {p1, p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;->zzc(II[B)I

    move-result p0

    return p0

    :cond_13
    add-int/lit8 v9, p2, 0x2

    .line 14
    aget-byte p1, p0, p1

    if-gt p1, v6, :cond_18

    if-ne v8, v5, :cond_14

    if-lt p1, v4, :cond_18

    :cond_14
    if-ne v8, v0, :cond_15

    if-ge p1, v4, :cond_18

    :cond_15
    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p0, v9

    if-le p1, v6, :cond_f

    goto :goto_8

    :cond_16
    add-int/lit8 v9, p3, -0x2

    if-lt p1, v9, :cond_17

    .line 15
    invoke-static {p1, p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;->zzc(II[B)I

    move-result p0

    return p0

    :cond_17
    add-int/lit8 v9, p2, 0x2

    .line 16
    aget-byte p1, p0, p1

    if-gt p1, v6, :cond_18

    shl-int/lit8 v8, v8, 0x1c

    add-int/lit8 p1, p1, 0x70

    add-int/2addr p1, v8

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_18

    add-int/lit8 p1, p2, 0x3

    aget-byte v8, p0, v9

    if-gt v8, v6, :cond_18

    add-int/lit8 p2, p2, 0x4

    aget-byte p1, p0, p1

    if-le p1, v6, :cond_f

    :cond_18
    :goto_8
    return v7

    :cond_19
    move p2, p1

    goto :goto_6
.end method

.method public static final zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;
    .locals 1

    .line 17
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    .line 18
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    .line 19
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 20
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zzb:Z

    if-nez v0, :cond_1

    .line 21
    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    .line 22
    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zzb:Z

    move-object p0, v0

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zzg()V

    .line 24
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->putAll(Ljava/util/Map;)V

    :cond_2
    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;Ljava/util/Map$Entry;)V
    .locals 0

    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;
    .locals 2

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This should never be called."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :pswitch_0
    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzJ(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;

    move-result-object p0

    .line 6
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unable to get message info for "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unsupported message type: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public zzc(Ljava/lang/Class;)Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
