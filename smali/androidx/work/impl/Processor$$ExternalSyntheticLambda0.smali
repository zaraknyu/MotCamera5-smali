.class public final synthetic Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/io/Serializable;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/work/impl/Processor;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    iput-object p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    sget-object p0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/google/android/gms/tasks/zzs;

    if-nez p0, :cond_3

    const-class v1, Lcom/google/android/gms/tasks/zzs;

    monitor-enter v1

    :try_start_0
    sget-object p0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/google/android/gms/tasks/zzs;

    if-nez p0, :cond_2

    new-instance p0, Lcom/google/android/gms/tasks/zzs;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v4, Lcom/airbnb/lottie/L;->networkCache:Landroidx/room/ObservedTableVersions;

    if-nez v4, :cond_1

    const-class v4, Landroidx/room/ObservedTableVersions;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v5, Lcom/airbnb/lottie/L;->networkCache:Landroidx/room/ObservedTableVersions;

    if-nez v5, :cond_0

    new-instance v5, Landroidx/room/ObservedTableVersions;

    new-instance v7, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-direct {v5, v0, v7}, Landroidx/room/ObservedTableVersions;-><init>(ILjava/lang/Object;)V

    sput-object v5, Lcom/airbnb/lottie/L;->networkCache:Landroidx/room/ObservedTableVersions;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v4

    move-object v4, v5

    goto :goto_2

    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_2
    new-instance v0, Lcom/google/mlkit/common/internal/zze;

    const/16 v5, 0xb

    invoke-direct {v0, v5}, Lcom/google/mlkit/common/internal/zze;-><init>(I)V

    invoke-direct {p0, v4, v0}, Lcom/google/android/gms/tasks/zzs;-><init>(Landroidx/room/ObservedTableVersions;Lcom/google/mlkit/common/internal/zze;)V

    sput-object p0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/google/android/gms/tasks/zzs;

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_2
    :goto_3
    monitor-exit v1

    :cond_3
    move-object v1, p0

    goto :goto_5

    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_5
    const/4 p0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v6, :cond_7

    iget-object v0, v1, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/room/ObservedTableVersions;

    :try_start_3
    invoke-virtual {v0, v3}, Landroidx/room/ObservedTableVersions;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_4

    :catch_0
    move-object v0, v5

    goto :goto_7

    :cond_4
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    goto :goto_6

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".gz"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Lcom/airbnb/lottie/network/FileExtension;->GZIP:Lcom/airbnb/lottie/network/FileExtension;

    goto :goto_6

    :cond_6
    sget-object v8, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    :goto_6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    if-nez v0, :cond_8

    :cond_7
    move-object v0, v5

    goto :goto_9

    :cond_8
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/airbnb/lottie/network/FileExtension;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eq v7, v4, :cond_a

    if-eq v7, p0, :cond_9

    invoke-static {v0, v6}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    goto :goto_8

    :cond_9
    :try_start_4
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v7, v6}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    new-instance v7, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v7, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_8

    :cond_a
    new-instance v7, Ljava/util/zip/ZipInputStream;

    invoke-direct {v7, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v7, v6}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    :goto_8
    iget-object v0, v0, Lcom/airbnb/lottie/LottieResult;->value:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_7

    :goto_9
    if-eqz v0, :cond_b

    new-instance p0, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Lcom/airbnb/lottie/LottieComposition;)V

    goto/16 :goto_e

    :cond_b
    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    const-string v7, "LottieFetchResult close failed "

    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    :try_start_5
    invoke-static {v3}, Lcom/google/mlkit/common/internal/zze;->fetchSync(Ljava/lang/String;)Lcom/airbnb/lottie/network/DefaultLottieFetchResult;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v0, v8, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->connection:Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v5, 0x0

    :try_start_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    div-int/lit8 v9, v9, 0x64
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-ne v9, p0, :cond_c

    goto :goto_a

    :catch_2
    :cond_c
    move v4, v5

    :goto_a
    if-eqz v4, :cond_d

    :try_start_8
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/tasks/zzs;->fromInputStream(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieResult;->value:Lcom/airbnb/lottie/LottieComposition;

    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_b
    :try_start_9
    invoke-virtual {v8}, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_e

    :catch_3
    move-exception v0

    invoke-static {v7, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object p0, v0

    move-object v5, v8

    goto :goto_f

    :catch_4
    move-exception v0

    move-object p0, v0

    move-object v5, v8

    goto :goto_c

    :cond_d
    :try_start_a
    new-instance p0, Lcom/airbnb/lottie/LottieResult;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->error()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_f

    :catch_5
    move-exception v0

    move-object p0, v0

    :goto_c
    :try_start_b
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v5, :cond_e

    :try_start_c
    invoke-virtual {v5}, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    move-object p0, v0

    invoke-static {v7, p0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_d
    move-object p0, v1

    :goto_e
    if-eqz v6, :cond_f

    iget-object v0, p0, Lcom/airbnb/lottie/LottieResult;->value:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_f

    sget-object v1, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    iget-object v1, v1, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/LruCache;

    invoke-virtual {v1, v6, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-object p0

    :goto_f
    if-eqz v5, :cond_10

    :try_start_d
    invoke-virtual {v5}, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_10

    :catch_7
    move-exception v0

    invoke-static {v7, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_10
    throw p0

    :pswitch_1
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/Processor;

    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    check-cast v1, Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v0, v0, Landroidx/work/impl/Processor;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/core/view/MenuHostHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/core/view/MenuHostHelper;->getTagsForWorkSpecId(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
