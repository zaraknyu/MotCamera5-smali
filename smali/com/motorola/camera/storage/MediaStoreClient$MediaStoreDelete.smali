.class public final Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreDelete;
.super Landroidx/media3/common/BasePlayer;
.source "SourceFile"


# virtual methods
.method public final doOperation()Ljava/lang/Object;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzse;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_common/zzse;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cause is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaStoreDelete(uri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", selection={null}, selectionArgs="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
