.class public final Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;
.super Landroidx/media3/common/BasePlayer;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentValues;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->$r8$classId:I

    packed-switch p3, :pswitch_data_0

    invoke-direct {p0, p1}, Landroidx/media3/common/BasePlayer;-><init>(Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->values:Landroid/content/ContentValues;

    return-void

    :pswitch_0
    const-string/jumbo p3, "uri"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "values"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/media3/common/BasePlayer;-><init>(Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->values:Landroid/content/ContentValues;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final doOperation()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzse;

    const/16 v2, 0x8

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

    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzse;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_common/zzse;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    check-cast p0, Landroid/net/Uri;

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaStoreUpdate(uri="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", values="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->values:Landroid/content/ContentValues;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", selection={null}, selectionArgs="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    const/4 v0, 0x0

    invoke-static {v1, v0, p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaStoreInsert(uri="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", values="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->values:Landroid/content/ContentValues;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
