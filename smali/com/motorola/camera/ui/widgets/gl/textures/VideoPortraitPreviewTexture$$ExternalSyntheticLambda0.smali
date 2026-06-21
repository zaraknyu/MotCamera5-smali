.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mProcessFrameResult:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviousProcessFrameResult:I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_BLUR_RESULT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviousProcessFrameResult:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHumanEffectAdapter:Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mInitFinished:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mApiLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    invoke-virtual {v0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->release()I

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mApiLevel:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mInitFinished:Z

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mProcessFrameResult:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviousProcessFrameResult:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHumanEffectAdapter:Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mInitFinished:Z

    if-eqz v2, :cond_2

    goto/16 :goto_8

    :cond_2
    const-string v2, "HumanEffectAdapter"

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mApiLevel:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    goto/16 :goto_7

    :cond_3
    if-ne v3, v4, :cond_7

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;

    invoke-direct {v5}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;-><init>()V

    const-string v6, "/vendor/etc/jiigan/jiigan_model.data"

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v8

    new-array v7, v8, [B

    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v7, v6

    goto :goto_5

    :catch_0
    move-exception v8

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception v8

    move-object v6, v7

    goto :goto_3

    :cond_4
    move-object v6, v7

    :goto_1
    if-eqz v7, :cond_5

    :goto_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_3
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    :goto_4
    iput-object v6, v5, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->model_data:[B

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v3, v5, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    :try_start_4
    invoke-virtual {v1, v5}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->initByConfig(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;)I

    const/4 v3, 0x2

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mApiLevel:I
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :goto_5
    if-eqz v7, :cond_6

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_6
    throw p0

    :cond_7
    :goto_7
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mHumanVideoFusionParams:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mVideoPortraitConfigs:Ljava/util/Map;

    const-string v5, "bokeh_max_radius_factor"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mVideoPortraitConfigs:Ljava/util/Map;

    const-string v5, "light_factor"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mVideoPortraitConfigs:Ljava/util/Map;

    const-string v5, "bg_light_factor"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mVideoPortraitConfigs:Ljava/util/Map;

    const-string v5, "max_light_threshold"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mVideoPortraitConfigs:Ljava/util/Map;

    const-string v5, "min_light_threshold"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    invoke-virtual {v1, v2}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->setParams(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;)I

    sget-object v2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;->ANC_HUM_FEATURE_BOKEH:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    invoke-virtual {v1, v2}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->setFeatureType(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;)I

    invoke-static {}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->getPreviewInstance()Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->setLogLevel(I)I

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mInitFinished:Z

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
