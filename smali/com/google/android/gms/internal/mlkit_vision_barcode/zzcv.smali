.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcv;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcn;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field public transient zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :catch_0
    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzas;->zza(Ljava/util/Set;)I

    move-result p0

    return p0
.end method
