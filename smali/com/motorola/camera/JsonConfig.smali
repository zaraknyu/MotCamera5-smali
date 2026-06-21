.class public abstract Lcom/motorola/camera/JsonConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_CORE_RAW_STREAM_MODES:[Ljava/lang/String;

.field public static mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

.field public static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "MODE_SUPER_NIGHT"

    const-string v1, "MODE_SUPER_PORTRAIT"

    const-string v2, "MODE_PHOTO"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/JsonConfig;->DEFAULT_CORE_RAW_STREAM_MODES:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/JsonConfig;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static get3ATimeoutFrames(Lorg/json/JSONObject;)I
    .locals 1

    const-string v0, "3a-timeout-frames"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAISDScenes(Lorg/json/JSONObject;)Ljava/util/HashSet;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "MODE_PHOTO"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v1, "aisd-scenes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse aisd scenes array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getActionShotZoomSegments(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "action-shot-zoom-segments"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getActivePhotoShotInterval(Lorg/json/JSONObject;)J
    .locals 2

    const-string v0, "active-photo-config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "shot-interval"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getAiCameraConfigsMap(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ai-camera-configs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Z

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v6

    aput-boolean v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static getAnalogGainThreshold(Lorg/json/JSONObject;)F
    .locals 2

    const-string/jumbo v0, "remosaic-config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "analog-gain-threshold"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_0
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse analog gain threshold array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse analog gain threshold"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getArcZoomBarSegments(Lorg/json/JSONObject;)[F
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    :try_start_0
    const-string v1, "arc-zoom-bar-segments"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [F

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_2

    :catch_1
    const-string p0, "JsonConfig"

    const-string v1, "Warning: failed to get arc zoom bar segments, use default value"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static getAssetConfig(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-object p0, v0

    goto :goto_0

    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p1

    :goto_2
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_0

    :try_start_2
    new-instance p1, Lorg/json/JSONTokener;

    invoke-direct {p1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object p0, p1

    :catch_2
    :cond_0
    return-object p0
.end method

.method public static getAutoMacroFallbackZoomRange(Lorg/json/JSONObject;)[F
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    const-string v2, "auto-macro-configs"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string/jumbo v2, "w-uw-fallback-zoom-range"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    double-to-float v2, v4

    aput v2, v0, v1

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v1

    double-to-float p0, v1

    aput p0, v0, v3

    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse tele macro zoom range array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getBarcodeDetectionBackoff(Lorg/json/JSONObject;)Z
    .locals 2

    const-string v0, "barcode-detection"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "backoff"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "No config found for barcode-detection"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBarcodeDetectionEnabled(Lorg/json/JSONObject;)[Z
    .locals 3

    const-string v0, "barcode-detection"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "enabled"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "No valid config found for enabled on barcode-detection"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "No config found for barcode-detection"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBarcodeTimeBetweenScans(Lorg/json/JSONObject;)[I
    .locals 3

    const-string v0, "barcode-detection"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string/jumbo v0, "time-between-scans"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "No valid config found for time-between-scans on barcode-detection"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "No config found for barcode-detection"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBeautyEnabledSnapshotMinInterval(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 7

    const-string v0, "beauty-enabled-snapshot-min-interval"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getSnapshotMinInterval(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v5, v6, :cond_1

    :try_start_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v4, v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse beauty-enabled-snapshot-min-interval, expected integer for interval"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse beauty-enabled-snapshot-min-interval, is empty"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse beauty-enabled-snapshot-min-interval"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_4
    return-object v1
.end method

.method public static getBufferCnt(ILcom/motorola/camera/settings/CameraType;I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p2}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p2

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNormalConfigInputBufferCnt:[I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNormalConfigOutputBufferCnt:[I

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZslDepthDualConfigInputBufferCnt:[I

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZslDepthDualConfigOutputBufferCnt:[I

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_5

    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthDualConfigInputBufferCnt:[I

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthDualConfigOutputBufferCnt:[I

    goto :goto_1

    :cond_6
    if-eqz p0, :cond_7

    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigInputBufferCnt:[I

    goto :goto_1

    :cond_7
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigOutputBufferCnt:[I

    :goto_1
    invoke-static {p1}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result p1

    aget p0, p0, p1

    return p0
.end method

.method public static getBufferCounts(Lorg/json/JSONObject;II)[I
    .locals 3

    invoke-static {p1}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string v0, "buffer-config"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "zsl-depth-dual-buffer-config"

    goto :goto_0

    :cond_1
    const-string v0, "depth-dual-buffer-config"

    goto :goto_0

    :cond_2
    const-string v0, "dual-buffer-config"

    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, " path:"

    if-eqz p0, :cond_6

    if-ne p2, v1, :cond_3

    const-string v1, "inputBufferCnt"

    goto :goto_1

    :cond_3
    const-string v1, "outputBufferCnt"

    :goto_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [I

    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_4

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    aput v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-object p1

    :cond_5
    new-instance p0, Landroid/util/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: parse buffer count array for mode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->stringValueOf$5(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->stringValueOf$6(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Landroid/util/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: parse buffer count for mode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->stringValueOf$5(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->stringValueOf$6(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCameraMappings(Lorg/json/JSONObject;)[Landroidx/compose/runtime/Latch;
    .locals 14

    const-string v0, "camera-mapping"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const-string v0, "Error: parse Camera Mapping array"

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Landroidx/compose/runtime/Latch;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "sensor-name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move v7, v2

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    const-string/jumbo v7, "sensor-name-override"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ne v9, v5, :cond_1

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    move v9, v2

    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_2

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    move-object v5, v8

    :cond_2
    const-string/jumbo v7, "physical-role"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-lez v9, :cond_3

    new-instance v8, Ljava/util/EnumMap;

    const-class v9, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    invoke-direct {v8, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->values()[Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    move-result-object v9

    array-length v10, v9

    move v11, v2

    :goto_3
    if-ge v11, v10, :cond_3

    aget-object v12, v9, v11

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    const-string/jumbo v7, "virtual"

    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    new-instance v7, Landroidx/compose/runtime/Latch;

    invoke-direct {v7, v6, v5, v8, v4}, Landroidx/compose/runtime/Latch;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/util/EnumMap;Z)V

    aput-object v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance p0, Landroid/util/MalformedJsonException;

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object v1

    :cond_6
    new-instance p0, Landroid/util/MalformedJsonException;

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCameraTypes(Lorg/json/JSONObject;)[Lcom/motorola/camera/settings/CameraType;
    .locals 3

    const-string v0, "camera-type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/motorola/camera/settings/CameraType;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Camera Type array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCctFlashColorTableString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "software_flash"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "cct-color"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCoreRawStreamModes(Lorg/json/JSONObject;)Ljava/util/HashSet;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "core-raw-stream-modes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object p0, Lcom/motorola/camera/JsonConfig;->DEFAULT_CORE_RAW_STREAM_MODES:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Core Raw Stream Modes Config array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCustomizedHalZSLModes(Lorg/json/JSONObject;)Ljava/util/HashSet;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "customized-hal-zsl-on-modes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Customized Hal Zsl"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDefaultBandingMode(Lorg/json/JSONObject;)I
    .locals 3

    const-string v0, "motion-capture"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "banding-mode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    if-lt p0, v2, :cond_1

    const/4 v0, 0x3

    if-gt p0, v0, :cond_1

    return p0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: banding mode error"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return v2
.end method

.method public static getDepthSysteMCalibrationDevices(Lorg/json/JSONObject;)[Lcom/motorola/camera/settings/CameraType;
    .locals 4

    const-string v0, "depth-system-calibration"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string v0, "camera-type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    new-array p0, p0, [Lcom/motorola/camera/settings/CameraType;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    aput-object v2, p0, v1

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH:Lcom/motorola/camera/settings/CameraType;

    aput-object v2, p0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    :cond_5
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse depth calibration devices failed"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDisableAppZSLScenes(Lorg/json/JSONObject;)Ljava/util/HashSet;
    .locals 3

    const-string v0, "disable-app-zsl-on-scenes"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Disable App Zsl On Scenes Config array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDisableHalZSLModes(Lorg/json/JSONObject;)Ljava/util/HashSet;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "disable-hal-zsl-on-modes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Disable Hal Zsl On Modes Config array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDisplayCutoutConfigs(Lorg/json/JSONObject;)[F
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "display-cutout-configs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [F

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    const-string p0, "JsonConfig"

    const-string v1, "Warning: failed to get display cutout alphas, use default value"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    nop

    :array_0
    .array-data 4
        0x42dc0000    # 110.0f
        0x429a0000    # 77.0f
        0x3ecccccd    # 0.4f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public static getDisplayCutoutsCoordinates(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 2

    const-string v0, "display-cutouts-coordinates"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDualCalibrationDataVendor(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "dual-calibration-data-vendor"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "arcsoft"

    return-object p0
.end method

.method public static getEarlyReprocScenes(Lorg/json/JSONObject;)Ljava/util/HashSet;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "early-reproc-scenes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Early Reproc Scenes Config array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getEngineMfnrEstimate(Lorg/json/JSONObject;)J
    .locals 2

    const-string v0, "engine-mfnr-estimate"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getExitPerfHintDuration(Lorg/json/JSONObject;)I
    .locals 2

    const-string v0, "exit-perf-hint-duration"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2710

    return p0
.end method

.method public static getExtraFreeMemSizeVals(Lorg/json/JSONObject;)[I
    .locals 3

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "extra-free-mem-size-mb"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse extra-free-mem-size-mb array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getExtraRawStreamModes(Lorg/json/JSONObject;)Ljava/util/HashSet;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "extra-raw-stream-modes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Extra Raw Stream Modes Config array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFaceBeautyUI(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 14

    const-string/jumbo v0, "slim-face"

    const-string v1, "big-eyes"

    const-string/jumbo v2, "toning"

    const-string/jumbo v3, "smoothing"

    const-string v4, "fast-adjustment"

    const-string v5, "JsonConfig"

    const-string v6, "max"

    const-string v7, "min"

    const-string/jumbo v8, "value"

    const/4 v9, 0x0

    :try_start_0
    const-string v10, "face-beauty-ui"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "No config found for face-beauty-ui"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    new-instance v12, Ljava/util/HashMap;

    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v12, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v11, Ljava/util/HashMap;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v11

    invoke-direct {v4, v11}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    const-string p0, "getFaceBeautyUI fail"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9
.end method

.method public static getFallBackISOThreshold(Lorg/json/JSONObject;)[F
    .locals 4

    const-string v0, "camera-type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [F

    const-string v1, "fall-back-config"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "fall-back-iso-threshold"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse fall-back-iso-threshold"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFallBackModes(Lorg/json/JSONObject;)Ljava/util/HashSet;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "fall-back-config"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "fall-back-modes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse fall back Extra Modes Config array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFallBackScenes(Lorg/json/JSONObject;)Ljava/util/HashSet;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "fall-back-config"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "fall-back-scenes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse fall back scenes array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFallbackMaxDisplayBrightness(Lorg/json/JSONObject;)F
    .locals 2

    const-string v0, "fall-back-config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "fall-back-max-display-brightness"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const p0, 0x3f59999a    # 0.85f

    return p0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static getFallbackModePeriod(Lorg/json/JSONObject;)I
    .locals 2

    const-string v0, "fall-back-config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "fall-back-mode-period"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getFastCaptureUITimeoutMap(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "fast-capture-ui-timeout-detection"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo v1, "scene-modes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "timeout-configs"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static getFastFrameExcludeLux(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 3

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "fast-frame-exclude-lux"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse fast frame exclude lux array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFastFrameScenes(Lorg/json/JSONObject;)Ljava/util/HashSet;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "fast-frame-scenes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse fall back scenes array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFlashAlpha(Lorg/json/JSONObject;)F
    .locals 2

    const-string/jumbo v0, "software_flash"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_0

    const-string p0, "JsonConfig"

    const-string v1, "getFlashAlpha: can\'t find software flash tag"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "alpha"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getFlashAwbSpeed(Lorg/json/JSONObject;)Ljava/lang/Float;
    .locals 1

    const-string/jumbo v0, "software_flash"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "awb-convspeed"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static getFlashColor(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "software_flash"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "#FFFFFFFF"

    if-nez p0, :cond_0

    const-string p0, "JsonConfig"

    const-string v1, "getFlashColor: can\'t find software flash tag"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v1, "color"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static getFlashLuxRange(Lorg/json/JSONObject;)[F
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string/jumbo v1, "software_flash"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "JsonConfig"

    const-string v1, "getFlashLuxRange: can\'t find software flash tag"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "lux_range"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-gtz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_3

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
    .end array-data
.end method

.method public static getFlashTorchEnable(Lorg/json/JSONObject;)Z
    .locals 3

    const-string/jumbo v0, "software_flash"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "JsonConfig"

    const-string v1, "getFlashTorchEnable: can\'t find software flash tag"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "flash_torch_enable"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public static getFocusTimeoutDurationFlash(Lorg/json/JSONObject;)I
    .locals 1

    const-string v0, "focus-timeout-dur-flash"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getFullFrameConfig(Lorg/json/JSONObject;)[I
    .locals 3

    const-string v0, "fullframe-config"

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string/jumbo v0, "skipPattern"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse full frame config skip pattern"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse full frame config"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getGainOnlyQcfaDecision(Lorg/json/JSONObject;)Z
    .locals 1

    const-string/jumbo v0, "remosaic-config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "gain-only-qcfa-decision"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse analog gain threshold"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getGestureRemoveDelay(Lorg/json/JSONObject;)Z
    .locals 2

    const-string v0, "gesture-remove-delay"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getGrallocUsageFlags(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 3

    const-string v0, "gralloc-usage-flags"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse gralloc usage flags"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getGyroDelay(Lorg/json/JSONObject;)I
    .locals 2

    const-string/jumbo v0, "sensors-delay"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "gyro-delay"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1

    return p0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: gyro delay must be positive"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getHighResSnapShotMinInterval(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 7

    const-string v0, "high-res-snapshot-min-interval"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getSnapshotMinInterval(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v5, v6, :cond_1

    :try_start_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v4, v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse high-res-snapshot-min-interval, expected integer for interval"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse high-res-snapshot-min-interval, is empty"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse high-res-snapshot-min-interval"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_4
    return-object v1
.end method

.method public static getInSensorCropConfigByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/JsonConfig$InSensorCropData;
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropConfigOverrides:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropDefaultConfig:Lcom/motorola/camera/JsonConfig$InSensorCropData;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropDefaultConfig:Lcom/motorola/camera/JsonConfig$InSensorCropData;

    return-object p0
.end method

.method public static getInSensorCropConfigDefaults(Lorg/json/JSONObject;)Lcom/motorola/camera/JsonConfig$InSensorCropData;
    .locals 2

    const-string v0, "in-sensor-crop-logic"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;

    invoke-direct {p0}, Lcom/motorola/camera/JsonConfig$InSensorCropData;-><init>()V

    return-object p0

    :cond_0
    new-instance v1, Lcom/motorola/camera/JsonConfig$InSensorCropData;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/motorola/camera/JsonConfig$InSensorCropData;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public static getInSensorCropConfigOverrides(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "in-sensor-crop-logic"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "in-sensor-crop-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "-overrides"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xa

    const/16 v4, 0xf

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/JsonConfig$InSensorCropData;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/motorola/camera/JsonConfig$InSensorCropData;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not parse override \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", skipping"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JsonConfig"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getInSensorCropEnableInSession(Lorg/json/JSONObject;)Z
    .locals 2

    const-string v0, "in-sensor-crop-logic"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "in-sensor-crop-enable-in-session"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getInSensorCropVendorTagsVersion(Lorg/json/JSONObject;)I
    .locals 2

    const-string v0, "in-sensor-crop-logic"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v0, "vendor-tags-version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getJobCount(Lorg/json/JSONObject;I)[I
    .locals 2

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "max-concurrent-jobs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-static {p1}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "dual-depth-cam-mode"

    goto :goto_0

    :cond_1
    const-string p1, "dual-cam-mode"

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "single-cam-mode-slip"

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "single-special-override"

    goto :goto_0

    :cond_4
    const-string/jumbo p1, "single-normal-override"

    goto :goto_0

    :cond_5
    const-string/jumbo p1, "single-cam-mode"

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [I

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-object p1

    :cond_7
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Error: wrong job mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string p1, "Error: parse max-concurrent-jobs"

    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-ne v2, p0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getJsonIndex: cameraType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " falling back to 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "JsonConfig"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getLowMemKillSizeVals(Lorg/json/JSONObject;)[I
    .locals 3

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "lowmem-kill-size-mb"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse lowmem-kill-size-mb array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getManualExposureOverrides(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "manual-exposure-override"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/motorola/camera/JsonConfig$ManualExposureOverride;

    invoke-direct {v3, v4}, Lcom/motorola/camera/JsonConfig$ManualExposureOverride;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static getMaxConcurrentJobsByMode(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "max-concurrent-jobs-by-mode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse max-concurrent-jobs-by-mode"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static getMaxConcurrentJobsByScene(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "max-concurrent-jobs-by-scene"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v5, v6, :cond_0

    :try_start_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v4, v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse max-concurrent-jobs-by-scene, expected integer for job count"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse max-concurrent-jobs-by-scene, job count array is empty"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse max-concurrent-jobs-by-scene"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    return-object v0
.end method

.method public static getMaxConcurrentJobsBySceneAdvanced(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "max-concurrent-jobs-by-scene-advanced"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_0

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v11, Lcom/motorola/camera/JsonConfig$ConcurrentJobsBySceneAdvanced;

    invoke-direct {v11, v10}, Lcom/motorola/camera/JsonConfig$ConcurrentJobsBySceneAdvanced;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {v4, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse max-concurrent-jobs not a valid array"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse max-concurrent-jobs-by-scene-advanced, job count array is empty"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    return-object v0
.end method

.method public static getMaxConcurrentJobsBySceneWithBeauty(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 7

    const-string v0, "max-concurrent-jobs-by-scene-with-beauty"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxConcurrentJobsByScene(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v5, v6, :cond_1

    :try_start_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v4, v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse max-concurrent-jobs-by-scene-with-beauty, expected integer for job count"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse max-concurrent-jobs-by-scene-with-beauty, job count array is empty"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse max-concurrent-jobs-by-scene-with-beauty"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_4
    return-object v1
.end method

.method public static getMaxFallBackBeautyCount(Lorg/json/JSONObject;)I
    .locals 3

    const-string v0, "fall-back-config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "max-fall-back-beauty-count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxFallBackCount(Lorg/json/JSONObject;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getMaxFallBackCount(Lcom/motorola/camera/mcf/Mcf$SceneMode;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxFallBackHighResCount:I

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxFallBackBeautyCount:I

    return p0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxFallBackFilterCount:I

    return p0

    .line 7
    :cond_2
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxFallBackCountByScene:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 10
    :cond_3
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxFallBackCount:I

    return p0
.end method

.method public static getMaxFallBackCount(Lorg/json/JSONObject;)I
    .locals 2

    .line 11
    const-string v0, "fall-back-config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 13
    const-string v0, "max-fall-back-count"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    .line 14
    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getMaxFallBackCountByScene(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "fall-back-config"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "max-fall-back-count-by-scene"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getMaxFallBackFilterCount(Lorg/json/JSONObject;)I
    .locals 3

    const-string v0, "fall-back-config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "max-fall-back-filter-count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxFallBackCount(Lorg/json/JSONObject;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getMaxFallBackHighResCount(Lorg/json/JSONObject;)I
    .locals 3

    const-string v0, "fall-back-config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "max-fall-back-high-res-count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxFallBackCount(Lorg/json/JSONObject;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getMaxJobsCnt(I)I
    .locals 3

    .line 4
    invoke-static {p0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    return v0

    .line 5
    :cond_0
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualDepthConfigMaxJobCnt:[I

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxJobsCnt([I)I

    move-result p0

    return p0

    .line 6
    :cond_1
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigMaxJobCnt:[I

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxJobsCnt([I)I

    move-result p0

    return p0

    .line 7
    :cond_2
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_3

    div-float/2addr v1, p0

    .line 10
    :cond_3
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomOverride:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 12
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomOverride:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/JsonConfig$ZoomOverride;

    .line 14
    iget v2, v0, Lcom/motorola/camera/JsonConfig$ZoomOverride;->mMin:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_4

    iget v2, v0, Lcom/motorola/camera/JsonConfig$ZoomOverride;->mMax:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_4

    .line 15
    iget p0, v0, Lcom/motorola/camera/JsonConfig$ZoomOverride;->mJob:I

    return p0

    .line 16
    :cond_5
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleSlipConfigMaxJobCnt:[I

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxJobsCnt([I)I

    move-result p0

    return p0

    .line 17
    :cond_6
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigSpecialOverrideJobCnt:[I

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxJobsCnt([I)I

    move-result p0

    return p0

    .line 18
    :cond_7
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigNormalOverrideJobCnt:[I

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxJobsCnt([I)I

    move-result p0

    return p0

    .line 19
    :cond_8
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigMaxJobCnt:[I

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxJobsCnt([I)I

    move-result p0

    return p0
.end method

.method public static getMaxJobsCnt([I)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v0

    if-eqz p0, :cond_0

    if-ltz v0, :cond_0

    .line 2
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 3
    aget p0, p0, v0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public static getMaxMultishotRates(Lorg/json/JSONObject;)[F
    .locals 4

    const-string v0, "max-multishot-rate"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse max multishot rate array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMaxMultishotRatesLvl1(Lorg/json/JSONObject;)[F
    .locals 4

    :try_start_0
    const-string v0, "max-multishot-rate-lvl-1"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "max-multishot-rate"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse max multishot rate lvl1 array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMaxSlipMap(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "max-concurrent-slip"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse max-concurrent-slip"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static getMcfSlowCaptureModes(Lorg/json/JSONObject;)Ljava/util/HashSet;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "mcf-slow-capture-modes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Disable Zsl On Scenes Config array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMeiSheAnimatedStickerConifgs(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "meishe-effects"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "animatedsticker"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static getMeiSheVideoFxConifgs(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "meishe-effects"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v1, "videofx"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static getMotoFlashTuningEnable(Lorg/json/JSONObject;)[Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "motoflash-tuning-enable"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v0, v1, [Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse MotoFlash Tuning Enable array"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static getNonBasicModesMaxZoomRatio(Lorg/json/JSONObject;)F
    .locals 3

    const-string v0, "non-basic-modes-max-zoom-ratio"

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static getNonSingleSessionRemosaicEstimate(Lorg/json/JSONObject;)J
    .locals 3

    const-string/jumbo v0, "remosaic-config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "non-single-session-remosaic-estimate"

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOfflineReprocEnabled(Lorg/json/JSONObject;)[Z
    .locals 3

    const-string v0, "offline-reproc-enabled"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse offline reproc enabled"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPanoDistortions(Lorg/json/JSONObject;)[D
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v2, v0, [D

    const-string/jumbo v3, "panorama"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v3, "distortions"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    if-lt v3, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2

    :catch_0
    const-string p0, "JsonConfig"

    const-string v0, "Warning: failed to get panorama distortion value, use default:0.0"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_3
    :goto_2
    return-object v1

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static getPanoExpAdjustment(Lorg/json/JSONObject;)F
    .locals 3

    const-string/jumbo v0, "panorama"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v0, "pano_exp_adjustment"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "JsonConfig"

    const-string v0, "Failed to get panorama exposure adjustment, use default: 0.0f"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2
.end method

.method public static getPanoMaxGain(Lorg/json/JSONObject;)F
    .locals 3

    const-string/jumbo v0, "panorama"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/high16 v2, 0x43800000    # 256.0f

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v0, "pano_max_gain"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "JsonConfig"

    const-string v0, "Failed to get panorama max gain, use default: 256.0f"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2
.end method

.method public static getPanoNoiseReductionLevel(Lorg/json/JSONObject;)I
    .locals 3

    const-string/jumbo v0, "panorama"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v0, "pano_noise_reduction_level"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "JsonConfig"

    const-string v0, "Failed to get panorama noise reduction level, use default: 0"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2
.end method

.method public static getPanoRotationRatio(Lorg/json/JSONObject;)D
    .locals 4

    const-string/jumbo v0, "panorama"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-wide v2, 0x3feeb851eb851eb8L    # 0.96

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v0, "rotation_ratio"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-string p0, "JsonConfig"

    const-string v0, "Failed to get panorama rotation ratio value, use default: 0.96"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-wide v2
.end method

.method public static getPhysicalCameraCount(Lorg/json/JSONObject;)I
    .locals 3

    const-string/jumbo v0, "physical-camera-count"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Error: physical camera count "

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Landroid/util/MalformedJsonException;

    invoke-direct {p0, v2}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    invoke-direct {p0, v2}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPortraitLens(Lorg/json/JSONObject;)Z
    .locals 1

    const-string/jumbo v0, "portrait-lens"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getPortraitLensBlurLevel(Lorg/json/JSONObject;)[I
    .locals 4

    const-string/jumbo v0, "portrait-lens"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [I

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    const-string p0, "blur-level"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    const-string p0, "JsonConfig"

    const-string v0, "Failed to get blur level, use default value"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "No valid config found for blur-level on portrait-lens"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPortraitLensCameraType(Lorg/json/JSONObject;)[Lcom/motorola/camera/settings/CameraType;
    .locals 4

    const-string/jumbo v0, "portrait-lens"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Lcom/motorola/camera/settings/CameraType;

    return-object p0

    :cond_0
    const-string p0, "camera-type"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/motorola/camera/settings/CameraType;

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    :goto_1
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "No valid config found for camera-type on portrait-lens"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPortraitLensOISBokehCamId(Lorg/json/JSONObject;)[I
    .locals 4

    const-string/jumbo v0, "portrait-lens"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getPortraitLensCameraType(Lorg/json/JSONObject;)[Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    array-length v3, p0

    if-nez v3, :cond_1

    :goto_0
    return-object v2

    :cond_1
    array-length p0, p0

    new-array v2, p0, [I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    const-string v3, "ois-bokeh-cam-id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne p0, v3, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    new-array p0, p0, [I

    :goto_1
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    aput v3, p0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p0

    :catch_0
    const-string p0, "JsonConfig"

    const-string v0, "Failed to get camId, use default value"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Invalid config length found for ois-bokeh-cam-id on portrait-lens"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    return-object v2
.end method

.method public static getPortraitLensZoomValue(Lorg/json/JSONObject;)[F
    .locals 6

    const-string/jumbo v0, "portrait-lens"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [F

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    const-string/jumbo p0, "zoom-value"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [F

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    const-string p0, "JsonConfig"

    const-string v0, "Failed to get zoom ratio, use default value"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "No valid config found for zoom-value on portrait-lens"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPreviewFps(ILcom/motorola/camera/settings/CameraType;)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateMotionLimit:[I

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateDepthLimit:[I

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitLvl2:[I

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitLvl1:[I

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitDefault:[I

    .line 7
    :goto_0
    invoke-static {p1}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result p1

    .line 8
    array-length v1, v0

    if-lt p1, v1, :cond_5

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "For the limit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->stringValueOf$7(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", size is "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", but index is "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JsonConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 10
    :cond_5
    aget p0, v0, p1

    return p0
.end method

.method public static getPreviewFps(Lorg/json/JSONObject;IZ)[I
    .locals 2

    .line 11
    invoke-static {p1}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 12
    const-string/jumbo p1, "preview-rate-motion"

    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->stringValueOf$7(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid previewLimiter:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_1
    const-string/jumbo p1, "preview-rate-depth"

    goto :goto_0

    .line 15
    :cond_2
    const-string/jumbo p1, "preview-rate-limit-lvl-2"

    goto :goto_0

    .line 16
    :cond_3
    const-string/jumbo p1, "preview-rate-limit-lvl-1"

    goto :goto_0

    .line 17
    :cond_4
    const-string/jumbo p1, "preview-rate-limit-default"

    .line 18
    :goto_0
    const-string v0, "feature-limiter-config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 19
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 20
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_5

    goto :goto_2

    .line 21
    :cond_5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [I

    const/4 p2, 0x0

    .line 22
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_6

    .line 23
    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    aput v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    return-object p1

    :cond_7
    :goto_2
    if-nez p2, :cond_8

    .line 24
    const-string p0, "No preview frame limit settings found for: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "JsonConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 25
    :cond_8
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string p2, "Error: parse failure for "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_9
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string p1, "Error: unable to locate feature-limiter-config"

    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getQcfaFastCaptureUITimeout(Lorg/json/JSONObject;)J
    .locals 2

    const-string/jumbo v0, "remosaic-config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v0, "qcfa-fast-capture-ui-timeout"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getQcfaHighResMaxConcurrentJobsByScene(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 7

    const-string/jumbo v0, "qcfa-high-res-max-concurrent-jobs-by-scene"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxConcurrentJobsByScene(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v5, v6, :cond_1

    :try_start_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v4, v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse qcfa-high-res-max-concurrent-jobs-by-scene, expected integer for job count"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse qcfa-high-res-max-concurrent-jobs-by-scene, job count array is empty"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse qcfa-high-res-max-concurrent-jobs-by-scene"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_4
    return-object v1
.end method

.method public static getQcfaHighResSnapShotMinInterval(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 7

    const-string/jumbo v0, "qcfa-high-res-snapshot-min-interval"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getSnapshotMinInterval(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v5, v6, :cond_1

    :try_start_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v4, v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse qcfa-high-res-snapshot-min-interval, expected integer for interval"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse qcfa-high-res-snapshot-min-interval, is empty"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse qcfa-high-res-snapshot-min-interval"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_4
    return-object v1
.end method

.method public static getQuickCaptureVibrationConfigs(Lorg/json/JSONObject;)[I
    .locals 3

    const/16 v0, 0xc8

    const/16 v1, 0x190

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string/jumbo v1, "qc-vibration-configs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getSceneDetectionPlatform(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "scene-detection"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v0, "platform"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "none"

    return-object p0
.end method

.method public static getSetRepeatingSendErrorDelay(Lorg/json/JSONObject;)I
    .locals 1

    const-string/jumbo v0, "set-repeating-send-error-delay"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSingleSessionRemosaicEstimate(Lorg/json/JSONObject;)[J
    .locals 4

    const-string/jumbo v0, "remosaic-config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string/jumbo v0, "single-session-remosaic-estimate"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse single session remosaic estimate array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse single session remosaic estimate"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSkinToneDetectionEnabled(Lorg/json/JSONObject;)Z
    .locals 2

    const-string/jumbo v0, "skin-tone-detection"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "enabled"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getSkinToneDetectionMapping(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "skin-tone-detection"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "str"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v2}, Lcom/motorola/camera/SkinToneDetection$SkinTone;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/SkinToneDetection$SkinTone;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v2, Lcom/motorola/camera/SkinToneDetection$SkinTone;->NONE:Lcom/motorola/camera/SkinToneDetection$SkinTone;

    :goto_1
    sget-object v3, Lcom/motorola/camera/SkinToneDetection$SkinTone;->NONE:Lcom/motorola/camera/SkinToneDetection$SkinTone;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getSlideScanConfigs(Lorg/json/JSONObject;)[F
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x42960000    # 75.0f

    aput v2, v0, v1

    const-string/jumbo v2, "slide-scan-configs"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [F

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    const-string p0, "JsonConfig"

    const-string v1, "Warning: failed to get slide scan config, use default value"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getSnapshotMinInterval(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResScene()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mHighResSnapShotMinInterval:Ljava/util/Map;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSnapShotMinInterval:Ljava/util/Map;

    .line 4
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResScene()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mQcfaHighResSnapShotMinInterval:Ljava/util/Map;

    .line 6
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResScene()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBeautyEnabledSnapshotMinInterval:Ljava/util/Map;

    .line 9
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 12
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    .line 13
    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    goto :goto_1

    :cond_3
    div-float/2addr v2, v1

    .line 14
    invoke-static {v2}, Lcom/motorola/camera/utility/ZoomHelper;->isWithinPhysicalBackMainZoomRatioRange(F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_1

    .line 16
    :cond_4
    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    goto :goto_1

    .line 17
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 18
    :goto_1
    invoke-static {v1}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v1

    .line 19
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 20
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    aget p0, p0, v1

    return p0

    .line 21
    :cond_6
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    aget p0, p0, v1

    return p0
.end method

.method public static getSnapshotMinInterval(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 7

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v1, "snapshot-min-interval"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 25
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 28
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 30
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 31
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v5, v6, :cond_0

    .line 32
    :try_start_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v4, v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 33
    :catch_0
    :try_start_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse snapshot-min-interval, expected integer for interval"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_0
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 35
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse snapshot-min-interval, is empty"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse snapshot-min-interval"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    return-object v0
.end method

.method public static getStarTrailsLib(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "star-trails-lib"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSuperRemosaicSettings(Lorg/json/JSONObject;)[F
    .locals 6

    const/4 v0, 0x2

    :try_start_0
    const-string/jumbo v1, "super-remosaic"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    new-array p0, v0, [F

    fill-array-data p0, :array_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float p0, v4

    new-array v4, v0, [F

    aput v3, v4, v1

    aput p0, v4, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    const-string p0, "JsonConfig"

    const-string v1, "bad read of \'super-remosaic\' in config_device."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v0, [F

    fill-array-data p0, :array_1

    return-object p0

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public static getSuperSlowMotionLib(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "super-slow-motion-lib"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSuperSlowMotionLowLightThreshold(Lorg/json/JSONObject;)I
    .locals 2

    const-string/jumbo v0, "super-slow-motion-low-light-threshold"

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getTeleMacroMinFocusDistance(Lorg/json/JSONObject;)I
    .locals 3

    const-string v0, "auto-macro-configs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0xf

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "tele-macro-min-focus-distance"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v2
.end method

.method public static getTeleMacroZoomRange(Lorg/json/JSONObject;)[F
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    const-string v2, "auto-macro-configs"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string/jumbo v2, "tele-macro-zoom-range"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    double-to-float v2, v4

    aput v2, v0, v1

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v1

    double-to-float p0, v1

    aput p0, v0, v3

    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse tele macro zoom range array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getThumbnailJpegQuality(Lorg/json/JSONObject;)I
    .locals 2

    const-string/jumbo v0, "thumbnail-jpeg-quality"

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getToHighResRgThreshold(Lorg/json/JSONObject;)F
    .locals 2

    const-string/jumbo v0, "remosaic-config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "to-high-res-rg-threshold"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_1
    :goto_0
    const/high16 p0, 0x40000000    # 2.0f

    return p0
.end method

.method public static getToNormalResRgThreshold(Lorg/json/JSONObject;)F
    .locals 2

    const-string/jumbo v0, "remosaic-config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "to-normal-res-rg-threshold"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_1
    :goto_0
    const/high16 p0, 0x40c00000    # 6.0f

    return p0
.end method

.method public static getTorchControlEnable(Lorg/json/JSONObject;)[Z
    .locals 3

    const-string/jumbo v0, "torch-control-enable"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse torch control enable array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getTriggerFallBackInThermal(Lorg/json/JSONObject;)Z
    .locals 2

    const-string v0, "fall-back-config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v0, "trigger-fall-back-in-thermal"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getUhdrCameraModes(Lorg/json/JSONObject;)Ljava/util/HashSet;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, "uhdr-camera-mode-configs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "allowed-sceneMode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse fall back scenes array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getUltraResReminderRgThreshold(Lorg/json/JSONObject;)F
    .locals 2

    const-string/jumbo v0, "remosaic-config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "ultra-res-reminder-rg-threshold"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_1
    :goto_0
    const/high16 p0, 0x40c00000    # 6.0f

    return p0
.end method

.method public static getUseAppShutterControl(Lorg/json/JSONObject;)Z
    .locals 2

    const-string/jumbo v0, "use-app-shutter-control"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getUseCustomNoiseReduction(Lorg/json/JSONObject;)[Z
    .locals 3

    const-string v0, "custom-noise-reduction"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Custom Noise Reduction array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getUseHQPreview(Lorg/json/JSONObject;)[Z
    .locals 3

    const-string v0, "hq-preview"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Use HQ-Preview array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getUseHighResolutionOutput(Lorg/json/JSONObject;)[Z
    .locals 3

    const-string v0, "high-resolution-output"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Use High Resolution Output array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "variant-configs-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v1}, Lcom/motorola/camera/shared/Util;->getDevicePhysicalRamSizeGiB(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getVideoPortraitConifgs(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "video-portrait-configs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-wide v1, 0x4033e147a0000000L    # 19.8799991607666

    const-string v3, "bokeh_max_radius_factor"

    invoke-virtual {p0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    const-string v2, "light_factor"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    const-string v7, "bg_light_factor"

    invoke-virtual {p0, v7, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    const-string v9, "max_light_threshold"

    invoke-virtual {p0, v9, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    const-wide/16 v10, 0x0

    const-string v5, "min_light_threshold"

    invoke-virtual {p0, v5, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getZoomBlendingManualX(Lorg/json/JSONObject;)[F
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    :try_start_0
    const-string/jumbo v1, "zoom-blending-manual-ratio-x"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [F

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    const-string p0, "JsonConfig"

    const-string v1, "Warning: failed to get zoom blending manual ratio, use default value"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_1
    return-object v0
.end method

.method public static getZoomBlendingSegments(Lorg/json/JSONObject;)[F
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    :try_start_0
    const-string/jumbo v1, "zoom-blending-segments"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [F

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    const-string p0, "JsonConfig"

    const-string v1, "Warning: failed to get zoom blending segments, use default value"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_1
    return-object v0
.end method

.method public static getZoomModeSwitchGains(Lorg/json/JSONObject;)[F
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    new-array v2, v0, [F

    const-string/jumbo v3, "zoom_mode_switch"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v3, "zoom_mode_switch_gains"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eq v3, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    const-string p0, "JsonConfig"

    const-string v0, "Failed to get zoom sensor mode switch gains, use default:0.0"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_2
    :goto_1
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getZoomOverrideJobCount(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 11

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getVariantConfigs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "max-concurrent-jobs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string/jumbo v0, "zoom-override-single-slip"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    move v5, v1

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    new-instance v7, Lcom/motorola/camera/JsonConfig$ZoomOverride;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    double-to-float v9, v9

    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-direct {v7, v8, v9, v6}, Lcom/motorola/camera/JsonConfig$ZoomOverride;-><init>(FFI)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse zoom-override-single-slip"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse max-concurrent-jobs"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inSensorCropHasLuxIdxThresholdRequirement()Z
    .locals 9

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropDefaultConfig:Lcom/motorola/camera/JsonConfig$InSensorCropData;

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxLowerThreshold:Ljava/lang/Double;

    invoke-static {v1}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getLuxIdxThreshold(Ljava/lang/Double;)D

    move-result-wide v1

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxUpperThreshold:Ljava/lang/Double;

    invoke-static {v0}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getLuxIdxThreshold(Ljava/lang/Double;)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropConfigOverrides:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/JsonConfig$InSensorCropData;

    iget-object v5, v4, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxLowerThreshold:Ljava/lang/Double;

    invoke-static {v5}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getLuxIdxThreshold(Ljava/lang/Double;)D

    move-result-wide v5

    iget-object v4, v4, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxUpperThreshold:Ljava/lang/Double;

    invoke-static {v4}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getLuxIdxThreshold(Ljava/lang/Double;)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    cmpg-double v4, v4, v2

    if-gez v4, :cond_1

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    return v1
.end method

.method public static isFallBackScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFallBackScenes:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFallBackModes:Ljava/util/HashSet;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportFastFrameScene()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFastFrameScenes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    const/4 v0, 0x6

    if-eq p0, v0, :cond_e

    const/16 v0, 0x9

    if-eq p0, v0, :cond_d

    const/16 v0, 0x10

    if-eq p0, v0, :cond_c

    const/16 v0, 0x12

    if-eq p0, v0, :cond_b

    const/16 v0, 0x18

    if-eq p0, v0, :cond_a

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_9

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_8

    const/16 v0, 0x23

    if-eq p0, v0, :cond_7

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_6

    const/16 v0, 0xc

    if-eq p0, v0, :cond_5

    const/16 v0, 0xd

    if-eq p0, v0, :cond_4

    const/16 v0, 0x27

    if-eq p0, v0, :cond_3

    const/16 v0, 0x28

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string p0, "MODE_OTHER"

    return-object p0

    :pswitch_0
    const-string p0, "MODE_PERFECT_ME"

    return-object p0

    :pswitch_1
    const-string p0, "MODE_MOTION_CAPTURE"

    return-object p0

    :pswitch_2
    const-string p0, "MODE_AI_GROUP_PHOTO"

    return-object p0

    :pswitch_3
    const-string p0, "MODE_TILT_SHIFT"

    return-object p0

    :pswitch_4
    const-string p0, "MODE_ARC_LONG_EXPOSURE"

    return-object p0

    :pswitch_5
    const-string p0, "MODE_PHOTO_BOOTH"

    return-object p0

    :pswitch_6
    const-string p0, "MODE_MIRROR"

    return-object p0

    :cond_0
    const-string p0, "MODE_JG_SUPER_NIGHT"

    return-object p0

    :cond_1
    const-string p0, "MODE_RAW_SUPER_NIGHT"

    return-object p0

    :cond_2
    const-string p0, "MODE_SLIDE_SCAN"

    return-object p0

    :cond_3
    const-string p0, "MODE_DOC_SCAN"

    return-object p0

    :cond_4
    const-string p0, "MODE_VIDEO_TIMELAPSE"

    return-object p0

    :cond_5
    const-string p0, "MODE_SELECT_COLOR"

    return-object p0

    :cond_6
    const-string p0, "MODE_AS_AUTO_SUPER_NIGHT"

    return-object p0

    :cond_7
    const-string p0, "MODE_PHOTO_SINGLE_SESSION_REMOSAIC"

    return-object p0

    :cond_8
    const-string p0, "MODE_SUPER_PORTRAIT"

    return-object p0

    :cond_9
    const-string p0, "MODE_PHOTO_HIGH_MP_REMOSAIC"

    return-object p0

    :cond_a
    const-string p0, "MODE_SUPER_NIGHT"

    return-object p0

    :cond_b
    const-string p0, "MODE_SINGLE_BOKEH"

    return-object p0

    :cond_c
    const-string p0, "MODE_PHOTO_SEGMENTATION"

    return-object p0

    :cond_d
    const-string p0, "MODE_LENOVO_SELFIE"

    return-object p0

    :cond_e
    const-string p0, "MODE_PHOTO_DEPTH"

    return-object p0

    :cond_f
    const-string p0, "MODE_PHOTO_PRO"

    return-object p0

    :cond_10
    const-string p0, "MODE_VIDEO_SLOW_MO"

    return-object p0

    :cond_11
    const-string p0, "MODE_PANORAMA"

    return-object p0

    :cond_12
    const-string p0, "MODE_VIDEO"

    return-object p0

    :cond_13
    const-string p0, "MODE_PHOTO"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseJson(Landroid/content/ContextWrapper;)V
    .locals 152

    const-string/jumbo v0, "parseJson dur:"

    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/motorola/camera/JsonConfig;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz v2, :cond_2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/JsonConfig;->readDeviceConfig(Landroid/content/Context;)Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    sget-boolean v2, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "JsonConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/util/MalformedJsonException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v1

    return-void

    :goto_2
    const/16 v2, 0x14

    filled-new-array {v2, v2, v2}, [I

    move-result-object v6

    const/16 v5, 0xe

    filled-new-array {v5, v5, v5}, [I

    move-result-object v7

    const-string v5, "default"

    filled-new-array {v5, v5, v5}, [Ljava/lang/String;

    move-result-object v14

    const/4 v5, 0x0

    filled-new-array {v5, v5, v5}, [I

    move-result-object v15

    const/16 v8, 0x1e

    filled-new-array {v8, v8, v8}, [I

    move-result-object v36

    filled-new-array {v2, v2, v2}, [I

    move-result-object v37

    const/16 v2, 0xf

    filled-new-array {v2, v2, v2}, [I

    move-result-object v38

    filled-new-array {v2, v2, v2}, [I

    move-result-object v39

    filled-new-array {v8, v8, v8}, [I

    move-result-object v40

    const/4 v8, 0x3

    new-array v9, v8, [F

    fill-array-data v9, :array_0

    const/16 v10, 0x12c

    filled-new-array {v10, v10, v10}, [I

    move-result-object v43

    const/16 v10, 0xc8

    filled-new-array {v10, v10, v10}, [I

    move-result-object v44

    new-array v11, v3, [F

    const/high16 v55, 0x3f800000    # 1.0f

    aput v55, v11, v4

    new-array v12, v3, [F

    aput v55, v12, v4

    new-array v13, v3, [F

    aput v55, v13, v4

    move/from16 v136, v2

    new-array v2, v8, [Z

    fill-array-data v2, :array_1

    move/from16 v16, v4

    new-array v4, v8, [Z

    fill-array-data v4, :array_2

    new-array v10, v8, [Z

    fill-array-data v10, :array_3

    new-array v8, v8, [Z

    fill-array-data v8, :array_4

    sget-object v3, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    move-object/from16 p0, v0

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    filled-new-array {v3, v5, v0}, [Lcom/motorola/camera/settings/CameraType;

    move-result-object v70

    const-string v0, "HDR"

    filled-new-array {v0, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xd

    new-array v3, v3, [Z

    fill-array-data v3, :array_5

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH:Lcom/motorola/camera/settings/CameraType;

    filled-new-array {v5}, [Lcom/motorola/camera/settings/CameraType;

    move-result-object v69

    move-object/from16 v18, v0

    const/4 v5, 0x0

    new-array v0, v5, [Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v104, v0

    new-array v0, v5, [F

    move-object/from16 v105, v0

    new-array v0, v5, [I

    move-object/from16 v106, v0

    new-array v0, v5, [I

    const/4 v5, 0x2

    move-object/from16 v107, v0

    new-array v0, v5, [J

    fill-array-data v0, :array_6

    new-instance v45, Ljava/util/HashMap;

    invoke-direct/range {v45 .. v45}, Ljava/util/HashMap;-><init>()V

    const-string v61, "none"

    move-object/from16 v31, v0

    new-array v0, v5, [F

    fill-array-data v0, :array_7

    const-string v54, "#FFFFFFFF"

    move-object/from16 v68, v0

    new-array v0, v5, [F

    fill-array-data v0, :array_8

    move-object/from16 v57, v0

    const/4 v5, 0x0

    new-array v0, v5, [Landroidx/compose/runtime/Latch;

    new-instance v5, Ljava/util/HashSet;

    move-object/from16 v71, v0

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v73, Ljava/util/HashSet;

    invoke-direct/range {v73 .. v73}, Ljava/util/HashSet;-><init>()V

    new-instance v74, Ljava/util/HashSet;

    invoke-direct/range {v74 .. v74}, Ljava/util/HashSet;-><init>()V

    new-instance v75, Ljava/util/HashSet;

    invoke-direct/range {v75 .. v75}, Ljava/util/HashSet;-><init>()V

    new-instance v76, Ljava/util/HashSet;

    invoke-direct/range {v76 .. v76}, Ljava/util/HashSet;-><init>()V

    new-instance v77, Ljava/util/HashSet;

    invoke-direct/range {v77 .. v77}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_9

    move-object/from16 v87, v0

    const/16 v0, 0xc8

    move-object/from16 v53, v2

    const/16 v2, 0x190

    filled-new-array {v0, v2}, [I

    move-result-object v88

    const-string v58, ""

    const/4 v0, 0x2

    new-array v2, v0, [Z

    fill-array-data v2, :array_a

    move-object/from16 v93, v2

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/high16 v17, 0x42960000    # 75.0f

    aput v17, v2, v16

    new-array v0, v0, [F

    fill-array-data v0, :array_b

    const-string v113, "arcsoft"

    new-instance v115, Lcom/motorola/camera/JsonConfig$InSensorCropData;

    invoke-direct/range {v115 .. v115}, Lcom/motorola/camera/JsonConfig$InSensorCropData;-><init>()V

    new-instance v124, Ljava/util/HashMap;

    invoke-direct/range {v124 .. v124}, Ljava/util/HashMap;-><init>()V

    new-instance v125, Ljava/util/HashSet;

    invoke-direct/range {v125 .. v125}, Ljava/util/HashSet;-><init>()V

    new-instance v126, Ljava/util/HashSet;

    invoke-direct/range {v126 .. v126}, Ljava/util/HashSet;-><init>()V

    new-instance v127, Ljava/util/HashSet;

    invoke-direct/range {v127 .. v127}, Ljava/util/HashSet;-><init>()V

    new-instance v128, Ljava/util/ArrayList;

    invoke-direct/range {v128 .. v128}, Ljava/util/ArrayList;-><init>()V

    new-instance v129, Ljava/util/HashSet;

    invoke-direct/range {v129 .. v129}, Ljava/util/HashSet;-><init>()V

    new-instance v131, Ljava/util/HashSet;

    invoke-direct/range {v131 .. v131}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v72, v5

    new-instance v5, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    const/16 v151, 0x0

    const/16 v150, 0x0

    const/16 v148, 0x0

    const/16 v147, 0x0

    const-wide/16 v145, 0x0

    const/16 v144, 0x0

    const/16 v143, 0x0

    const/16 v142, 0x0

    const/16 v141, 0x0

    const/16 v140, 0x0

    const/16 v139, 0x0

    const/16 v138, 0x0

    const/16 v130, 0x0

    const/16 v119, 0x0

    const/16 v118, 0x0

    const/16 v116, 0x0

    const/16 v111, 0x0

    const/16 v110, 0x0

    const/16 v109, 0x0

    const/16 v108, 0x0

    const/16 v101, 0x0

    const/16 v100, 0x0

    const/16 v94, 0x0

    const/16 v92, 0x0

    const/16 v91, 0x0

    const/16 v90, 0x0

    const/16 v85, 0x0

    const-wide/16 v83, 0x0

    const/16 v82, 0x0

    const/16 v81, 0x0

    const/16 v80, 0x0

    const/16 v79, 0x0

    const/16 v78, 0x0

    const/16 v65, 0x0

    const/16 v64, 0x0

    const/16 v63, 0x0

    const/16 v51, 0x0

    const/16 v50, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x9

    const/16 v24, 0x1388

    const/16 v25, 0x3e8

    const/high16 v27, -0x40800000    # -1.0f

    const/high16 v28, 0x40000000    # 2.0f

    const/high16 v29, 0x40c00000    # 6.0f

    const-wide/16 v32, 0x1388

    const-wide/16 v34, 0x0

    const/high16 v49, 0x41200000    # 10.0f

    const/16 v59, 0x0

    const-wide/16 v96, -0x1

    const/16 v117, 0x1

    const/16 v133, -0x1

    const v134, 0x3f59999a    # 0.85f

    const/16 v135, 0x8

    move-object/from16 v67, v8

    move-object v8, v6

    move-object/from16 v41, v9

    move-object v9, v7

    move-object/from16 v66, v10

    move-object v10, v6

    move-object/from16 v46, v11

    move-object v11, v7

    move-object/from16 v47, v12

    move-object v12, v6

    move-object/from16 v48, v13

    move-object v13, v7

    move/from16 v30, v29

    move-object/from16 v42, v41

    const/16 v26, 0x0

    move/from16 v52, v26

    move/from16 v56, v26

    move/from16 v62, v26

    move/from16 v86, v26

    move/from16 v95, v26

    move/from16 v98, v26

    move/from16 v103, v26

    move/from16 v114, v26

    move/from16 v120, v26

    move/from16 v121, v26

    move/from16 v122, v26

    move/from16 v123, v26

    move/from16 v132, v26

    move/from16 v137, v136

    move/from16 v149, v136

    move-object/from16 v112, v0

    move-object/from16 v102, v2

    move-object/from16 v89, v3

    move-object/from16 v60, v4

    const/16 v99, 0xc8

    invoke-direct/range {v5 .. v151}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;-><init>([I[I[I[I[I[I[I[I[Ljava/lang/String;[I[I[I[I[I[I[ILjava/util/ArrayList;IIIZFFFF[JJJ[I[I[I[I[I[F[F[I[ILjava/util/HashMap;[F[F[FFLjava/util/HashMap;Ljava/util/HashMap;Z[ZLjava/lang/String;FZ[FLjava/lang/String;F[ZLjava/lang/String;ZLjava/util/HashMap;Ljava/util/HashMap;[Z[Z[Z[F[Lcom/motorola/camera/settings/CameraType;[Lcom/motorola/camera/settings/CameraType;[Landroidx/compose/runtime/Latch;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;[DFFIDLorg/json/JSONArray;I[F[I[ZLjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;[Z[IZJZILjava/lang/String;Ljava/lang/String;[FZ[Lcom/motorola/camera/settings/CameraType;[F[I[ILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;[FLjava/lang/String;ZLcom/motorola/camera/JsonConfig$InSensorCropData;Ljava/util/HashMap;IILjava/util/HashMap;IIIILjava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/HashSet;[FLjava/util/HashSet;ZIFIIILjava/util/HashMap;Ljava/util/HashMap;ILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;JILjava/util/HashMap;I[F[F)V

    sput-object v5, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    throw p0

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 8
        0xbb8
        0xbb8
    .end array-data

    :array_7
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_9
    .array-data 4
        0x42dc0000    # 110.0f
        0x429a0000    # 77.0f
        0x3ecccccd    # 0.4f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_a
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_b
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static readDeviceConfig(Landroid/content/Context;)Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;
    .locals 15

    const-string/jumbo v0, "torch-control"

    const-string/jumbo v1, "video_nv_prompt_lux"

    const-string v2, "Can\'t find Software config for "

    const-string v3, "Error: get JSON object "

    new-instance v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    invoke-direct {v4}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;-><init>()V

    invoke-static {}, Lcom/motorola/camera/Util;->getDevice()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/camera/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/camera/Util;->combineDeviceWithRAM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/Util;->LOW_DEVICES:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v5, v6

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "config_device_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/motorola/camera/JsonConfig;->getAssetConfig(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, " failed"

    const-string v8, "JsonConfig"

    if-eqz v6, :cond_4

    :try_start_0
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    invoke-static {v6, v3}, Lcom/motorola/camera/JsonConfig;->getJobCount(Lorg/json/JSONObject;I)[I

    move-result-object v9

    invoke-static {v4, v9}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetSingleMaxJobCnt(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[I)V

    const/4 v9, 0x2

    invoke-static {v6, v9}, Lcom/motorola/camera/JsonConfig;->getJobCount(Lorg/json/JSONObject;I)[I

    move-result-object v10

    invoke-static {v4, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetSingleNormalOverrideMaxJobCnt(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[I)V

    const/4 v10, 0x3

    invoke-static {v6, v10}, Lcom/motorola/camera/JsonConfig;->getJobCount(Lorg/json/JSONObject;I)[I

    move-result-object v11

    invoke-static {v4, v11}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetSingleSpecialOverrideMaxJobCnt(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[I)V

    const/4 v11, 0x4

    invoke-static {v6, v11}, Lcom/motorola/camera/JsonConfig;->getJobCount(Lorg/json/JSONObject;I)[I

    move-result-object v12

    invoke-static {v4, v12}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetSingleSlipMaxJobCnt(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[I)V

    const/4 v12, 0x5

    invoke-static {v6, v12}, Lcom/motorola/camera/JsonConfig;->getJobCount(Lorg/json/JSONObject;I)[I

    move-result-object v13

    invoke-static {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetDualMaxJobCnt(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[I)V

    const/4 v13, 0x6

    invoke-static {v6, v13}, Lcom/motorola/camera/JsonConfig;->getJobCount(Lorg/json/JSONObject;I)[I

    move-result-object v13

    invoke-static {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetDualDepthMaxJobCnt(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getZoomOverrideJobCount(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetZoomOverride(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/util/ArrayList;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getMaxConcurrentJobsByMode(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setMaxJobCountMap(Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getMaxConcurrentJobsByScene(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setMaxConcurrentJobsMap(Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getQcfaHighResMaxConcurrentJobsByScene(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setQcfaHighResMaxConcurrentJobsMap(Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getMaxConcurrentJobsBySceneWithBeauty(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setMaxJobsBySceneWithBeautyMap(Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getMaxConcurrentJobsBySceneAdvanced(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setMaxJobsBySceneAdvancedMap(Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getMaxSlipMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setMaxJobSlipMap(Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getSnapshotMinInterval(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetSnapshotMinInterval(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getHighResSnapShotMinInterval(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetHighResSnapshotMinInterval(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getQcfaHighResSnapShotMinInterval(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetQcfaHighResSnapshotMinInterval(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getBeautyEnabledSnapshotMinInterval(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetBeautyEnabledSnapshotMinInterval(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getUseAppShutterControl(Lorg/json/JSONObject;)Z

    move-result v13

    invoke-static {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetUseAppShutterControl(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Z)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getEngineMfnrEstimate(Lorg/json/JSONObject;)J

    move-result-wide v13

    invoke-static {v4, v13, v14}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetEngineMfnrEstimate(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;J)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getPhysicalCameraCount(Lorg/json/JSONObject;)I

    move-result v13

    invoke-static {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetPhysicalCameraCount(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->get3ATimeoutFrames(Lorg/json/JSONObject;)I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->set3ATimeoutFrames(I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getFocusTimeoutDurationFlash(Lorg/json/JSONObject;)I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setFocusTimeoutDurationFlash(I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getSetRepeatingSendErrorDelay(Lorg/json/JSONObject;)I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setSetRepeatingSendErrorDelay(I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getGainOnlyQcfaDecision(Lorg/json/JSONObject;)Z

    move-result v13

    invoke-static {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetGainOnlyQcfaDecision(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Z)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getAnalogGainThreshold(Lorg/json/JSONObject;)F

    move-result v13

    invoke-static {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetAnalogGainThreshold(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;F)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getToHighResRgThreshold(Lorg/json/JSONObject;)F

    move-result v13

    invoke-static {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetToHighResRgThreshold(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;F)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getToNormalResRgThreshold(Lorg/json/JSONObject;)F

    move-result v13

    invoke-static {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetToNormalResRgThreshold(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;F)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getUltraResReminderRgThreshold(Lorg/json/JSONObject;)F

    move-result v13

    invoke-static {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetUltraResReminderRgThreshold(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;F)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getSingleSessionRemosaicEstimate(Lorg/json/JSONObject;)[J

    move-result-object v13

    invoke-static {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetSingleSessionRemosaicEstimate(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[J)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getNonSingleSessionRemosaicEstimate(Lorg/json/JSONObject;)J

    move-result-wide v13

    invoke-static {v4, v13, v14}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetNonSingleSessionRemosaicEstimate(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;J)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getQcfaFastCaptureUITimeout(Lorg/json/JSONObject;)J

    move-result-wide v13

    invoke-static {v4, v13, v14}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetQcfaFastCaptureUITimeout(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;J)V

    invoke-static {v6, v9, v3}, Lcom/motorola/camera/JsonConfig;->getBufferCounts(Lorg/json/JSONObject;II)[I

    move-result-object v13

    invoke-static {v4, v9, v3, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetBufferCount(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;II[I)V

    invoke-static {v6, v9, v9}, Lcom/motorola/camera/JsonConfig;->getBufferCounts(Lorg/json/JSONObject;II)[I

    move-result-object v13

    invoke-static {v4, v9, v9, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetBufferCount(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;II[I)V

    invoke-static {v6, v10, v3}, Lcom/motorola/camera/JsonConfig;->getBufferCounts(Lorg/json/JSONObject;II)[I

    move-result-object v13

    invoke-static {v4, v10, v3, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetBufferCount(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;II[I)V

    invoke-static {v6, v10, v9}, Lcom/motorola/camera/JsonConfig;->getBufferCounts(Lorg/json/JSONObject;II)[I

    move-result-object v13

    invoke-static {v4, v10, v9, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetBufferCount(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;II[I)V

    invoke-static {v6, v11, v3}, Lcom/motorola/camera/JsonConfig;->getBufferCounts(Lorg/json/JSONObject;II)[I

    move-result-object v13

    invoke-static {v4, v11, v3, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetBufferCount(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;II[I)V

    invoke-static {v6, v11, v9}, Lcom/motorola/camera/JsonConfig;->getBufferCounts(Lorg/json/JSONObject;II)[I

    move-result-object v13

    invoke-static {v4, v11, v9, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetBufferCount(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;II[I)V

    invoke-static {v6, v3, v3}, Lcom/motorola/camera/JsonConfig;->getBufferCounts(Lorg/json/JSONObject;II)[I

    move-result-object v13

    invoke-static {v4, v3, v3, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetBufferCount(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;II[I)V

    invoke-static {v6, v3, v9}, Lcom/motorola/camera/JsonConfig;->getBufferCounts(Lorg/json/JSONObject;II)[I

    move-result-object v13

    invoke-static {v4, v3, v9, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetBufferCount(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;II[I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getGrallocUsageFlags(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetGrallocUsageFlags(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-static {v6, v3, v13}, Lcom/motorola/camera/JsonConfig;->getPreviewFps(Lorg/json/JSONObject;IZ)[I

    move-result-object v14

    invoke-static {v4, v14}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetPreviewRateLimitDefault(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[I)V

    invoke-static {v6, v9, v3}, Lcom/motorola/camera/JsonConfig;->getPreviewFps(Lorg/json/JSONObject;IZ)[I

    move-result-object v9

    invoke-static {v4, v9}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetPreviewRateLimitLvl1(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[I)V

    invoke-static {v6, v10, v3}, Lcom/motorola/camera/JsonConfig;->getPreviewFps(Lorg/json/JSONObject;IZ)[I

    move-result-object v9

    invoke-static {v4, v9}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetPreviewRateLimitLvl2(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[I)V

    invoke-static {v6, v11, v3}, Lcom/motorola/camera/JsonConfig;->getPreviewFps(Lorg/json/JSONObject;IZ)[I

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetPreviewRateDepthLimit(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[I)V

    invoke-static {v6, v12, v13}, Lcom/motorola/camera/JsonConfig;->getPreviewFps(Lorg/json/JSONObject;IZ)[I

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetPreviewRateMotionLimit(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getFullFrameConfig(Lorg/json/JSONObject;)[I

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetSkipPattern(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getMaxMultishotRates(Lorg/json/JSONObject;)[F

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetMaxMultishotRates(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[F)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getMaxMultishotRatesLvl1(Lorg/json/JSONObject;)[F

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetMaxMultishotRatesLvl1(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[F)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getLowMemKillSizeVals(Lorg/json/JSONObject;)[I

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetLowMemKillSizeMbVals(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getExtraFreeMemSizeVals(Lorg/json/JSONObject;)[I

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetExtraFreeMemSizeMbVals(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getActionShotZoomSegments(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetActionShotZoomSegments(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getZoomBlendingSegments(Lorg/json/JSONObject;)[F

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetZoomBlendingSegments(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[F)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getZoomBlendingManualX(Lorg/json/JSONObject;)[F

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetZoomBlendingManualX(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[F)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getArcZoomBarSegments(Lorg/json/JSONObject;)[F

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetArcZoomBarSegments(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[F)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getNonBasicModesMaxZoomRatio(Lorg/json/JSONObject;)F

    move-result v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetNonBasicModesZoomRatio(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;F)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getUseHighResolutionOutput(Lorg/json/JSONObject;)[Z

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetUseHighResolutionOutput(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[Z)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getUseHQPreview(Lorg/json/JSONObject;)[Z

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetUseHQPreview(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[Z)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getSceneDetectionPlatform(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetSceneDetectionPlatform(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getSkinToneDetectionEnabled(Lorg/json/JSONObject;)Z

    move-result v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetSkinToneDetectionEnabled(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Z)V

    const-string v3, "country-mapping"

    invoke-static {v3, v6}, Lcom/motorola/camera/JsonConfig;->getSkinToneDetectionMapping(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetSkinToneCountryMapping(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/util/HashMap;)V

    const-string/jumbo v3, "sku-mapping"

    invoke-static {v3, v6}, Lcom/motorola/camera/JsonConfig;->getSkinToneDetectionMapping(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetSkinToneSkuMapping(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getMotoFlashTuningEnable(Lorg/json/JSONObject;)[Z

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetMotoFlashTuningEnable(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[Z)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getUseCustomNoiseReduction(Lorg/json/JSONObject;)[Z

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetUseCustomNoiseReduction(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[Z)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getSuperRemosaicSettings(Lorg/json/JSONObject;)[F

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetSuperRemosaicSettings(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[F)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getOfflineReprocEnabled(Lorg/json/JSONObject;)[Z

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetOfflineReprocEnabled(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[Z)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getDepthSysteMCalibrationDevices(Lorg/json/JSONObject;)[Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetDepthSystemCalibration(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[Lcom/motorola/camera/settings/CameraType;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getCameraTypes(Lorg/json/JSONObject;)[Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setCameraTypes([Lcom/motorola/camera/settings/CameraType;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getCameraMappings(Lorg/json/JSONObject;)[Landroidx/compose/runtime/Latch;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setCameraMappings([Landroidx/compose/runtime/Latch;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getMcfSlowCaptureModes(Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setMcfSlowCaptureModes(Ljava/util/HashSet;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getDisableAppZSLScenes(Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setDisableAppZslScenes(Ljava/util/HashSet;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getDisableHalZSLModes(Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setDisableHalZslModes(Ljava/util/HashSet;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getCustomizedHalZSLModes(Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setCustomizedHalZslModes(Ljava/util/HashSet;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getCoreRawStreamModes(Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setCoreRawStreamModes(Ljava/util/HashSet;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getExtraRawStreamModes(Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setExtraRawStreamModes(Ljava/util/HashSet;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getEarlyReprocScenes(Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setEarlyReprocScenes(Ljava/util/HashSet;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getThumbnailJpegQuality(Lorg/json/JSONObject;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setThumbnailJpegQuality(I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getDisplayCutoutsCoordinates(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setDisplayCutoutsCoordinates(Lorg/json/JSONArray;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getDisplayCutoutConfigs(Lorg/json/JSONObject;)[F

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setDisplayCutoutConfigs([F)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getQuickCaptureVibrationConfigs(Lorg/json/JSONObject;)[I

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setQuickCaptureVibrationConfigs([I)V

    const-string/jumbo v3, "torch-control-enable"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getTorchControlEnable(Lorg/json/JSONObject;)[Z

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetTorchControlEnable(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[Z)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->slurpJson(Lorg/json/JSONObject;)V

    :cond_2
    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getBarcodeDetectionEnabled(Lorg/json/JSONObject;)[Z

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setBarcodeDetectionEnabled([Z)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getBarcodeTimeBetweenScans(Lorg/json/JSONObject;)[I

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setBarcodeTimeBetweenScans([I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getBarcodeDetectionBackoff(Lorg/json/JSONObject;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setBarcodeDetectionBackoff(Z)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getGestureRemoveDelay(Lorg/json/JSONObject;)Z

    move-result v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetGestureRemoveDelay(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Z)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getSuperSlowMotionLowLightThreshold(Lorg/json/JSONObject;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setSuperSlowMotionLowLightThreshold(I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getSuperSlowMotionLib(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setSuperSlowMotionLib(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getStarTrailsLib(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setStarTrailsLib(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getSlideScanConfigs(Lorg/json/JSONObject;)[F

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setSlideScanConfigs([F)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getPortraitLens(Lorg/json/JSONObject;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setPortraitLens(Z)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getPortraitLensCameraType(Lorg/json/JSONObject;)[Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setPortraitLensCameraType([Lcom/motorola/camera/settings/CameraType;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getPortraitLensZoomValue(Lorg/json/JSONObject;)[F

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setPortraitLensZoomValue([F)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getPortraitLensBlurLevel(Lorg/json/JSONObject;)[I

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setPortraitLensBlurLevel([I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getPortraitLensOISBokehCamId(Lorg/json/JSONObject;)[I

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setPortraitLensOISBokehCamId([I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getFastCaptureUITimeoutMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setFastCaptureUITimeoutMap(Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getVideoPortraitConifgs(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setVideoPortraitConfigs(Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getMeiSheVideoFxConifgs(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setMeiSheVideoFxConfigs(Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getMeiSheAnimatedStickerConifgs(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setMeiSheAnimatedStickerConfigs(Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getDualCalibrationDataVendor(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetDualCalibrationDataVendor(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getInSensorCropEnableInSession(Lorg/json/JSONObject;)Z

    move-result v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetInSensorCropEnableInSession(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Z)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getInSensorCropConfigDefaults(Lorg/json/JSONObject;)Lcom/motorola/camera/JsonConfig$InSensorCropData;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetInSensorCropDefaultConfig(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Lcom/motorola/camera/JsonConfig$InSensorCropData;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getInSensorCropConfigOverrides(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetInSensorCropConfigOverrides(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getInSensorCropVendorTagsVersion(Lorg/json/JSONObject;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetInSensorCropVendorTagsVersion(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getManualExposureOverrides(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetManualExposureOverrideMap(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getMaxFallBackCount(Lorg/json/JSONObject;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetMaxFallBackCount(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getMaxFallBackHighResCount(Lorg/json/JSONObject;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetMaxFallBackHighResCount(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getMaxFallBackFilterCount(Lorg/json/JSONObject;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetMaxFallBackFilterCount(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getMaxFallBackBeautyCount(Lorg/json/JSONObject;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetMaxFallBackBeautyCount(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getMaxFallBackCountByScene(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetMaxFallBackCountByScene(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getFallBackScenes(Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetFallBackScenes(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/util/HashSet;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getUhdrCameraModes(Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetUhdrCameraMode(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/util/HashSet;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getFastFrameScenes(Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetFastFrameScenes(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/util/HashSet;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getFastFrameExcludeLux(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetFastFrameExcludeLux(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/util/ArrayList;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getAISDScenes(Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetAISDScenes(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/util/HashSet;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getFallBackModes(Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setFallBackModes(Ljava/util/HashSet;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getFallBackISOThreshold(Lorg/json/JSONObject;)[F

    move-result-object v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetFallBackISOThreshold(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;[F)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getTriggerFallBackInThermal(Lorg/json/JSONObject;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setTriggerFallBackInThermal(Z)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getFallbackModePeriod(Lorg/json/JSONObject;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setFallBackModePeriod(I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getFallbackMaxDisplayBrightness(Lorg/json/JSONObject;)F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setFallbackMaxDisplayBrightness(F)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getAiCameraConfigsMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setAiCameraConfigsMap(Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getFaceBeautyUI(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetFaceBeautyUi(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;Ljava/util/HashMap;)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getGyroDelay(Lorg/json/JSONObject;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetGyroDelay(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getDefaultBandingMode(Lorg/json/JSONObject;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetBandingMode(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getActivePhotoShotInterval(Lorg/json/JSONObject;)J

    move-result-wide v9

    invoke-static {v4, v9, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetActivePhotoShotInterval(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;J)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getExitPerfHintDuration(Lorg/json/JSONObject;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetExitPerfHintDuration(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getTeleMacroMinFocusDistance(Lorg/json/JSONObject;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setTeleMacroMinFocusDistance(I)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getTeleMacroZoomRange(Lorg/json/JSONObject;)[F

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setTeleMacroZoomRange([F)V

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getAutoMacroFallbackZoomRange(Lorg/json/JSONObject;)[F

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setAutoMacroFallbackZoomRange([F)V

    goto :goto_2

    :cond_3
    new-instance p0, Landroid/util/MalformedJsonException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parse json file(config_device) for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0

    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "iq_config_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/JsonConfig;->getAssetConfig(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_6

    :try_start_1
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_5
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getFlashColor(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setFlashColor(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getFlashAlpha(Lorg/json/JSONObject;)F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setFlashAlpha(F)V

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getFlashTorchEnable(Lorg/json/JSONObject;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setFlashTorchEnable(Z)V

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getFlashLuxRange(Lorg/json/JSONObject;)[F

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setFlashLuxRange([F)V

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getPanoDistortions(Lorg/json/JSONObject;)[D

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setPanoDistortions([D)V

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getPanoExpAdjustment(Lorg/json/JSONObject;)F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setPanoExpAdjustment(F)V

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getPanoMaxGain(Lorg/json/JSONObject;)F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setPanoMaxGain(F)V

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getPanoNoiseReductionLevel(Lorg/json/JSONObject;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setPanoNoiseReductionLevel(I)V

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getPanoRotationRatio(Lorg/json/JSONObject;)D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setPanoRotationRatio(D)V

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->slurpJson(Lorg/json/JSONObject;)V

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getCctFlashColorTableString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setFlashCctTableString(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getFlashAwbSpeed(Lorg/json/JSONObject;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setFlashAwbSpeed(F)V

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getZoomModeSwitchGains(Lorg/json/JSONObject;)[F

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->setZoomModeSwitchGains([F)V

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "show_turn_on_tips"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_1
    const/16 v0, 0x8

    :goto_3
    :try_start_3
    const-string/jumbo v2, "show_turn_off_tips"
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_2
    const/16 p0, 0xf

    :goto_4
    :try_start_5
    invoke-static {v4, v0, p0, p0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$msetVideoNvPromptLux(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;III)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Parse json file(iq_config) for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_5
    invoke-static {v4}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->-$$Nest$mbuild(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;)Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    move-result-object p0

    return-object p0
.end method

.method public static readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->available()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_0

    :catch_0
    move-object v1, v0

    goto :goto_1

    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :catch_1
    :goto_1
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object v0
.end method
