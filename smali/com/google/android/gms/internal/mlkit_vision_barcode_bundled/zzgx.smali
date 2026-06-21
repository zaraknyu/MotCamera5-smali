.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgx;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;
.source "SourceFile"


# virtual methods
.method public final zza(JLjava/lang/Object;)D
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final zzb(JLjava/lang/Object;)F
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final zzc(Ljava/lang/Object;JZ)V
    .locals 0

    sget-boolean p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzD(Ljava/lang/Object;JB)V

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzE(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final zzd(Ljava/lang/Object;JB)V
    .locals 0

    sget-boolean p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzD(Ljava/lang/Object;JB)V

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzE(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final zze(Ljava/lang/Object;JD)V
    .locals 0

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p4

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    invoke-virtual/range {p0 .. p5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final zzf(Ljava/lang/Object;JF)V
    .locals 0

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final zzg(JLjava/lang/Object;)Z
    .locals 0

    sget-boolean p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzt(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzu(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method
