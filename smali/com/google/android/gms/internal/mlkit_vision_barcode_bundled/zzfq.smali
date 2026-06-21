.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

.field public final zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    instance-of p1, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;)I
    .locals 8

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zze:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    move v1, v3

    move v2, v1

    :goto_0
    iget v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzb:I

    if-ge v2, v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzc:[I

    aget v4, v4, v2

    ushr-int/lit8 v4, v4, 0x3

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzd:[Ljava/lang/Object;

    aget-object v5, v5, v2

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    const/16 v6, 0x8

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzA(I)I

    move-result v6

    add-int/2addr v6, v6

    const/16 v7, 0x10

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzA(I)I

    move-result v7

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzA(I)I

    move-result v4

    add-int/2addr v4, v7

    const/16 v7, 0x18

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzA(I)I

    move-result v7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v5

    invoke-static {v5, v5, v7}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(III)I

    move-result v5

    add-int/2addr v6, v4

    add-int/2addr v6, v5

    add-int/2addr v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zze:I

    :cond_1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;->zzc:Z

    if-eqz p0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzb:I

    move v0, v3

    :goto_1
    if-ge v3, p1, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzo(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzd()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzo(Ljava/util/Map$Entry;)I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_2

    :cond_3
    add-int/2addr v1, v0

    :cond_4
    return v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)I
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->hashCode()I

    move-result v0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;->zzc:Z

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    return-object p0

    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzk()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    move-result-object p0

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzf:Z

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzg()V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zzp(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;->zzc:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zzo(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcu;)V
    .locals 10

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    :cond_0
    move-object v6, v1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzc:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-ge p3, p4, :cond_a

    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/mlkit_vision_common/zzat;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcu;)I

    move-result v4

    iget v2, p5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcu;->zza:I

    iget-object p3, p5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcu;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    const/4 v3, 0x2

    if-eq v2, v0, :cond_3

    and-int/lit8 v0, v2, 0x7

    if-ne v0, v3, :cond_2

    ushr-int/lit8 v0, v2, 0x3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;

    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;I)V

    iget-object p3, p3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zzd:Ljava/util/Map;

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;

    move-object v3, p2

    move v5, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zzat;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcu;)I

    move-result p3

    goto :goto_0

    :cond_2
    move v5, p4

    move-object v7, p5

    invoke-static {v2, p2, v4, v5, v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zzat;->zzp(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcu;)I

    move-result p3

    goto :goto_0

    :cond_3
    move v5, p4

    move-object v7, p5

    const/4 p4, 0x0

    move-object p5, p1

    :goto_1
    if-ge v4, v5, :cond_8

    invoke-static {p2, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zzat;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcu;)I

    move-result v0

    iget v2, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcu;->zza:I

    ushr-int/lit8 v4, v2, 0x3

    and-int/lit8 v8, v2, 0x7

    if-eq v4, v3, :cond_5

    const/4 v9, 0x3

    if-eq v4, v9, :cond_4

    goto :goto_2

    :cond_4
    if-ne v8, v3, :cond_6

    invoke-static {p2, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zzat;->zza([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcu;)I

    move-result v4

    iget-object p5, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcu;->zzc:Ljava/lang/Object;

    check-cast p5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    goto :goto_1

    :cond_5
    if-nez v8, :cond_6

    invoke-static {p2, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zzat;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcu;)I

    move-result v4

    iget p4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcu;->zza:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;

    invoke-direct {v0, v1, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;I)V

    iget-object v2, p3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zzd:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;

    goto :goto_1

    :cond_6
    :goto_2
    const/16 v4, 0xc

    if-eq v2, v4, :cond_7

    invoke-static {v2, p2, v0, v5, v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zzat;->zzp(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcu;)I

    move-result v4

    goto :goto_1

    :cond_7
    move p3, v0

    goto :goto_3

    :cond_8
    move p3, v4

    :goto_3
    if-eqz p5, :cond_9

    shl-int/lit8 p4, p4, 0x3

    or-int/2addr p4, v3

    invoke-virtual {v6, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzj(ILjava/lang/Object;)V

    :cond_9
    move p4, v5

    move-object p5, v7

    goto/16 :goto_0

    :cond_a
    move v5, p4

    if-ne p3, v5, :cond_b

    return-void

    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzer;

    const-string p1, "Failed to parse the message."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;)V
    .locals 7

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzf()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzb:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzc:[I

    aget v0, v0, p1

    ushr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzd:[Ljava/lang/Object;

    aget-object v1, v1, p1

    iget-object v2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;->zzb:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    instance-of v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    const/16 v4, 0xc

    const/4 v5, 0x2

    const/16 v6, 0xb

    if-eqz v3, :cond_0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    invoke-virtual {v2, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzs(II)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zze(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    goto :goto_1

    :cond_0
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    invoke-virtual {v2, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzs(II)V

    const/16 v0, 0x1a

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzF()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzab(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(I)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzj(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Z
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    iget-object v1, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;->zzc:Z

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p1, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzk()Z

    move-result p0

    return p0
.end method
