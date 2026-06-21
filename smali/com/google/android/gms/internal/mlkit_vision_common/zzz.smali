.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic $r8$classId:I

.field public transient zza:Ljava/util/AbstractCollection;

.field public final transient zzb:[Ljava/lang/Object;

.field public transient zzb$1:Ljava/util/AbstractCollection;

.field public transient zzc:Ljava/util/AbstractCollection;


# direct methods
.method public synthetic constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzc:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;-><init>(I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzc:Ljava/util/AbstractCollection;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzc:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;-><init>(I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzc:Ljava/util/AbstractCollection;

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zza:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzz;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zza:Ljava/util/AbstractCollection;

    :cond_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zza:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzz;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zza:Ljava/util/AbstractCollection;

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0

    :pswitch_0
    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    return-object v0

    :pswitch_0
    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    move-object p0, v0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, p0

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p2, p0

    :cond_0
    return-object p2

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object p2, p0

    :cond_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zza:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzz;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zza:Ljava/util/AbstractCollection;

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzas;->zza(Ljava/util/Set;)I

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zza:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzz;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zza:Ljava/util/AbstractCollection;

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final keySet()Ljava/util/Set;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb$1:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;-><init>(I[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzz;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb$1:Ljava/util/AbstractCollection;

    move-object v0, v1

    :cond_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb$1:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;-><init>(I[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzz;Lcom/google/android/gms/internal/mlkit_vision_common/zzy;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb$1:Ljava/util/AbstractCollection;

    move-object v0, v1

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    int-to-long v1, v0

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-wide/32 v4, 0x40000000

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const/4 v0, 0x1

    int-to-long v1, v0

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-wide/32 v4, 0x40000000

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzw;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v0, :cond_2

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/16 p0, 0x7d

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final values()Ljava/util/Collection;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzc:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;-><init>(I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzc:Ljava/util/AbstractCollection;

    :cond_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzc:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;-><init>(I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzc:Ljava/util/AbstractCollection;

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
