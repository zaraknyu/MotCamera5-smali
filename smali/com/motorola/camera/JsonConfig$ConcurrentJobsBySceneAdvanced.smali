.class public final Lcom/motorola/camera/JsonConfig$ConcurrentJobsBySceneAdvanced;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final maxConcurrentJobs:[I

.field public final zoomRange:Landroid/util/Pair;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    const-string/jumbo v0, "zoom-range"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :try_start_0
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    iput-object v1, p0, Lcom/motorola/camera/JsonConfig$ConcurrentJobsBySceneAdvanced;->zoomRange:Landroid/util/Pair;

    const-string v0, "max-concurrent-jobs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_0

    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    aput v1, v0, v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string p1, "Error: parse max-concurrent-jobs, expected integer for job count"

    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$ConcurrentJobsBySceneAdvanced;->maxConcurrentJobs:[I

    return-void

    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string p1, "Error: parse max-concurrent-jobs not a valid array"

    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string p1, "Error: parse zoom-range, expected double for zoom"

    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string p1, "Error: parse zoom-range not a valid array"

    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string p1, "Error: parse max-concurrent-jobs-by-scene-advanced inner element"

    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(zoomRange:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$ConcurrentJobsBySceneAdvanced;->zoomRange:Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] concurrentJobs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$ConcurrentJobsBySceneAdvanced;->maxConcurrentJobs:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
