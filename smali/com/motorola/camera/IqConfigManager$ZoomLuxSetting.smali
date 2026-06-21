.class public abstract Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public maxIso:F

.field public maxLux:F

.field public maxZoom:F

.field public minIso:F

.field public minLux:F

.field public minZoom:F

.field public supportVstabPzsV2:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minIso:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxIso:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->supportVstabPzsV2:I

    const-string v0, "lux_range"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->readJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static isWithinThreshold(FFF)Z
    .locals 0

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_1

    cmpg-float p0, p0, p2

    if-lez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    cmpl-float p0, p2, p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public fitsParameters(FFF)Z
    .locals 2

    iget v0, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minZoom:F

    iget v1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxZoom:F

    invoke-static {p1, v0, v1}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->isWithinThreshold(FFF)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minLux:F

    iget v0, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxLux:F

    invoke-static {p2, p1, v0}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->isWithinThreshold(FFF)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minIso:F

    iget p2, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxIso:F

    invoke-static {p3, p1, p2}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->isWithinThreshold(FFF)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->supportVstabPzsV2:I

    const/4 p1, 0x1

    if-ltz p0, :cond_0

    if-ne p0, p1, :cond_1

    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_SUPPORT_VSTAB_PZS_V2_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_1

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final readJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    const-string/jumbo v0, "use_vstab_pzs_v2"

    const-string v1, "iso_range"

    :try_start_0
    const-string/jumbo v2, "zoom_range"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minZoom:F

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    double-to-float v2, v5

    iput v2, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxZoom:F

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    double-to-float v2, v5

    iput v2, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minLux:F

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    double-to-float p1, v5

    iput p1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxLux:F

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minIso:F

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxIso:F

    :cond_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->supportVstabPzsV2:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    const-string p1, "IqConfigManager"

    const-string p2, "Error parsing Zoom/Lux Configuration: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
