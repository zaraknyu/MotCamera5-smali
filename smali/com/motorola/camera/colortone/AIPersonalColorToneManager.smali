.class public final Lcom/motorola/camera/colortone/AIPersonalColorToneManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final mWaitingCompletionSet:Ljava/util/HashSet;


# instance fields
.field public aiColorToneModuleInfo:Ljava/util/concurrent/CompletableFuture;

.field public isEnabled:Ljava/util/concurrent/CompletableFuture;

.field public mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

.field public final mSeqIdProcessingSet:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->isEnabled:Ljava/util/concurrent/CompletableFuture;

    iput-object v0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->aiColorToneModuleInfo:Ljava/util/concurrent/CompletableFuture;

    iput-object v0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    return-void
.end method

.method public static applyColorTone(Lcom/motorola/camera/provider/photos/PhotosProviderCaller;ILcom/motorola/camera/saving/FileName;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 12

    const-string v1, "AIPersonalColorToneManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-static {v7, p3}, Lcom/motorola/camera/Util;->writeFile(Ljava/io/File;Ljava/nio/ByteBuffer;)V

    sget-object p3, Lcom/motorola/camera/provider/photos/PhotosProvider;->sAccessMap:Ljava/util/Map;

    new-instance v0, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;

    const/4 v3, 0x0

    invoke-direct {v0, v7, v3}, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;-><init>(Ljava/io/File;Z)V

    invoke-interface {p3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Lcom/motorola/camera/saving/FileName;

    invoke-direct {v3, p2}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    const-string p2, "_PERSONAL_COLOR_TONE"

    invoke-virtual {v3, p2}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance p2, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;

    const/4 v3, 0x1

    invoke-direct {p2, v5, v3}, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;-><init>(Ljava/io/File;Z)V

    invoke-interface {p3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    new-instance p3, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1, v0, p2}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/provider/photos/PhotosProviderCaller;ILandroid/net/Uri;Landroid/net/Uri;)V

    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x2710

    invoke-virtual {v8, p2, p3, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

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

    move-object v2, v8

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :catch_1
    :try_start_6
    const-string p0, "Aborting due to timeout"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    invoke-virtual {p0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;

    const/4 v11, 0x1

    invoke-direct/range {v3 .. v11}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/CompletableFuture;JI)V

    invoke-virtual {v8, v3}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_2

    invoke-static {v5}, Lcom/motorola/camera/Util;->readFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {v4}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    invoke-static {v6}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    :cond_1
    return-object p0

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    :goto_1
    invoke-static {v4}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    invoke-static {v6}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move-object p0, v0

    move-object v8, v2

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    move-object v4, v2

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object p0, v0

    move-object v4, v2

    move-object v8, v4

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object p0, v0

    move-object v4, v2

    move-object v5, v4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object p0, v0

    move-object v4, v2

    move-object v5, v4

    move-object v8, v5

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object p0, v0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    goto :goto_4

    :catch_5
    move-exception v0

    move-object p0, v0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v8, v6

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object p0, v0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    goto :goto_4

    :catch_6
    move-exception v0

    move-object p0, v0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_2
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    const-string p0, "Failed to applyColorTone with moduleType:"

    invoke-static {p0, p1, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    :goto_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    invoke-static {v4}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    invoke-static {v6}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    :cond_6
    throw p0
.end method

.method public static declared-synchronized checkEnabled()V
    .locals 4

    const-class v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    iget-object v2, v1, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->isEnabled:Ljava/util/concurrent/CompletableFuture;

    if-nez v2, :cond_0

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->isEnabled:Ljava/util/concurrent/CompletableFuture;
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

.method public static declared-synchronized checkTrainingModuleState()V
    .locals 4

    const-class v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    iget-object v2, v1, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->aiColorToneModuleInfo:Ljava/util/concurrent/CompletableFuture;

    if-nez v2, :cond_0

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->aiColorToneModuleInfo:Ljava/util/concurrent/CompletableFuture;
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

    sget-object v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    iget-object v1, v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->close()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->sendDisableColorToneBroadcast(Z)V

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

.method public static sendDisableColorToneBroadcast(Z)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_PERSONAL_COLOR_TONE_MODULE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;->sendColorToneState(Z)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getPhotosProviderCaller()Lcom/motorola/camera/provider/photos/PhotosProviderCaller;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;->TYPE_AI_PERSONAL_COLOR_TONE:Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;-><init>(Landroid/content/Context;Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;)V

    iput-object v0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final hasProcessingCapture()Z
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeFromProcessingList(I)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->close()V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->sendDisableColorToneBroadcast(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
