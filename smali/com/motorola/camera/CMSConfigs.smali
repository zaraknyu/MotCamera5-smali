.class public final Lcom/motorola/camera/CMSConfigs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CMS_VERSIONS:[Ljava/lang/String;

.field public static final SUPPORT_PIP_PHOTO:Z

.field public static final SUPPORT_PIP_VIDEO:Z


# instance fields
.field public final features:[Lcom/motorola/camera/CMSConfigs$Feature;

.field public final mCountry:Ljava/lang/String;

.field public final mDevice:Ljava/lang/String;

.field public final mFeatureMap:Ljava/util/EnumMap;

.field public final mInvalid:Z

.field public final mStageIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "CMS2.0"

    const-string v1, "CMS3.0"

    const-string v2, "CMS1.0"

    const-string v3, "CMS1.5"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/CMSConfigs;->CMS_VERSIONS:[Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/CMSConfigs$Companion$LazyLoader;->INSTANCE$1:Lcom/motorola/camera/CMSConfigs;

    sget-object v1, Lcom/motorola/camera/CMSConfigs$Feature;->PIP_PHOTO:Lcom/motorola/camera/CMSConfigs$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CMSConfigs;->supports(Lcom/motorola/camera/CMSConfigs$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/CMSConfigs;->SUPPORT_PIP_PHOTO:Z

    sget-object v1, Lcom/motorola/camera/CMSConfigs$Feature;->PIP_VIDEO:Lcom/motorola/camera/CMSConfigs$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CMSConfigs;->supports(Lcom/motorola/camera/CMSConfigs$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/CMSConfigs;->SUPPORT_PIP_VIDEO:Z

    sget-object v1, Lcom/motorola/camera/CMSConfigs$Feature;->VIDEO_BOKEH:Lcom/motorola/camera/CMSConfigs$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CMSConfigs;->supports(Lcom/motorola/camera/CMSConfigs$Feature;)Z

    sget-object v1, Lcom/motorola/camera/CMSConfigs$Feature;->VIDEO_MIRROR:Lcom/motorola/camera/CMSConfigs$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CMSConfigs;->supports(Lcom/motorola/camera/CMSConfigs$Feature;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/CMSConfigs$Feature;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/motorola/camera/CMSConfigs;->mFeatureMap:Ljava/util/EnumMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/CMSConfigs;->mStageIndex:I

    invoke-static {}, Lcom/motorola/camera/CMSConfigs$Feature;->values()[Lcom/motorola/camera/CMSConfigs$Feature;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/CMSConfigs;->features:[Lcom/motorola/camera/CMSConfigs$Feature;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CMS_ENABLE:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CMS_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v2, "getValue(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/motorola/camera/CMSConfigs;->mCountry:Ljava/lang/String;

    if-nez v3, :cond_8

    invoke-static {v0}, Lcom/motorola/camera/shared/Util;->getTotalRAMMiB(Landroid/content/Context;)I

    move-result v3

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit16 v3, v3, 0x3ff

    div-int/lit16 v3, v3, 0x400

    invoke-static {v3, v4}, Lcom/motorola/camera/shared/Util;->getDeviceNameWithRAM(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/CMSConfigs;->mDevice:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/CountryDetector;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/CMSConfigs;->mCountry:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/Util;->LOW_DEVICES:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/motorola/camera/CMSConfigs;->mDevice:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/CMSConfigs;->mDevice:Ljava/lang/String;

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cms_config_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/motorola/camera/JsonConfig;->getAssetConfig(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :try_start_0
    iget-object v3, p0, Lcom/motorola/camera/CMSConfigs;->mDevice:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "CMSConfigs"

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const-string/jumbo v4, "stage"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/CMSConfigs;->CMS_VERSIONS:[Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/collections/ArraysKt;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/CMSConfigs;->mStageIndex:I

    if-gez v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/motorola/camera/CMSConfigs;->mInvalid:Z

    iget-object v4, p0, Lcom/motorola/camera/CMSConfigs;->features:[Lcom/motorola/camera/CMSConfigs$Feature;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_7

    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const-string v10, "getJSONArray(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v11, v10, [Z

    move v12, v6

    :goto_2
    if-ge v12, v10, :cond_5

    :try_start_1
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v13

    aput-boolean v13, v11, v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :catch_1
    const-string v9, "Warning: failed to obtain boolean feature"

    invoke-static {v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v9, p0, Lcom/motorola/camera/CMSConfigs;->mFeatureMap:Ljava/util/EnumMap;

    iget v10, p0, Lcom/motorola/camera/CMSConfigs;->mStageIndex:I

    aget-boolean v10, v11, v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "refreshCMSConfigList dur:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public final supports(Lcom/motorola/camera/CMSConfigs$Feature;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/CMSConfigs;->mInvalid:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/CMSConfigs;->mFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
