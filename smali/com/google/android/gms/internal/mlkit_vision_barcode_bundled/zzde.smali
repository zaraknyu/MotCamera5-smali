.class public Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;
.source "SourceFile"


# instance fields
.field public final zza:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zza:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzd()I

    move-result v0

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v2

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzd()I

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zza:I

    iget v2, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zza:I

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    if-eq v0, v2, :cond_4

    :goto_1
    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzd()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;II)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public zza(I)B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zza:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public zzb(I)B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zza:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public zzc()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public zzd()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zza:[B

    array-length p0, p0

    return p0
.end method

.method public zze([BIII)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zza:[B

    invoke-static {p0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final zzf()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;II)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzd()I

    move-result v0

    if-gt p3, v0, :cond_3

    add-int v0, p2, p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzd()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzc()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzc()I

    move-result p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzc()I

    move-result p1

    add-int/2addr p1, p2

    :goto_0
    if-ge p3, v1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zza:[B

    aget-byte p2, p2, p3

    aget-byte v2, v0, p1

    if-eq p2, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzd()I

    move-result p1

    const-string v0, "Ran off end of other: "

    const-string v1, ", "

    invoke-static {p2, p3, v0, v1, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzd()I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Length too large: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zzi(III)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzc()I

    move-result v0

    add-int/2addr v0, p2

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zza:Ljava/nio/charset/Charset;

    move p2, v0

    :goto_0
    add-int v1, v0, p3

    if-ge p2, v1, :cond_0

    mul-int/lit8 p1, p1, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zza:[B

    aget-byte v1, v1, p2

    add-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final zzj(III)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzc()I

    move-result v0

    add-int/2addr v0, p2

    add-int/2addr p3, v0

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zza:[B

    invoke-static {p0, p1, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza([BIII)I

    move-result p0

    return p0
.end method

.method public final zzk(II)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzd()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzo(III)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzda;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zza:[B

    invoke-direct {v0, v1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzda;-><init>(II[B)V

    return-object v0
.end method

.method public final zzl(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzc()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzd()I

    move-result v2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zza:[B

    invoke-direct {v0, p0, v1, v2, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzc()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzd()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zza:[B

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzc(II[B)V

    return-void
.end method

.method public final zzn()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzc()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zza:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza([BIII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method
