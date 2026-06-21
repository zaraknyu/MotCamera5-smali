.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
.end method

.method public setOf(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->setOfProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public abstract setOfProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
.end method
