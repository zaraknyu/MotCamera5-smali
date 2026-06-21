.class public final Lcom/motorola/camera/provider/photos/AutoEnhanceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BG_PROCESSING_LIMIT:I

.field public static final mWaitingCompletionSet:Ljava/util/HashSet;


# instance fields
.field public isSupported:Ljava/util/concurrent/CompletableFuture;

.field public mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

.field public final mSeqIdProcessingSet:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->BG_PROCESSING_LIMIT:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->isSupported:Ljava/util/concurrent/CompletableFuture;

    iput-object v0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    return-void
.end method

.method public static applyEnhance(Lcom/motorola/camera/provider/photos/PhotosProviderCaller;Lcom/motorola/camera/saving/FileName;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 11

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-static {v6, p2}, Lcom/motorola/camera/Util;->writeFile(Ljava/io/File;Ljava/nio/ByteBuffer;)V

    sget-object p2, Lcom/motorola/camera/provider/photos/PhotosProvider;->sAccessMap:Ljava/util/Map;

    new-instance v0, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v6, v2}, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;-><init>(Ljava/io/File;Z)V

    invoke-interface {p2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/saving/FileName;

    invoke-direct {v2, p1}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    const-string p1, "_ENHANCED"

    invoke-virtual {v2, p1}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    new-instance p1, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;

    const/4 v2, 0x1

    invoke-direct {p1, v4, v2}, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;-><init>(Ljava/io/File;Z)V

    invoke-interface {p2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    new-instance p2, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v0, p1}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/provider/photos/PhotosProviderCaller;Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p1, 0x2710

    invoke-virtual {v7, p1, p2, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v1, v7

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :catch_1
    :try_start_6
    const-string p0, "AutoEnhanceManager"

    const-string p1, "Aborting due to timeout"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    iget-object p0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    monitor-enter p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    sget-object p1, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    invoke-virtual {p1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    new-instance v2, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/CompletableFuture;JI)V

    invoke-virtual {v7, v2}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    invoke-static {v4}, Lcom/motorola/camera/Util;->readFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    invoke-static {v5}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    :cond_1
    return-object p0

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    :goto_1
    invoke-static {v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    invoke-static {v5}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move-object p0, v0

    move-object v7, v1

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    move-object p0, v0

    move-object v3, v1

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object p0, v0

    move-object v3, v1

    move-object v7, v3

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object p0, v0

    move-object v3, v1

    move-object v4, v3

    goto :goto_4

    :catch_4
    move-exception v0

    move-object p0, v0

    move-object v3, v1

    move-object v4, v3

    move-object v7, v4

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object p0, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    goto :goto_4

    :catch_5
    move-exception v0

    move-object p0, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    goto :goto_2

    :catchall_6
    move-exception v0

    move-object p0, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    goto :goto_4

    :catch_6
    move-exception v0

    move-object p0, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    :goto_2
    :try_start_b
    const-string p1, "AutoEnhanceManager"

    const-string p2, "Failed to Auto Enhance the image with error: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    const-string p0, "AutoEnhanceManager"

    const-string p1, "Failed to Auto Enhance the image"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :goto_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    invoke-static {v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    invoke-static {v5}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    :cond_6
    throw p0
.end method

.method public static declared-synchronized checkSupported()V
    .locals 4

    const-class v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    iget-object v2, v1, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->isSupported:Ljava/util/concurrent/CompletableFuture;

    if-nez v2, :cond_0

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->isSupported:Ljava/util/concurrent/CompletableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static close()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    iget-object v1, v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized isSupported()Z
    .locals 4

    const-class v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->checkSupported()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    iget-object v1, v1, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->isSupported:Ljava/util/concurrent/CompletableFuture;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "AutoEnhanceManager"

    const-string v3, "Exception check if isSupported, assuming false"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method


# virtual methods
.method public final removeFromProcessingList(I)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
