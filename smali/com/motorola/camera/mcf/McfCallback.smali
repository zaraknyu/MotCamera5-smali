.class public Lcom/motorola/camera/mcf/McfCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final JSON:Lcom/motorola/camera/mcf/McfCallback$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfCallback$Key;"
        }
    .end annotation
.end field

.field private static final JSON_CALLBACK_DATA:Ljava/lang/String; = "data"

.field private static final JSON_CALLBACK_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "McfCallback"


# instance fields
.field private final mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/mcf/McfCallback$Key;",
            "Lcom/motorola/camera/mcf/McfCallback$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfCallback;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/mcf/McfCallback$Key;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/mcf/McfCallback;->JSON:Lcom/motorola/camera/mcf/McfCallback$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfCallback;->mCallbackMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final get(Lcom/motorola/camera/mcf/McfCallback$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/motorola/camera/mcf/McfCallback$Key;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfCallback$Value;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallback$Value;->mValue:Ljava/lang/Object;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getCallbackObject(Lcom/motorola/camera/mcf/McfCallback$CallbackType;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lcom/motorola/camera/mcf/McfCallback;->JSON:Lcom/motorola/camera/mcf/McfCallback$Key;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/mcf/McfCallback;->get(Lcom/motorola/camera/mcf/McfCallback$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/motorola/camera/mcf/McfCallback;->TAG:Ljava/lang/String;

    const-string p1, "Undefined JSON string."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_12

    :try_start_1
    const-string p0, "data"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_11

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string/jumbo v1, "version"

    const-string v2, "model"

    const-string v3, "McfCallbackAutoCapture"

    const/4 v4, -0x1

    const-string v5, "motion-level"

    const-string/jumbo v6, "status"

    const-string v7, "hdr-detected"

    const-string v8, "ev-bracket"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "Exception parsing JSON: "

    packed-switch p1, :pswitch_data_0

    sget-object p0, Lcom/motorola/camera/mcf/McfCallback;->TAG:Ljava/lang/String;

    const-string p1, "Callback type is UNDEFINED"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_0
    :try_start_2
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;-><init>()V

    const-string/jumbo v1, "process_time_estimate"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v1, "timeStamp"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mTimeStamp:J

    const-string v1, "frameCollectionTimeEst"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mFrameCollectionTimeEst:I

    const-string v1, "miscTimeEst"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mMiscTimeEst:I

    const-string/jumbo v1, "totalTimeEst"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mTotalTimeEst:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v0, p1

    goto/16 :goto_d

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackProcessTimeEstimate"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_1
    :try_start_3
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackGestureDetect;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfCallbackGestureDetect;-><init>()V

    iget-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackGestureDetect;->result:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const-string v2, "gesture-detect-result"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "gesture-detected"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    const-string v2, "gesture"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackGestureDetect"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_2
    :try_start_4
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-boolean v10, v1, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;->moonAsEnabled:Z

    iput-boolean v10, v1, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;->moonAsDetected:Z

    iput v10, v1, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;->moonAsConfidence:I

    iput-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect;->result:Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;

    const-string v2, "arcsoft-moondetect-result"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "moon-as-enabled"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    move v2, v9

    goto :goto_1

    :cond_2
    move v2, v10

    :goto_1
    iput-boolean v2, v1, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;->moonAsEnabled:Z

    const-string v2, "moon-as-detected"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_2

    :cond_3
    move v9, v10

    :goto_2
    iput-boolean v9, v1, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;->moonAsDetected:Z

    const-string v2, "moon-as-confidence"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;->moonAsConfidence:I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackArcsoftMoonDetect"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_3
    :try_start_5
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackBandingDetect;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfCallbackBandingDetect;-><init>()V

    const-string v1, "banding-detect-result"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iget-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackBandingDetect;->result:Lcom/google/android/gms/dynamite/zzo;

    const-string v2, "banding-detected"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/google/android/gms/dynamite/zzo;->zza:I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackBandingDetect"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_4
    :try_start_6
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect;-><init>()V

    iget-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect;->result:Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;

    const-string v2, "mot-nv-detect-result"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "nv-detected"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->isNVdetected:I

    const-string v2, "nv-confidence-dre-prediction"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->nvDetect_dre_prediction:D

    const-string v2, "nv-confidence-bod"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->nvDetect_bod_score:D

    const-string v2, "nv-confidence-llc"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->nvDetect_llc_score:D
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackMotNVDetect"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_5
    :try_start_7
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfCallbackJGDrsd;-><init>()V

    iget-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;

    const-string v2, "jg-drsd-result"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_3

    :cond_4
    move v9, v10

    :goto_3
    iput-boolean v9, v1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->hdrDetected:Z

    const-string v2, "global-cam-id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->globalCamId:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [D

    iput-object v3, v1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->evBracket:[D

    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v10, v3, :cond_5

    iget-object v3, v1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->evBracket:[D

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    aput-wide v6, v3, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :catch_5
    move-exception p0

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->motionLevel:I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackJGDrsd"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_6
    :try_start_8
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;

    new-array v2, v10, [D

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-boolean v10, v1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->hdrDetected:Z

    iput-boolean v10, v1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->isOverexposed:Z

    iput-boolean v10, v1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->isUnderexposed:Z

    iput-object v2, v1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->evBracket:[D

    iput-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;

    const-string v2, "bst-drsd-result"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_6

    move v2, v9

    goto :goto_6

    :cond_6
    move v2, v10

    :goto_6
    iput-boolean v2, v1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->hdrDetected:Z

    const-string v2, "is-overexposed"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_7

    move v2, v9

    goto :goto_7

    :cond_7
    move v2, v10

    :goto_7
    iput-boolean v2, v1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->isOverexposed:Z

    const-string v2, "is-underexposed"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_8

    goto :goto_8

    :cond_8
    move v9, v10

    :goto_8
    iput-boolean v9, v1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->isUnderexposed:Z

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [D

    iput-object v2, v1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->evBracket:[D

    :goto_9
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v10, v1, :cond_1

    iget-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;

    iget-object v1, v1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->evBracket:[D

    invoke-virtual {p0, v10}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    aput-wide v2, v1, v10
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_6

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :catch_6
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackBSTDrsd"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_7
    :try_start_9
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2;-><init>()V

    iget-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2;->result:Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;

    const-string v2, "mot-drsdv2-confidence"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->isHdrDetected:I

    const-string v2, "hdr-confidence-dre-nn"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_dre_nn:D

    const-string v2, "hdr-confidence-gmd"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_gmd:D

    const-string v2, "hdr-confidence-lmd"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_lmd:D
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackMotDrsdv2"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_8
    const-string/jumbo p1, "sr-mode"

    const-string v1, "need-enhanced-nr"

    :try_start_a
    new-instance v2, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;

    new-array v6, v10, [D

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v10, v3, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->hdrMode:I

    iput v10, v3, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->countHist:I

    iput v10, v3, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->countHistThresh:I

    iput-object v6, v3, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->evBracket:[D

    iput v4, v3, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->needEnhancedNR:I

    iput v4, v3, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->motionLevel:I

    iput v4, v3, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->srMode:I

    iput-object v3, v2, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;

    const-string v4, "arcsoft-drsd-result"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v4, "hdr-mode"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->hdrMode:I

    const-string v4, "count-hist"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->countHist:I

    const-string v4, "count-hist-thresh"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->countHistThresh:I

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [D

    iput-object v6, v3, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->evBracket:[D

    :goto_a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v10, v3, :cond_9

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;

    iget-object v3, v3, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->evBracket:[D

    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    aput-wide v6, v3, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :catch_8
    move-exception p0

    goto :goto_b

    :cond_9
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->needEnhancedNR:I

    :cond_a
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v2, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->motionLevel:I

    :cond_b
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v2, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->srMode:I
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_8

    :cond_c
    move-object v0, v2

    goto/16 :goto_d

    :goto_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackArcsoftDrsd"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_9
    :try_start_b
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackAIScene;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-string v1, "NONE"

    iput-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackAIScene;->mScene:Ljava/lang/String;

    iput-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackAIScene;->mCandidateScenes:Ljava/lang/String;

    const-string v1, "aisd-result"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "ai-scene"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackAIScene;->mScene:Ljava/lang/String;

    const-string v1, "candidateScenes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/motorola/camera/mcf/McfCallbackAIScene;->mCandidateScenes:Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_a
    :try_start_c
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput v10, p1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mType:I

    iput v10, p1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mAction:I

    const-wide/16 v1, -0x1

    iput-wide v1, p1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mRefTimestampNs:J

    const-string v1, "auto-capture"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mType:I

    const-string v1, "action"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mAction:I

    const-string/jumbo v1, "refTimestampNs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mRefTimestampNs:J
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_b
    :try_start_d
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;->UNDEFINED:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    iput-object v3, p1, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;->mModel:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v4, "model-load-complete"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/shared/ai/model/McfMlModel;->Companion:Landroidx/collection/internal/Lock;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_d

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_c

    if-nez v4, :cond_d

    :try_start_e
    invoke-static {v2}, Lcom/motorola/camera/shared/ai/model/McfMlModel;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/ai/model/McfMlModel;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_b
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_c

    :catch_b
    :cond_d
    :try_start_f
    iput-object v3, p1, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;->mModel:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;->mVersion:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;->mStatus:I
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_c

    goto/16 :goto_0

    :catch_c
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackModelLoadComplete"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_c
    :try_start_10
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput v10, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mStatus:I

    sget-object v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;->UNDEFINED:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    iput-object v3, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mModel:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    iput-object v0, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mResults:Ljava/util/ArrayList;

    const-string v4, "model-results"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/shared/ai/model/McfMlModel;->Companion:Landroidx/collection/internal/Lock;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_e

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_e

    if-nez v4, :cond_e

    :try_start_11
    invoke-static {v2}, Lcom/motorola/camera/shared/ai/model/McfMlModel;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/ai/model/McfMlModel;

    move-result-object v3
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_e

    :catch_d
    :cond_e
    :try_start_12
    iput-object v3, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mModel:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mVersion:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mStatus:I

    const-string/jumbo v1, "timestamp"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mTimestampNs:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mResults:Ljava/util/ArrayList;

    const-string/jumbo v1, "results"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_c
    if-ge v10, v1, :cond_1

    invoke-virtual {p0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/mcf/McfModelResult;->parseJson(Lorg/json/JSONObject;)Lcom/motorola/camera/mcf/McfModelResult;

    move-result-object v2

    iget-object v3, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_e

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :catch_e
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackModelResults"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :pswitch_d
    :try_start_13
    new-instance p1, Lcom/motorola/camera/mcf/McfRtDepthStatus;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput v4, p1, Lcom/motorola/camera/mcf/McfRtDepthStatus;->status:I

    const-string/jumbo v1, "real-time-depth-status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/mcf/McfRtDepthStatus;->status:I
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_f

    goto/16 :goto_0

    :catch_f
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfRtDepthStatus"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :pswitch_e
    :try_start_14
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->videoStartTs:J

    iput-wide v1, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->videoStopTs:J

    iput v10, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->jobId:I

    const-string v1, "best-shot-video-trigger"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v1, "videoStartTs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->videoStartTs:J

    const-string/jumbo v1, "videoStopTs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->videoStopTs:J

    const-string v1, "jobId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->jobId:I
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_10

    goto/16 :goto_0

    :catch_10
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackBestShotVideo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-object v0

    :catch_11
    move-exception p0

    sget-object p1, Lcom/motorola/camera/mcf/McfCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception obtaining JSON data object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_12
    move-exception p0

    sget-object p1, Lcom/motorola/camera/mcf/McfCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception obtaining JSON object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCallbackType()Lcom/motorola/camera/mcf/McfCallback$CallbackType;
    .locals 4

    sget-object v0, Lcom/motorola/camera/mcf/McfCallback;->JSON:Lcom/motorola/camera/mcf/McfCallback$Key;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/mcf/McfCallback;->get(Lcom/motorola/camera/mcf/McfCallback$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->UNDEFINED:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    if-nez p0, :cond_0

    sget-object p0, Lcom/motorola/camera/mcf/McfCallback;->TAG:Ljava/lang/String;

    const-string v1, "Undefined JSON string."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "type"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->toEnum(Ljava/lang/String;)Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/motorola/camera/mcf/McfCallback;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception obtaining type from JSON: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getKeys()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/mcf/McfCallback$Key;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final set(Lcom/motorola/camera/mcf/McfCallback$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/motorola/camera/mcf/McfCallback$Key;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/camera/mcf/McfCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfCallback$Value;

    if-eqz v0, :cond_0

    iput-object p2, v0, Lcom/motorola/camera/mcf/McfCallback$Value;->mValue:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Lcom/motorola/camera/mcf/McfCallback$Value;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Lcom/motorola/camera/mcf/McfCallback$Value;->mValue:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setJson(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfCallback;->JSON:Lcom/motorola/camera/mcf/McfCallback$Key;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfCallback;->set(Lcom/motorola/camera/mcf/McfCallback$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string/jumbo v0, "{"

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string/jumbo v2, "}"

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string/jumbo v3, "{motorola.camera.mcf.callback.json="

    invoke-static {v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/mcf/McfCallback$Key;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/mcf/McfCallback$Value;

    iget-object v1, v1, Lcom/motorola/camera/mcf/McfCallback$Value;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
