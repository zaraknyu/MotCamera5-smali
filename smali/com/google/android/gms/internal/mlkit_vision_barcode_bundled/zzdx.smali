.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

.field public zzc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzg()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzg()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzA(I)I

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    if-nez p0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zza:Ljava/nio/charset/Charset;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhg;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhg;

    const/4 p0, 0x0

    throw p0
.end method

.method public static zzn(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public static final zzo(Ljava/util/Map$Entry;)I
    .locals 1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->hashCode()I

    move-result p0

    return p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;-><init>()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzb:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;->zzb:Ljava/lang/Comparable;

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    iget-object v3, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;->zzc:Ljava/lang/Object;

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzd()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public final zzf()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/Flags;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final zzg()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzc:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzb:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;->zzc:Ljava/lang/Object;

    instance-of v5, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;->zzf(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzU()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzd:Z

    if-nez v1, :cond_4

    :goto_1
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzb:I

    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;->zzb:Ljava/lang/Comparable;

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzd()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_4
    iget-boolean v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzd:Z

    const/4 v2, 0x1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzc:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzc:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_3
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzc:Ljava/util/Map;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzf:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_4

    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzf:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_4
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzf:Ljava/util/Map;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzd:Z

    :cond_7
    iput-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzc:Z

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhg;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhg;

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzk()Z
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzb:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzn(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzd()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzn(Ljava/util/Map$Entry;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final zzm(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method
