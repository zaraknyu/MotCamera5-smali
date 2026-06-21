.class public final Lcom/motorola/camera/utility/ColdStartHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CallableListener;


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/utility/ColdStartHelper;

.field public static final characteristicsLatch:Ljava/util/concurrent/CountDownLatch;

.field public static cliDisplay:Z

.field public static globalSessionUUID:J

.field public static realSize:Landroid/graphics/Point;

.field public static triggered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/utility/ColdStartHelper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/ColdStartHelper;->INSTANCE:Lcom/motorola/camera/utility/ColdStartHelper;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/utility/ColdStartHelper;->characteristicsLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static final declared-synchronized onCreate(ZZ)V
    .locals 3

    const-class v0, Lcom/motorola/camera/utility/ColdStartHelper;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/motorola/camera/utility/ColdStartHelper;->cliDisplay:Z

    sget-boolean p0, Lcom/motorola/camera/utility/ColdStartHelper;->triggered:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v1, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(IZ)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    sput-boolean p0, Lcom/motorola/camera/utility/ColdStartHelper;->triggered:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    const-string/jumbo p1, "randomUUID(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "randomUUID"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "-"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    sput-wide p0, Lcom/motorola/camera/utility/ColdStartHelper;->globalSessionUUID:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 10

    check-cast p1, Ljava/util/Map;

    invoke-static {}, Lcom/motorola/camera/Util;->isVendorOrSampleModuleInstalled()Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-boolean p0, Lcom/motorola/camera/utility/ColdStartHelper;->cliDisplay:Z

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->clearSessionSettings(ZZ)V

    sget-object p0, Lcom/motorola/camera/utility/ColdStartHelper;->realSize:Landroid/graphics/Point;

    if-eqz p0, :cond_7

    sget-boolean v1, Lcom/motorola/camera/utility/ColdStartHelper;->cliDisplay:Z

    invoke-static {p1, p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->processCharacteristics(Ljava/util/Map;Landroid/graphics/Point;Z)V

    sget-object p0, Lcom/motorola/camera/utility/ColdStartHelper;->characteristicsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->processCharacteristicsStage2()V

    sget-object p0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object p0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "CameraApp"

    const-string p1, "is_pending"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getPendingMediaUris()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    :try_start_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/motorola/camera/storage/MediaStoreClient;->queryMediaItemOrNull(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v6, v4, :cond_2

    move v6, v4

    goto :goto_2

    :catchall_0
    move-exception v6

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_3
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v5

    move v6, v0

    goto :goto_3

    :cond_2
    move v6, v0

    :goto_2
    if-eqz v5, :cond_3

    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v5

    :goto_3
    const-string v7, "FileUtility"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_4
    if-eqz v6, :cond_1

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-boolean v6, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "_display_name"

    invoke-static {v3, v6}, Lcom/motorola/camera/Util;->getMediaDataFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, "_BACKUP"

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :try_start_5
    invoke-static {v3, v5}, Lcom/motorola/camera/storage/MediaStoreClient;->updateMediaItem(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v0

    :goto_5
    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "closePendingMediaUris: updateMediaItem "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_PENDING_URIS:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PENDING_MEDIA_URIS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    :cond_6
    :goto_6
    return-void

    :cond_7
    const-string/jumbo p0, "realSize"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 0

    sget-object p0, Lcom/motorola/camera/utility/ColdStartHelper;->characteristicsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
