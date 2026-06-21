.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzjv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createFromJson(Lorg/json/JSONObject;)Lcom/motorola/camera/ui/widgets/gl/Matrices;
    .locals 10

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Matrices;-><init>(I)V

    const-string v1, "lux-idx-to-std-params"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "sensor-name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "aCoefficient"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string v7, "bCoefficient"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    new-instance v9, Lcom/motorola/camera/shared/tuning/LuxIdxToStdCoefficients;

    double-to-float v5, v5

    double-to-float v6, v7

    invoke-direct {v9, v5, v6}, Lcom/motorola/camera/shared/tuning/LuxIdxToStdCoefficients;-><init>(FF)V

    invoke-virtual {v3, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing KEY_LUX_IDX_TO_STD_COEFFICIENTS array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "IqTuningLuxStdStore"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method
