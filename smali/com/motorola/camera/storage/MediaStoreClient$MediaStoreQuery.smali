.class public final Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;
.super Landroidx/media3/common/BasePlayer;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final projection:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->$r8$classId:I

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Landroidx/media3/common/BasePlayer;-><init>(Landroid/net/Uri;)V

    .line 5
    iput-object p2, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->projection:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->$r8$classId:I

    .line 1
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/common/BasePlayer;-><init>(Landroid/net/Uri;)V

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->projection:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final doOperation()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzse;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_common/zzse;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p0, Landroid/os/ParcelFileDescriptor;

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

    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzse;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_common/zzse;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    check-cast p0, Landroid/database/Cursor;

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cause is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->projection:Ljava/io/Serializable;

    check-cast p0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaStoreOpenFile(uri="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->projection:Ljava/io/Serializable;

    check-cast p0, [Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "toString(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediaStoreQuery(uri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", projection="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", selection={null}, selectionArgs="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", sortOrder={null})"

    invoke-static {v2, v1, p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
