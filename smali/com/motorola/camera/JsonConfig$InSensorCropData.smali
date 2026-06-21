.class public final Lcom/motorola/camera/JsonConfig$InSensorCropData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final allowedModes:Ljava/util/HashSet;

.field public final alwaysEnableModes:Ljava/util/HashSet;

.field public final extraModes:Ljava/util/HashSet;

.field public final luxIdxLowerThreshold:Ljava/lang/Double;

.field public final luxIdxMeanThreshold:Ljava/lang/Double;

.field public final luxIdxUpperThreshold:Ljava/lang/Double;

.field public final scenes:Ljava/util/HashSet;

.field public final zoomLowerThreshold:Ljava/lang/Double;

.field public final zoomUpperThreshold:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->zoomLowerThreshold:Ljava/lang/Double;

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->zoomUpperThreshold:Ljava/lang/Double;

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxLowerThreshold:Ljava/lang/Double;

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxUpperThreshold:Ljava/lang/Double;

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxMeanThreshold:Ljava/lang/Double;

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->scenes:Ljava/util/HashSet;

    .line 8
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->extraModes:Ljava/util/HashSet;

    .line 9
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->alwaysEnableModes:Ljava/util/HashSet;

    .line 10
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->allowedModes:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 12

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->zoomLowerThreshold:Ljava/lang/Double;

    .line 13
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->zoomUpperThreshold:Ljava/lang/Double;

    .line 14
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxLowerThreshold:Ljava/lang/Double;

    .line 15
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxUpperThreshold:Ljava/lang/Double;

    .line 16
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxMeanThreshold:Ljava/lang/Double;

    .line 17
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->scenes:Ljava/util/HashSet;

    .line 18
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->extraModes:Ljava/util/HashSet;

    .line 19
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->alwaysEnableModes:Ljava/util/HashSet;

    .line 20
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->allowedModes:Ljava/util/HashSet;

    .line 21
    const-string v1, "in-sensor-crop-zoom-threshold-range"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "MAX_VALUE"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 24
    invoke-static {v1, v5}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getThresholdVal(Lorg/json/JSONArray;I)D

    move-result-wide v9

    .line 25
    invoke-static {v1, v4}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getThresholdVal(Lorg/json/JSONArray;I)D

    move-result-wide v1

    goto :goto_1

    .line 26
    :cond_0
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string p1, "Error: parse in-sensor-crop-zoom-threshold-range array"

    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_1
    const-string v1, "in-sensor-crop-zoom-threshold"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 28
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-wide v9, v7

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    move-wide v9, v1

    :goto_0
    move-wide v1, v7

    goto :goto_1

    :cond_3
    move-wide v1, v7

    move-wide v9, v1

    .line 29
    :goto_1
    new-instance v11, Landroid/util/Pair;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v11, v9, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    iget-object v1, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    iput-object v1, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->zoomLowerThreshold:Ljava/lang/Double;

    .line 31
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    iput-object v1, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->zoomUpperThreshold:Ljava/lang/Double;

    .line 32
    const-string v1, "in-sensor-crop-lux-idx-threshold"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_4

    .line 33
    :cond_4
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 34
    :goto_2
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v0, :cond_6

    .line 35
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 36
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_3

    .line 37
    :cond_6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ne v1, v6, :cond_8

    .line 39
    invoke-static {v0, v5}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getThresholdVal(Lorg/json/JSONArray;I)D

    move-result-wide v1

    .line 40
    invoke-static {v0, v4}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getThresholdVal(Lorg/json/JSONArray;I)D

    move-result-wide v3

    .line 41
    :goto_3
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    if-eqz v0, :cond_7

    .line 42
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    iput-object v1, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxLowerThreshold:Ljava/lang/Double;

    .line 43
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxUpperThreshold:Ljava/lang/Double;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 45
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxMeanThreshold:Ljava/lang/Double;

    .line 46
    :cond_7
    const-string v0, "in-sensor-crop-scenes"

    invoke-static {v0, p1}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getStringListAttribute(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->scenes:Ljava/util/HashSet;

    .line 48
    const-string v0, "in-sensor-crop-extra-modes"

    invoke-static {v0, p1}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getStringListAttribute(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->extraModes:Ljava/util/HashSet;

    .line 50
    const-string v0, "in-sensor-crop-always-enable-modes"

    invoke-static {v0, p1}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getStringListAttribute(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->alwaysEnableModes:Ljava/util/HashSet;

    .line 52
    const-string v0, "in-sensor-crop-allowed-modes"

    invoke-static {v0, p1}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getStringListAttribute(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->allowedModes:Ljava/util/HashSet;

    return-void

    .line 54
    :cond_8
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string p1, "Error: parse in-sensor-crop-lux-idx-threshold array"

    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLuxIdxThreshold(Ljava/lang/Double;)D
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getLuxIdxThreshold(Ljava/lang/Double;Ljava/lang/Double;)D
    .locals 2

    .line 2
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p1}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getLuxIdxThreshold(Ljava/lang/Double;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static getStringListAttribute(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/HashSet;
    .locals 2

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p0, v1, :cond_1

    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse "

    const-string v1, " array"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getThresholdVal(Lorg/json/JSONArray;I)D
    .locals 2

    const-string v0, "MAX_VALUE"

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide p0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide p0

    return-wide p0
.end method
