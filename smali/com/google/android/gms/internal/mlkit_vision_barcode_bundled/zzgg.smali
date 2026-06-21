.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    return-void
.end method

.method public static zzA(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;Z)V
    .locals 3

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzA(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result p0

    add-int p3, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p3

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result p3

    add-int v0, p3, p3

    shr-int/lit8 p3, p3, 0x1f

    xor-int/2addr p3, v0

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzs(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzA(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int p3, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p3

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int v0, p3, p3

    shr-int/lit8 p3, p3, 0x1f

    xor-int/2addr p3, v0

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzs(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static zzB(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;Z)V
    .locals 6

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    const/16 v0, 0x3f

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v1

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(J)I

    move-result v2

    add-int/2addr p3, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzv(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    invoke-virtual {p2, p0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzu(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static zzC(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;Z)V
    .locals 3

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzA(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzs(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzA(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzs(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static zzD(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;Z)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzv(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzu(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static zzE(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, p1, :cond_1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public static zza(Ljava/util/List;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static zzb(Ljava/util/List;I)I
    .locals 0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    shl-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzA(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    mul-int/2addr p1, p0

    return p1
.end method

.method public static zzd(Ljava/util/List;I)I
    .locals 0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    shl-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzA(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x8

    mul-int/2addr p1, p0

    return p1
.end method

.method public static zzf(Ljava/util/List;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static zzg(Ljava/util/List;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static zzi(Ljava/util/List;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result v3

    add-int v4, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzA(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v4, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzA(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static zzj(Ljava/util/List;)I
    .locals 8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v5, v3, v3

    const/16 v7, 0x3f

    shr-long/2addr v3, v7

    xor-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static zzk(Ljava/util/List;)I
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzA(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzA(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static zzl(Ljava/util/List;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static zzn(IILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p3, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    iget-object p3, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    if-ne p3, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    :cond_0
    int-to-long p1, p1

    shl-int/lit8 p0, p0, 0x3

    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzj(ILjava/lang/Object;)V

    return-object p3
.end method

.method public static zzo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzc:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzb:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzm(Ljava/util/Map$Entry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzd()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzm(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static zzp(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzb:I

    iget v2, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzb:I

    add-int/2addr v1, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzc:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzc:[I

    iget v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzb:I

    iget v6, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzb:I

    invoke-static {v4, v3, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzd:[Ljava/lang/Object;

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzd:[Ljava/lang/Object;

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzb:I

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzb:I

    invoke-static {v5, v3, v4, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    const/4 p1, 0x1

    invoke-direct {v0, v1, v2, v4, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;-><init>(I[I[Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzf:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzb:I

    iget v2, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzb:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzm(I)V

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzc:[I

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzc:[I

    iget v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzb:I

    iget v6, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzb:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzd:[Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzd:[Ljava/lang/Object;

    iget v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzb:I

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzb:I

    invoke-static {v2, v3, v4, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzb:I

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    return-void
.end method

.method public static zzq(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;Z)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzb(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    shl-int/lit8 v1, p0, 0x3

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzb(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static zzr(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;Z)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzi(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzh(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static zzs(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;Z)V
    .locals 3

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzk(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzj(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzk(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzj(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static zzt(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;Z)V
    .locals 3

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzg(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzf(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzg(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzf(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static zzu(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;Z)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzi(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzh(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static zzv(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;Z)V
    .locals 3

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzc:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzj(I)V

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzb:[F

    aget v0, v0, p0

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzc:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzj(I)V

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzb:[F

    aget p0, p0, v2

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzg(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzc:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzj(I)V

    iget-object p3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzb:[F

    aget p3, p3, v2

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzf(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzg(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzf(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static zzw(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;Z)V
    .locals 3

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzk(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzj(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzk(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzj(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static zzx(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;Z)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzv(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzu(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static zzy(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;Z)V
    .locals 3

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v2

    move p3, p0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_1
    iget p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzg(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget p3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zzc:I

    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;->zze(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzf(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzg(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzf(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static zzz(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;Z)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzi(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzh(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
