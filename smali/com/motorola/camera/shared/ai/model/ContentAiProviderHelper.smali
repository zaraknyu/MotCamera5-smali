.class public abstract Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static allModelsLoaded:Z

.field public static appContext:Landroid/content/Context;

.field public static final contentAiProvider$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static listener:Ljava/lang/ref/WeakReference;

.field public static final modelDataMap:Ljava/util/EnumMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    new-instance v0, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->contentAiProvider$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method public static final createGooglePlayStoreIntent()Landroid/content/Intent;
    .locals 3

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    const-string v1, "com.motorola.camera5"

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "leapp://ptn/appinfo.do?packagename=%s&versioncode=-1"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.lenovo.leos.appstore"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v1

    :cond_0
    invoke-static {v1}, Lcom/motorola/camera/shared/Util;->createGooglePlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getModelData(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;
    .locals 9

    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->contentAiProvider$delegate:Lkotlin/SynchronizedLazyImpl;

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->buildUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera5/contentai/ModelContentProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/motorola/camera5/contentai/ModelContentProvider;->query(Landroid/net/Uri;)Landroid/database/MatrixCursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "version"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor;->getInt(I)I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move v6, v3

    move-object v3, v0

    goto :goto_3

    :cond_0
    :goto_0
    const-string v0, "hash"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_1

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    :try_start_2
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move-object v6, v0

    move v7, v3

    goto :goto_5

    :goto_3
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v5, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-object v0, v4

    move v3, v6

    goto :goto_4

    :cond_2
    move v7, v3

    move-object v6, v4

    goto :goto_5

    :catch_1
    move-object v0, v4

    :catch_2
    :goto_4
    sget-object v5, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    goto :goto_2

    :goto_5
    iget-object v0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->versioning:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    invoke-virtual {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelVersion()I

    move-result p0

    invoke-interface {v0, p0, v7}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$IVersioning;->checkState(II)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    move-result-object p0

    iget-boolean v0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->isCompatible:Z

    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera5/contentai/ModelContentProvider;

    invoke-virtual {v0, v2}, Lcom/motorola/camera5/contentai/ModelContentProvider;->openAssetFile(Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_6
    move-object v5, v4

    goto :goto_7

    :catch_3
    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    goto :goto_6

    :goto_7
    new-instance v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;-><init>(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;ILjava/lang/String;)V

    return-object v3
.end method

.method public static final getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;
    .locals 14

    const-string v0, "modelFeature"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->allModelsLoaded:Z

    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getModelResourceFiles "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Models still not loaded"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContentAiProviderHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    sget-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    if-ge v4, v3, :cond_3

    aget-object v7, v0, v4

    iget-object v8, v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-ne v8, p0, :cond_2

    invoke-virtual {v6, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    if-eqz v6, :cond_1

    iget-object v5, v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-virtual {v6, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    if-eqz v3, :cond_6

    iget-object v4, v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_5

    new-instance v7, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v8

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v10

    long-to-int v10, v10

    iget v11, v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->version:I

    iget-object v12, v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->modelName:Ljava/lang/String;

    iget-object v13, v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->hash:Ljava/lang/String;

    invoke-direct/range {v7 .. v13}, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_5
    move-object v2, v5

    :goto_1
    if-nez v2, :cond_4

    :cond_6
    return-object v1

    :cond_7
    return-object p0
.end method

.method public static final getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;
    .locals 7

    sget-boolean v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->allModelsLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getModelState "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Models still not loaded"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContentAiProviderHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->NO_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    if-ge v3, v2, :cond_3

    aget-object v5, v0, v3

    iget-object v6, v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-ne v6, p0, :cond_2

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->CONTENT_UPDATE_MANDATORY:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    return-object p0

    :cond_4
    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->NO_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-virtual {v4, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->state:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    iget-boolean v2, v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->isCompatible:Z

    if-nez v2, :cond_6

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return-object v1

    :cond_6
    iget-boolean v2, v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->isUpdatable:Z

    if-eqz v2, :cond_5

    move-object p0, v1

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return-object p0
.end method

.method public static final declared-synchronized initIfNot(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    monitor-enter v0

    :try_start_0
    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->appContext:Landroid/content/Context;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->appContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

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

    throw p0
.end method

.method public static final declared-synchronized loadAllModels(Z)V
    .locals 9

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    sget-object v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    invoke-virtual {v7, v6}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelData(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v3, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_1
    if-eqz p0, :cond_2

    const-string p0, "ContentAiProviderHelper"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAllModels dur:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result v1

    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    move-result-object v2

    array-length v2, v2

    if-eq v1, v2, :cond_3

    const-string v1, "ContentAiProviderHelper"

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result v2

    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    move-result-object v3

    array-length v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAllModels: unload models, found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", was expecting "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Ljava/util/EnumMap;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :cond_3
    const/4 p0, 0x1

    sput-boolean p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->allModelsLoaded:Z

    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->listener:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->onAllModelsLoaded()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method
