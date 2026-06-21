.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/zzse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzse;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzse;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzse;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzse;->zza:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzse;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;

    iget-object v2, v0, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;->journalWriter:Ljava/io/BufferedWriter;

    if-nez v2, :cond_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;->trimToSize()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzse;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;

    invoke-virtual {v0}, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzse;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;

    invoke-virtual {v0}, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;->rebuildJournal()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzse;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/thumbnail/core/diskcache/DiskLruCache;->redundantOpCount:I

    :cond_1
    monitor-exit v1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    :try_start_1
    sget-object v1, Lcom/motorola/camera/storage/MediaStoreClient;->mediaProvider:Landroidx/transition/TransitionValuesMaps;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Landroidx/transition/TransitionValuesMaps;->acquireClientIfNeeded()Landroid/content/ContentProviderClient;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzse;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->values:Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_3
    invoke-virtual {v1}, Landroidx/transition/TransitionValuesMaps;->closeClient()V

    iget-object v0, v1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "All tries failed, exit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->access$translateThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :pswitch_1
    :try_start_4
    sget-object v1, Lcom/motorola/camera/storage/MediaStoreClient;->mediaProvider:Landroidx/transition/TransitionValuesMaps;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v1}, Landroidx/transition/TransitionValuesMaps;->acquireClientIfNeeded()Landroid/content/ContentProviderClient;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzse;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget-object v3, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;->projection:[Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;->queryArgs:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, p0, v4}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    :try_start_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Operation returned null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1}, Landroidx/transition/TransitionValuesMaps;->closeClient()V

    iget-object v0, v1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "All tries failed, exit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->access$translateThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :pswitch_2
    :try_start_7
    sget-object v1, Lcom/motorola/camera/storage/MediaStoreClient;->mediaProvider:Landroidx/transition/TransitionValuesMaps;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-virtual {v1}, Landroidx/transition/TransitionValuesMaps;->acquireClientIfNeeded()Landroid/content/ContentProviderClient;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzse;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;

    iget-object v0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->projection:Ljava/io/Serializable;

    move-object v4, p0

    check-cast v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/DeadObjectException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    :try_start_9
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Operation returned null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1}, Landroidx/transition/TransitionValuesMaps;->closeClient()V

    iget-object v0, v1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "All tries failed, exit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->access$translateThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :pswitch_3
    :try_start_a
    sget-object v1, Lcom/motorola/camera/storage/MediaStoreClient;->mediaProvider:Landroidx/transition/TransitionValuesMaps;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-virtual {v1}, Landroidx/transition/TransitionValuesMaps;->acquireClientIfNeeded()Landroid/content/ContentProviderClient;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzse;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->projection:Ljava/io/Serializable;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_b
    .catch Landroid/os/DeadObjectException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    :try_start_c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Operation returned null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1}, Landroidx/transition/TransitionValuesMaps;->closeClient()V

    iget-object v0, v1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "All tries failed, exit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->access$translateThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :pswitch_4
    :try_start_d
    sget-object v1, Lcom/motorola/camera/storage/MediaStoreClient;->mediaProvider:Landroidx/transition/TransitionValuesMaps;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    invoke-virtual {v1}, Landroidx/transition/TransitionValuesMaps;->acquireClientIfNeeded()Landroid/content/ContentProviderClient;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzse;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_e
    .catch Landroid/os/DeadObjectException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    :try_start_f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Operation returned null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_4
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1}, Landroidx/transition/TransitionValuesMaps;->closeClient()V

    iget-object v0, v1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "All tries failed, exit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->access$translateThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :pswitch_5
    :try_start_10
    sget-object v1, Lcom/motorola/camera/storage/MediaStoreClient;->mediaProvider:Landroidx/transition/TransitionValuesMaps;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    invoke-virtual {v1}, Landroidx/transition/TransitionValuesMaps;->acquireClientIfNeeded()Landroid/content/ContentProviderClient;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzse;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreDelete;

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v2}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catch_5
    move-exception v0

    move-object p0, v0

    :try_start_12
    invoke-virtual {v1}, Landroidx/transition/TransitionValuesMaps;->closeClient()V

    iget-object v0, v1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "All tries failed, exit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :catchall_6
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->access$translateThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :pswitch_6
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzse;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzi:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzse;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zzi:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzse;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->zzi:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
