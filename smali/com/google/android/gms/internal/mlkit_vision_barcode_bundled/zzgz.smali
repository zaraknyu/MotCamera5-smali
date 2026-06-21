.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:J

.field public static final zzb:Z

.field public static final zzc:Lsun/misc/Unsafe;

.field public static final zzd:Ljava/lang/Class;

.field public static final zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

.field public static final zzg:Z

.field public static final zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-class v0, Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzg()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc:Lsun/misc/Unsafe;

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzct;->$r8$clinit:I

    const-class v2, Llibcore/io/Memory;

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzv(Ljava/lang/Class;)Z

    move-result v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzv(Ljava/lang/Class;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgx;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgw;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;-><init>(Lsun/misc/Unsafe;)V

    :cond_2
    :goto_0
    sput-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    const-string v1, "logMissingMethod"

    const-string v3, "com.google.protobuf.UnsafeUtil"

    const-string/jumbo v5, "platform method missing - proto runtime falling back to safer methods: "

    const-class v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    const-string v8, "getLong"

    const-class v9, Ljava/lang/reflect/Field;

    const-string v10, "objectFieldOffset"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-class v13, Ljava/lang/Object;

    if-nez v6, :cond_3

    :goto_1
    move v6, v12

    goto :goto_2

    :cond_3
    iget-object v6, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v6, v10, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v13, v2}, [Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v6, v8, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzB()Ljava/lang/reflect/Field;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move v6, v11

    goto :goto_2

    :catchall_0
    move-exception v6

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v15, v3, v1, v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    sput-boolean v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzg:Z

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    if-nez v6, :cond_5

    :goto_3
    move v0, v12

    goto :goto_4

    :cond_5
    iget-object v6, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v6, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v9, "arrayBaseOffset"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v9, "arrayIndexScale"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getInt"

    filled-new-array {v13, v2}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v6, v0, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v0, "putInt"

    filled-new-array {v13, v2, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v13, v2}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v0, "putLong"

    filled-new-array {v13, v2, v2}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getObject"

    filled-new-array {v13, v2}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v0, "putObject"

    filled-new-array {v13, v2, v13}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v11

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v3, v1, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    sput-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzh:Z

    const-class v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzz(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zza:J

    const-class v0, [Z

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzz(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzA(Ljava/lang/Class;)V

    const-class v0, [I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzz(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzA(Ljava/lang/Class;)V

    const-class v0, [J

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzz(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzA(Ljava/lang/Class;)V

    const-class v0, [F

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzz(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzA(Ljava/lang/Class;)V

    const-class v0, [D

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzz(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzA(Ljava/lang/Class;)V

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzz(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzA(Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzB()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    :cond_6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_7

    goto :goto_5

    :cond_7
    move v11, v12

    :goto_5
    sput-boolean v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:Z

    return-void
.end method

.method public static zzA(Ljava/lang/Class;)V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzh:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method

.method public static zzB()Ljava/lang/reflect/Field;
    .locals 4

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzct;->$r8$clinit:I

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "address"

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_0

    return-object v0

    :cond_0
    return-object v2

    :cond_1
    return-object v1
.end method

.method public static zzD(Ljava/lang/Object;JB)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    const-wide/16 v2, -0x4

    and-long/2addr v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v1, v4

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v1

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static zzE(Ljava/lang/Object;JB)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    const-wide/16 v2, -0x4

    and-long/2addr v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v1, v4

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v1

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static zzc(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static zzd(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static zze(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static zzf(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static zzg()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static zzq(JLjava/lang/Object;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static zzr(Ljava/lang/Object;JJ)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static zzs(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic zzt(JLjava/lang/Object;)Z
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p0

    invoke-virtual {v0, p2, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p2

    not-long p0, p0

    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    const/4 v0, 0x3

    shl-long/2addr p0, v0

    long-to-int p0, p0

    ushr-int p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic zzu(JLjava/lang/Object;)Z
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p0

    invoke-virtual {v0, p2, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p2

    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    const/4 v0, 0x3

    shl-long/2addr p0, v0

    long-to-int p0, p0

    ushr-int p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zzv(Ljava/lang/Class;)Z
    .locals 6

    const-class v0, [B

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzct;->$r8$clinit:I

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd:Ljava/lang/Class;

    const-string/jumbo v2, "peekLong"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v3}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v2, "pokeLong"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v4, v3}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v2, "pokeInt"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v4, v3}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v2, "peekInt"

    filled-new-array {p0, v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v2, "pokeByte"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v2, "peekByte"

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v2, "pokeByteArray"

    filled-new-array {p0, v0, v4, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string/jumbo v2, "peekByteArray"

    filled-new-array {p0, v0, v4, v4}, [Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zzz(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzh:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
