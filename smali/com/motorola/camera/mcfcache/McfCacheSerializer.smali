.class public Lcom/motorola/camera/mcfcache/McfCacheSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "McfCacheSerializer"


# instance fields
.field private mCacheSerializerNativeContext:J

.field private mInitialized:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getConfiguration()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getTuningConfiguration()[B

    move-result-object v4

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {p1}, Lcom/motorola/camera/shared/McfUtil;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v5, p1

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/mcfcache/McfCacheSerializer;->mInitialized:Z

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/mcfcache/McfCacheSerializer;->native_init(Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;)V

    iget-boolean p0, v0, Lcom/motorola/camera/mcfcache/McfCacheSerializer;->mInitialized:Z

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to initialize McfCacheSerializer"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/motorola/camera/mcfcache/McfCacheSerializer;->TAG:Ljava/lang/String;

    const-string p1, "Required input is null "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synchronized native native_deinit()V
.end method

.method private synchronized native native_init(Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;)V
.end method

.method private synchronized native native_serialize_tflite_models(IIILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private synchronized native native_serialize_wrappers(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static serializeCache(Landroid/content/Context;)V
    .locals 14

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    const-class v1, Lcom/motorola/camera/mcfcache/McfCacheSerializerWorker;

    invoke-direct {v0, v1}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/lang/Class;)V

    new-instance v3, Landroidx/work/impl/utils/NetworkRequestCompat;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Landroidx/work/impl/utils/NetworkRequestCompat;-><init>(Landroid/net/NetworkRequest;)V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v13

    new-instance v2, Landroidx/work/Constraints;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    move-wide v11, v9

    invoke-direct/range {v2 .. v13}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;IZZZZJJLjava/util/Set;)V

    iget-object v1, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/model/WorkSpec;

    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->build()Landroidx/work/OneTimeWorkRequest;

    move-result-object v0

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object v3

    const-string p0, "getInstance(context)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance v2, Landroidx/work/impl/WorkContinuationImpl;

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    invoke-virtual {v2}, Landroidx/work/impl/WorkContinuationImpl;->enqueue()Landroidx/work/Data$Builder;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "enqueue needs at least one WorkRequest."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public finalize()V
    .locals 4

    const-string v0, "finalize() thrown : "

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/camera/mcfcache/McfCacheSerializer;->native_deinit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/motorola/camera/mcfcache/McfCacheSerializer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public serializeTFLiteModels()V
    .locals 11

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->loadAllModels(Z)V

    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_8

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v5, p0

    goto/16 :goto_2

    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    iget-object v4, v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    sget-object v5, Lcom/motorola/camera/shared/ai/model/McfMlModel;->Companion:Landroidx/collection/internal/Lock;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "feature"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    sget-object v4, Lcom/motorola/camera/shared/ai/model/McfMlModel;->UNDEFINED:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/motorola/camera/shared/ai/model/McfMlModel;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/motorola/camera/shared/ai/model/McfMlModel;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    goto :goto_1

    :cond_6
    sget-object v4, Lcom/motorola/camera/shared/ai/model/McfMlModel;->GESTURE_MV1:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    :goto_1
    invoke-virtual {v4}, Lcom/motorola/camera/shared/ai/model/McfMlModel;->getJsonValue()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v3, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelHash:Ljava/lang/String;

    iget v6, v3, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelFd:I

    iget v7, v3, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelOffset:I

    iget v8, v3, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelSize:I

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/motorola/camera/mcfcache/McfCacheSerializer;->native_serialize_tflite_models(IIILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const-string v3, ", hash: "

    if-eqz p0, :cond_7

    sget-object p0, Lcom/motorola/camera/mcfcache/McfCacheSerializer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Successfully serialized model "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    sget-object p0, Lcom/motorola/camera/mcfcache/McfCacheSerializer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Error serializing model: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-object p0, v5

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public serializeWrappers(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V
    .locals 2

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getPlatform()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v0}, Lcom/motorola/camera/shared/McfUtil;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/mcfcache/McfCacheSerializer;->native_serialize_wrappers(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    sget-object p0, Lcom/motorola/camera/mcfcache/McfCacheSerializer;->TAG:Ljava/lang/String;

    const-string p1, "Required input is null "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
