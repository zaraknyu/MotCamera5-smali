.class public abstract Lcom/motorola/camera/settings/SettingsFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 4

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v2, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    .line 7
    iput v0, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 8
    invoke-virtual {v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 9
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const/4 v2, 0x1

    .line 2
    invoke-direct {v0, p2, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3
    iput p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 4
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V
    .locals 3

    .line 16
    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, p2, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 18
    iput p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 19
    iput-object p4, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 20
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 21
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 3

    .line 42
    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const/4 v2, 0x1

    .line 43
    invoke-direct {v0, p2, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 44
    iput p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 45
    iput-object p4, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 46
    iput-object p5, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 47
    iput-object p6, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAndroidIcons:[I

    .line 48
    iput p7, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    .line 49
    iput p8, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    .line 50
    iput-object p9, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 51
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 52
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 3

    .line 30
    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const/4 v2, 0x1

    .line 31
    invoke-direct {v0, p2, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 32
    iput p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 33
    iput-object p4, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 34
    iput-object p5, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 35
    iput-object p6, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mToast:[I

    .line 36
    iput-object p7, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAndroidIcons:[I

    .line 37
    iput p8, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    .line 38
    iput p9, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    .line 39
    iput-object p10, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 40
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 41
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Lcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 3

    .line 10
    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const/4 v2, 0x1

    .line 11
    invoke-direct {v0, p2, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 p2, 0x2

    .line 12
    iput p2, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 13
    iput-object p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 14
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 15
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 3

    .line 22
    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const/4 v2, 0x1

    .line 23
    invoke-direct {v0, p2, v1, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 p2, 0x2

    .line 24
    iput p2, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 25
    iput-object p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 26
    iput-object p4, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 27
    iput-object p5, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 28
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 29
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;[I[I)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v2, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const/4 v3, 0x1

    .line 54
    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v0, 0x2

    .line 55
    iput v0, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 56
    iput-object p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 57
    iput-object p3, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 58
    iput-object p4, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAndroidIcons:[I

    const p2, 0x7f120414

    .line 59
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    const/4 p2, -0x1

    .line 60
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    .line 61
    sget-object p2, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    iput-object p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    const/4 p2, 0x3

    .line 62
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mCacheType:I

    .line 63
    invoke-virtual {v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 64
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;[I[I[I)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v2, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const/4 v3, 0x1

    .line 66
    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 67
    iput v3, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 68
    iput-object p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 69
    iput-object p3, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 70
    iput-object p4, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mToast:[I

    .line 71
    iput-object p5, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAndroidIcons:[I

    const p2, 0x7f12043a

    .line 72
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    const p2, 0x7f120589

    .line 73
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    .line 74
    sget-object p2, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    iput-object p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    const/4 p2, 0x2

    .line 75
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mCacheType:I

    .line 76
    invoke-virtual {v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 77
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getSettingsMap()Ljava/util/HashMap;
    .locals 53

    const/16 v0, 0x5f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SettingsFactory"

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->parseJson(Landroid/content/ContextWrapper;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v32, v8

    goto :goto_0

    :catch_0
    move-exception v0

    move/from16 v32, v8

    const-string v8, "Error: JSON parsing exception "

    invoke-static {v2, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_PHOTO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->TRUE_FALSE:Ljava/util/List;

    const/4 v13, 0x2

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_VIDEO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MACRO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TILT_SHIFT_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_LONG_EXPOSURE_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_USE_WIDGET_SETTING_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v32 .. v32}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v16

    move-object/from16 v34, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v12, v0, v4, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_VSTAB_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MIRROR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PHOTO_BOOTH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SMART_EIS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MOTION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_AI_GROUP_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SHOW_EXTERNAL_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_GET_FACE_BEAUTY_DATA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_GET_FACE_BEAUTY_DATA_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PERFECT_ME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->EXITED_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v9, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_LAUNCH_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x1

    invoke-static {v12, v0, v9, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_SORT_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v9, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TIMELAPSE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MODE_DRAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_EXIT_CAMERA_AFTER_SUB_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v12, v0, v4, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_EXITED_SUB_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v4, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CHECK_LOCATION_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_LEVELER_STEP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v9, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_NO_LEVELER_CAPTURE_IMAGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v9, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SECOND_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v4, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_REQUEST_DND_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SDCARD_INSERTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SELECT_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_ADJUST_SELECT_COLOR_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION_EDIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SLIDE_SCAN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CONTROL_PANEL_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v9, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI_DUAL_SCREEN_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v9, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SHOW_AI_PERSONAL_COLOR_TONE_PAGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v9, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_DETECT_ALWAYS_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v4, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CTA_PERMISSION_CLICK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v4, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CTA_ALL_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v4, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CTA_BASIC_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v4, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CTA_ADVANCE_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v4, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI_FLIP_TOOLTIP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_VIDEO_DV:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_INTRO_VIDEO_DV:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_LAUNCH_ADOBE_SCAN_APP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_EXTERNAL_DISPLAY_IN_VIDEO_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12, v0, v8, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->SETTINGS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v0, 0x7f120475

    move-object/from16 v35, v2

    const v2, 0x7f120446

    filled-new-array {v0, v2}, [I

    move-result-object v27

    const v13, 0x7f08035a

    filled-new-array {v13, v13}, [I

    move-result-object v28

    const v29, 0x7f1202ed

    const v30, 0x7f120150

    sget-object v31, Lcom/motorola/camera/settings/Setting$UpdateType;->NONE:Lcom/motorola/camera/settings/Setting$UpdateType;

    move-object/from16 v24, v8

    move-object/from16 v22, v12

    move-object/from16 v26, v14

    const/16 v25, 0x2

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v13, v24

    move/from16 v8, v25

    move-object/from16 v25, v26

    move-object/from16 v27, v31

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v0, v2}, [I

    move-result-object v27

    const v12, 0x7f0801cb

    const v14, 0x7f0800b2

    filled-new-array {v12, v14}, [I

    move-result-object v28

    const v29, 0x7f120544

    const v30, 0x7f120544

    move-object/from16 v24, v4

    const/16 v25, 0x1

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v14, v24

    move/from16 v0, v25

    move-object/from16 v4, v26

    move-object/from16 v12, v31

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v26, Lcom/motorola/camera/settings/SettingsManager;->AUTO_ON_TORCH_OFF:Ljava/util/List;

    const v8, 0x7f120413

    const v2, 0x7f120412

    const v0, 0x7f120411

    move-object/from16 v37, v5

    const v5, 0x7f120439

    filled-new-array {v0, v8, v5, v2}, [I

    move-result-object v27

    const v2, 0x7f0801df

    const v8, 0x7f0801de

    const v0, 0x7f0801dd

    const v5, 0x7f0801e2

    filled-new-array {v0, v2, v5, v8}, [I

    move-result-object v28

    const v29, 0x7f120410

    const v30, 0x7f120447

    const/16 v25, 0x4

    sget-object v31, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    move-object/from16 v24, v9

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v8, v22

    move-object/from16 v2, v24

    move-object/from16 v0, v26

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AUTO_ON_OFF:Ljava/util/List;

    move-object/from16 v38, v6

    const/4 v6, 0x1

    invoke-static {v8, v9, v2, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->HW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9, v2, v6, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v0, 0x7f120438

    const v6, 0x7f120439

    const v9, 0x7f120411

    filled-new-array {v9, v6, v0}, [I

    move-result-object v27

    const v0, 0x7f0801e0

    const v6, 0x7f0801e1

    const v9, 0x7f0801e2

    filled-new-array {v0, v9, v6}, [I

    move-result-object v28

    const v29, 0x7f120437

    move-object/from16 v26, v5

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v0, v26

    sget-object v20, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->ON_OFF:Ljava/util/List;

    const v5, 0x7f12040c

    const v6, 0x7f12040b

    filled-new-array {v5, v6}, [I

    move-result-object v24

    const v5, 0x7f12006e

    const v6, 0x7f1205ce

    filled-new-array {v5, v6}, [I

    move-result-object v5

    const v6, 0x7f0801a2

    const v8, 0x7f0801a1

    filled-new-array {v6, v8}, [I

    move-result-object v26

    const v27, 0x7f12040a

    const v28, 0x7f12040a

    move-object/from16 v19, v22

    move/from16 v22, v25

    move-object/from16 v29, v31

    move-object/from16 v25, v5

    invoke-static/range {v19 .. v29}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v8, v19

    move-object/from16 v5, v21

    move/from16 v6, v22

    move-object/from16 v39, v23

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v6, 0x1

    invoke-static {v8, v9, v14, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LL_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9, v14, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v17, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v20, Lcom/motorola/camera/settings/SettingsManager;->HDR_VALUES:Ljava/util/List;

    const v6, 0x7f12044d

    const v9, 0x7f12044c

    move-object/from16 v41, v2

    const v2, 0x7f12044a

    filled-new-array {v2, v6, v9}, [I

    move-result-object v21

    const v2, 0x7f1205f0

    const v6, 0x7f1205ee

    const v9, 0x7f1205ef

    filled-new-array {v9, v2, v6}, [I

    move-result-object v22

    const v2, 0x7f0801fa

    const v6, 0x7f0801f9

    const v9, 0x7f0801f8

    filled-new-array {v9, v2, v6}, [I

    move-result-object v23

    const v24, 0x7f12044b

    const v25, 0x7f12044b

    move-object/from16 v16, v8

    move-object/from16 v26, v31

    const/16 v19, 0x2

    invoke-static/range {v16 .. v26}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move/from16 v2, v19

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->HDR_WRAPPER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v6, v13, v2, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_HDR_SETTING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v6, v14, v2, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_OIS_BOKEH_FORCE_SETTING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v6, v13, v2, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v6, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v9, Lcom/motorola/camera/AppFeatures$Feature;->CLI_DUAL_SCREEN_DEFAULT_PREVIEW_REVIEW_ON:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v6, v6, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v6, Ljava/util/EnumSet;

    invoke-virtual {v6, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    move-result v9

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v26, v4

    const v2, 0x7f120446

    const v4, 0x7f120475

    filled-new-array {v4, v2}, [I

    move-result-object v17

    move-object/from16 v22, v8

    move-object/from16 v27, v12

    move-object/from16 v25, v26

    move-object/from16 v26, v17

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-nez v6, :cond_0

    if-nez v9, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    move/from16 v8, v32

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    filled-new-array {v4, v2}, [I

    move-result-object v26

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v4, v25

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-wide v11, v10

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_VALUES:Ljava/util/List;

    const v2, 0x7f120299

    const v9, 0x7f12029a

    move-object/from16 v17, v4

    const v4, 0x7f120298

    filled-new-array {v4, v2, v9}, [I

    move-result-object v2

    move-wide/from16 v42, v11

    move-object/from16 v9, v18

    move-object/from16 v12, v27

    move/from16 v4, v32

    move-object v11, v2

    move-object v2, v7

    move-object/from16 v7, v22

    invoke-static/range {v7 .. v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    sget-object v26, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_VALUES:Ljava/util/List;

    const v6, 0x7f1205d7

    const v7, 0x7f1205d5

    const v8, 0x7f1205d4

    filled-new-array {v6, v7, v8}, [I

    move-result-object v27

    filled-new-array {v6, v7, v8}, [I

    move-result-object v28

    const v6, 0x7f0801c7

    const v7, 0x7f0801c9

    const v8, 0x7f0801c8

    filled-new-array {v8, v6, v7}, [I

    move-result-object v29

    const v30, 0x7f12029e

    move-object/from16 v32, v31

    const v31, 0x7f12029e

    const/16 v25, 0x2

    invoke-static/range {v22 .. v32}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move/from16 v8, v25

    move-object/from16 v31, v32

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->CARTOON_SHUFFLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v6, 0x7f120446

    const v7, 0x7f120475

    filled-new-array {v7, v6}, [I

    move-result-object v26

    move-object/from16 v27, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v17

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->CARTOON_SELECT:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v7, v6}, [I

    move-result-object v26

    move-object/from16 v24, v14

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->CARTOON_SELECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v25, Lcom/motorola/camera/settings/SettingsManager;->CARTOON_SELECT_TYPES:Ljava/util/List;

    const/16 v26, 0x0

    move-object/from16 v24, v41

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v10, v22

    move-object/from16 v9, v24

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->TIPS_TO_SHOW_QUANTITY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v11, v9, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->TIPS_UNREAD_BADGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v11, v2, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v7, v6}, [I

    move-result-object v26

    move-object/from16 v24, v13

    move-object/from16 v25, v17

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v11, v25

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK_FIRST_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v12, v13, v8, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v7, v6}, [I

    move-result-object v26

    move-object/from16 v24, v14

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v7, v22

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_STYLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v10, "WatermarkBasic"

    invoke-static {v7, v6, v10, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_OPTION_BASIC:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_WATERMARK_OPTION_BASIC:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    invoke-static {v7, v6, v10, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_OPTION_LABEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_WATERMARK_OPTION_LABEL:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    invoke-static {v7, v6, v10, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_OPTION_FRAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_WATERMARK_OPTION_FRAME:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    invoke-static {v7, v6, v10, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_OPTION_ENDORSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_WATERMARK_OPTION_ENDORSE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    invoke-static {v7, v6, v10, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_SIGNATURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v14, ""

    invoke-static {v7, v6, v14, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v6, 0x7f120446

    const v10, 0x7f120475

    filled-new-array {v10, v6}, [I

    move-result-object v26

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v10, v6}, [I

    move-result-object v26

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v10, v6}, [I

    move-result-object v26

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v12, v27

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v6, 0x7f120421

    const v7, 0x7f120420

    filled-new-array {v6, v7}, [I

    move-result-object v27

    const v6, 0x7f08027f

    const v7, 0x7f08027e

    filled-new-array {v6, v7}, [I

    move-result-object v28

    const v29, 0x7f12029f

    const v30, 0x7f12029f

    move-object/from16 v26, v25

    move/from16 v25, v8

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move/from16 v16, v25

    move-object/from16 v25, v26

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_TAP_ANYWHERE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v6, 0x7f120446

    const v7, 0x7f120475

    filled-new-array {v7, v6}, [I

    move-result-object v26

    move-object/from16 v27, v12

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v8, v24

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v31, v27

    filled-new-array {v7, v6}, [I

    move-result-object v27

    const v6, 0x7f0801f2

    filled-new-array {v6, v6}, [I

    move-result-object v28

    const v29, 0x7f120554

    const v30, 0x7f120554

    move-object/from16 v24, v13

    move-object/from16 v26, v25

    move/from16 v25, v16

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v11, v26

    move-object/from16 v27, v31

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->AI_LENS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v25, Lcom/motorola/camera/settings/SettingsManager;->AI_LENS_VALUES:Ljava/util/List;

    const v10, 0x7f1202a3

    const v12, 0x7f120278

    const v13, 0x7f1202ac

    filled-new-array {v13, v10, v12}, [I

    move-result-object v26

    move-object/from16 v24, v9

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v10, v22

    move-object/from16 v13, v24

    move-object/from16 v12, v27

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAMSDefaultValue()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v10, v9, v4, v7, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO_SUPPORT_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v9, 0x1

    invoke-static {v10, v4, v13, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v4, 0x7f120409

    const v9, 0x7f120408

    filled-new-array {v4, v9}, [I

    move-result-object v27

    const v7, 0x7f0801a4

    const v4, 0x7f0801a3

    filled-new-array {v7, v4}, [I

    move-result-object v28

    const v29, 0x7f12027f

    const v30, 0x7f12027f

    move-object/from16 v24, v8

    move-object/from16 v26, v11

    move-object/from16 v31, v32

    const/16 v25, 0x2

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move/from16 v19, v25

    move-object/from16 v25, v26

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    const v4, 0x7f120409

    filled-new-array {v4, v9}, [I

    move-result-object v27

    const v4, 0x7f0801f1

    const v7, 0x7f0801f0

    filled-new-array {v4, v7}, [I

    move-result-object v28

    const v29, 0x7f12027d

    const v30, 0x7f12027d

    move/from16 v25, v19

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result v10

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->AIR_GESTURE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    if-eqz v10, :cond_1

    move-object/from16 v26, v11

    :goto_2
    const v10, 0x7f120409

    goto :goto_3

    :cond_1
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->FALSE_LIST:Ljava/util/List;

    move-object/from16 v26, v10

    goto :goto_2

    :goto_3
    filled-new-array {v10, v9}, [I

    move-result-object v27

    filled-new-array {v4, v7}, [I

    move-result-object v28

    const v29, 0x7f1202c8

    const v30, 0x7f1202c8

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move/from16 v4, v25

    move-object/from16 v32, v31

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v7, 0x7f120446

    const v10, 0x7f120475

    filled-new-array {v10, v7}, [I

    move-result-object v26

    move-object/from16 v24, v8

    move-object/from16 v25, v11

    move-object/from16 v27, v12

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v31, v27

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->STORAGE_VALUES:Ljava/util/List;

    const v7, 0x7f12051c

    const v9, 0x7f12051b

    filled-new-array {v7, v9}, [I

    move-result-object v11

    sget-object v12, Lcom/motorola/camera/settings/Setting$UpdateType;->PERMISSION_CHECK:Lcom/motorola/camera/settings/Setting$UpdateType;

    move-object v9, v5

    move-object/from16 v41, v13

    move-object/from16 v7, v22

    move-object/from16 v13, v24

    move-object/from16 v5, v25

    invoke-static/range {v7 .. v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v21, v9

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v8, v13, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_DOC_POINT:Landroid/graphics/Point;

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v8, 0x7f120449

    const v9, 0x7f120448

    filled-new-array {v8, v9}, [I

    move-result-object v26

    sget-object v27, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_ROI:Lcom/motorola/camera/settings/Setting$UpdateType;

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v11, v25

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v8, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v9, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v8, v6, v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    invoke-virtual {v8, v11}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    invoke-virtual {v8}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v5, 0x7f120446

    const v8, 0x7f120475

    filled-new-array {v8, v5}, [I

    move-result-object v26

    move-object/from16 v27, v31

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v8, v5}, [I

    move-result-object v26

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v5, v25

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v26, Lcom/motorola/camera/settings/SettingsManager;->ALL_TIMER_VALUES:Ljava/util/List;

    const/4 v7, 0x6

    new-array v8, v7, [I

    fill-array-data v8, :array_0

    new-array v9, v7, [I

    fill-array-data v9, :array_1

    const v29, 0x7f120431

    const v30, 0x7f120470

    move-object/from16 v28, v9

    move-object/from16 v24, v41

    const/16 v25, 0x4

    move-object/from16 v27, v8

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move/from16 v40, v25

    move-object/from16 v27, v31

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v26, Lcom/motorola/camera/settings/SettingsManager;->MODE_VALUES:Ljava/util/List;

    const/16 v8, 0x1d

    new-array v8, v8, [I

    fill-array-data v8, :array_2

    const/16 v9, 0x1d

    new-array v9, v9, [I

    fill-array-data v9, :array_3

    const/16 v29, 0x0

    const/16 v30, -0x1

    move/from16 v25, v4

    move-object/from16 v28, v9

    move-object/from16 v27, v8

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v8, v22

    move-object/from16 v4, v24

    move/from16 v9, v25

    move-object/from16 v27, v31

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v12, 0x3e8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8, v11, v12, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_LIST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v11, v14, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_ORDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v11, v14, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    move/from16 v36, v10

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION_VALUES:Ljava/util/List;

    const v11, 0x7f1202c4

    const v12, 0x7f1202c3

    filled-new-array {v11, v12}, [I

    move-result-object v11

    move-object/from16 v16, v14

    move-object/from16 v7, v22

    move-object/from16 v12, v27

    move v14, v9

    move-object/from16 v9, v21

    invoke-static/range {v7 .. v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v9, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v10, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v9, v4, v10}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->DUAL_MODE_VALUES_1:Ljava/util/List;

    invoke-virtual {v9, v10}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    sget-object v10, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_RESTART:Lcom/motorola/camera/settings/Setting$UpdateType;

    invoke-virtual {v9, v10}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v9, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    sget-object v11, Lcom/motorola/camera/VideoFormat;->EMPTY:Lcom/motorola/camera/VideoFormat;

    iget-object v14, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v9, v11, v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x3

    invoke-virtual {v9, v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    invoke-virtual {v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()V

    invoke-virtual {v9, v10}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v9, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    move-object/from16 v41, v4

    iget-object v4, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v9, v11, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    invoke-virtual {v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()V

    invoke-virtual {v9, v10}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v24, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v26, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO_VALUES:Ljava/util/List;

    const/16 v4, 0x12

    new-array v8, v4, [I

    fill-array-data v8, :array_4

    new-array v9, v4, [I

    fill-array-data v9, :array_5

    const v29, 0x7f120407

    const v30, 0x7f120407

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v31, v32

    move/from16 v25, v40

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v32, v24

    move/from16 v8, v25

    move-object/from16 v40, v26

    move-object/from16 v7, v31

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v4, 0x7f120475

    const v9, 0x7f120446

    filled-new-array {v4, v9}, [I

    move-result-object v27

    const v4, 0x7f0801e9

    filled-new-array {v4, v4}, [I

    move-result-object v28

    const v29, 0x7f12056d

    const v30, 0x7f12056c

    move-object/from16 v26, v5

    move-object/from16 v31, v12

    move-object/from16 v24, v13

    move/from16 v25, v36

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v36, v24

    move/from16 v44, v25

    move-object/from16 v4, v26

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_VALUES:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v24, v13

    check-cast v24, Landroid/util/Size;

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v13

    new-instance v8, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/4 v14, 0x6

    invoke-direct {v8, v14}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v14, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v14, v8, v9}, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v13, v14}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v27

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v13, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/4 v14, 0x7

    invoke-direct {v13, v14}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v9, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda1;

    const/4 v14, 0x1

    invoke-direct {v9, v13, v14}, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v28

    const v29, 0x7f120428

    const v30, 0x7f120428

    move-object/from16 v26, v5

    move-object/from16 v31, v7

    const/16 v25, 0x2

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v7, v22

    move/from16 v8, v25

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DV:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v8, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DV_AUTO_RECORD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v8, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DV_START_DELAY:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v25, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DV_START_VALUES:Ljava/util/List;

    const v9, 0x7f1204c9

    const v13, 0x7f1204c8

    filled-new-array {v9, v13}, [I

    move-result-object v26

    move-object/from16 v27, v12

    move-object/from16 v24, v41

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v26, v5

    move-object/from16 v20, v27

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    move/from16 v25, v8

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FRAME_RATE_VALUES:Ljava/util/List;

    const/4 v7, 0x7

    new-array v9, v7, [I

    fill-array-data v9, :array_6

    move-object v12, v10

    new-array v10, v7, [I

    fill-array-data v10, :array_7

    move-object v7, v11

    const v11, 0x7f120418

    move-object v13, v12

    const v12, 0x7f120418

    move-object/from16 v17, v4

    move-object/from16 v49, v6

    move-object/from16 v50, v7

    move-object/from16 v51, v13

    move-object/from16 v4, v22

    move-object/from16 v14, v26

    move-object/from16 v13, v31

    move-object/from16 v47, v34

    move-object/from16 v48, v37

    move-object/from16 v6, v38

    const/4 v7, 0x4

    move-object/from16 v34, v3

    const/16 v3, 0x12

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    new-array v5, v3, [I

    fill-array-data v5, :array_9

    const v29, 0x7f120407

    const v30, 0x7f120407

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v24, v32

    move-object/from16 v26, v40

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x0

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v24, v5

    check-cast v24, Landroid/util/Size;

    invoke-interface {v14}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v9, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/4 v10, 0x6

    invoke-direct {v9, v10}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v10, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v10, v9, v4}, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v5, v10}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v27

    invoke-interface {v14}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v9, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/4 v10, 0x7

    invoke-direct {v9, v10}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v11, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda1;

    const/4 v12, 0x1

    invoke-direct {v11, v9, v12}, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v5, v11}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v28

    const v29, 0x7f120428

    const v30, 0x7f120428

    move-object/from16 v26, v14

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-array v9, v10, [I

    fill-array-data v9, :array_a

    new-array v11, v10, [I

    fill-array-data v11, :array_b

    new-array v10, v10, [I

    fill-array-data v10, :array_c

    move/from16 v33, v12

    const v12, 0x7f120418

    const v13, 0x7f120418

    move-object v3, v11

    move-object v11, v10

    move-object v10, v3

    move-object/from16 v52, v16

    move-object/from16 v4, v22

    move/from16 v3, v25

    move-object/from16 v14, v31

    invoke-static/range {v4 .. v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v32, v14

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v4, 0x7f120475

    const v5, 0x7f120446

    filled-new-array {v4, v5}, [I

    move-result-object v27

    const v4, 0x7f080270

    const v5, 0x7f080272

    filled-new-array {v4, v5}, [I

    move-result-object v28

    const v29, 0x7f12056d

    const v30, 0x7f12056c

    move-object/from16 v26, v17

    move-object/from16 v31, v20

    move-object/from16 v24, v36

    move/from16 v25, v44

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v8, v22

    move-object/from16 v13, v24

    move/from16 v36, v25

    move-object/from16 v11, v26

    move-object/from16 v12, v31

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_TIMELAPSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v5, 0x40f00000    # 7.5f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->TIMELAPSE_VALUES:Ljava/util/List;

    invoke-static {v8, v4, v5, v7, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v20, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_ON_OFF:Ljava/util/List;

    const v4, 0x7f12042e

    const v5, 0x7f120430

    const v9, 0x7f12042f

    filled-new-array {v4, v5, v9}, [I

    move-result-object v24

    const v4, 0x7f1205fa

    const v10, 0x7f1205f9

    const v14, 0x7f12060c

    filled-new-array {v14, v4, v10}, [I

    move-result-object v25

    const v4, 0x7f080292

    const v10, 0x7f080294

    const v7, 0x7f080293

    filled-new-array {v4, v10, v7}, [I

    move-result-object v26

    const v27, 0x7f12042d

    const v28, 0x7f12057f

    move-object/from16 v19, v8

    move-object/from16 v29, v32

    move/from16 v22, v36

    invoke-static/range {v19 .. v29}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v8, v21

    move-object/from16 v31, v29

    move-object/from16 v22, v19

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v5, v9}, [I

    move-result-object v27

    const v7, 0x7f12060b

    filled-new-array {v14, v7}, [I

    move-result-object v28

    const v7, 0x7f080291

    filled-new-array {v4, v7}, [I

    move-result-object v29

    const v30, 0x7f12042e

    move-object/from16 v32, v31

    const v31, 0x7f12042e

    move/from16 v25, v36

    move-object/from16 v26, v39

    move-object/from16 v24, v41

    invoke-static/range {v22 .. v32}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v7, v22

    move-object/from16 v4, v24

    move-object/from16 v14, v26

    move-object/from16 v31, v32

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_SUPPORT:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v5, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v9, v10, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v5, v4, v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    invoke-virtual {v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()V

    invoke-virtual {v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    invoke-virtual {v7, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v5, v8, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v9, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v10, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    move-object/from16 v3, v50

    invoke-direct {v9, v3, v10}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-virtual {v9, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    invoke-virtual {v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()V

    move-object/from16 v3, v51

    invoke-virtual {v9, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v5, 0x7f12043c

    const v9, 0x7f12043b

    filled-new-array {v5, v9}, [I

    move-result-object v25

    const v5, 0x7f120605

    const v9, 0x7f120604

    filled-new-array {v5, v9}, [I

    move-result-object v26

    const v5, 0x7f0802a5

    const v9, 0x7f0802a3

    filled-new-array {v5, v9}, [I

    move-result-object v27

    move-object/from16 v24, v14

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;[I[I[I)V

    move-object/from16 v26, v24

    sget-object v17, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v20, Lcom/motorola/camera/settings/SettingsManager;->MIC_INTERNAL_EXTERNAL_ON_OFF:Ljava/util/List;

    const v5, 0x7f120451

    const v7, 0x7f120450

    const v9, 0x7f12044e

    const v10, 0x7f120441

    filled-new-array {v9, v10, v5, v7}, [I

    move-result-object v21

    const v5, 0x7f080217

    const v7, 0x7f080218

    const v9, 0x7f080219

    filled-new-array {v9, v5, v9, v7}, [I

    move-result-object v5

    const v23, 0x7f120426

    const v24, 0x7f12055a

    move-object/from16 v25, v12

    move-object/from16 v16, v22

    const/16 v19, 0x2

    move-object/from16 v22, v5

    invoke-static/range {v16 .. v25}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v7, v16

    move-object/from16 v9, v18

    move/from16 v14, v19

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->EXTERNAL_MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->MIC_INTERNAL_EXTERNAL:Ljava/util/List;

    invoke-static {v7, v5, v8, v14, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v20, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v5, 0x7f12042f

    const v10, 0x7f120430

    filled-new-array {v10, v5}, [I

    move-result-object v24

    const v5, 0x7f080293

    const v10, 0x7f080294

    filled-new-array {v10, v5}, [I

    move-result-object v25

    move-object/from16 v23, v26

    const v26, 0x7f12042d

    const v27, 0x7f12057f

    move-object/from16 v19, v7

    move-object/from16 v21, v8

    move/from16 v22, v14

    move-object/from16 v28, v31

    invoke-static/range {v19 .. v28}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v5, v21

    move-object/from16 v14, v23

    move-object/from16 v8, v28

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_BLUETOOTH_RECORDING:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v6, 0x1

    invoke-static {v7, v10, v13, v6, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->DTFE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v39, v14

    move-object/from16 v6, v49

    const/4 v14, 0x2

    invoke-static {v7, v10, v6, v14, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->ROI_WEIGHT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v17, 0x2bc

    move-object/from16 v18, v15

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v7, v10, v15, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_ROI_RECT:Ljava/util/List;

    move-object/from16 v17, v1

    const/4 v15, 0x0

    new-array v1, v15, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {v14, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v14, 0x1

    invoke-static {v7, v10, v1, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AF_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_OPENED_APP:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v10, v47

    const/4 v14, 0x2

    invoke-static {v7, v1, v10, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TOTAL_MEDIA_CAPTURED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TIMES_SHOWN_FEEDBACK_POPUP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->LAST_TIME_SHOWN_FEEDBACK_POPUP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v10, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TIMES_OPENED_PHOTO_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->HAS_SHOWN_SIGNATURE_STYLE_TOAST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v13, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_EULA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v13, v14, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_LOCATION:Landroid/location/Location;

    move/from16 v46, v15

    const/4 v15, 0x1

    invoke-static {v7, v1, v14, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v4, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AF_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v14, v52

    invoke-static {v7, v1, v14, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AWB_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v14, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->LENS_SHADING_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v14, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QUICK_CAPTURE_CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->QUICK_CAPTURE_CAMERA_FACING_VALUES:Ljava/util/List;

    const/4 v10, 0x2

    invoke-static {v7, v1, v5, v10, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QUICK_VIEW_DISPLAY_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->QUICK_VIEW_DISPLAY_MODE_VALUES:Ljava/util/List;

    invoke-static {v7, v1, v4, v10, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->OUTPUT_YUV_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v15, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_SIZE:Landroid/util/Size;

    iget-object v14, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v15, v10, v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x3

    invoke-virtual {v15, v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    invoke-virtual {v15}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()V

    invoke-virtual {v15, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v15}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v15

    invoke-virtual {v7, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->INPUT_YUV_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v15, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    move-object/from16 v19, v0

    iget-object v0, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v15, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    invoke-virtual {v15}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()V

    invoke-virtual {v15, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v15}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->OUTPUT_SURFACE_TEX_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v15, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v1, v10, v15}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v15, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v1, v10, v15}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_REAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v10, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Lcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v10, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Lcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v10, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Lcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_PREVIOUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v14, 0x1

    invoke-static {v7, v0, v10, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v10, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE_DEBUG_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v13, v14, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v24, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    const/16 v0, 0x12

    new-array v1, v0, [I

    fill-array-data v1, :array_d

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    const v29, 0x7f120407

    const v30, 0x7f120407

    move-object/from16 v28, v0

    move-object/from16 v27, v1

    move-object/from16 v22, v7

    move-object/from16 v31, v8

    move-object/from16 v26, v40

    const/16 v25, 0x2

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move/from16 v8, v25

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEBUG_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v13, v14, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEFAULT:Landroid/util/Range;

    invoke-static {v7, v0, v1, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_FRNT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v1, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_BACK_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v1, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v14, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v1, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x3

    invoke-virtual {v1, v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    const v15, 0x7f120565

    iput v15, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    invoke-virtual {v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION_PRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ALWAYS_AWARE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AA_OCR_VALUES:Ljava/util/List;

    invoke-static {v7, v0, v5, v8, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v13, v8, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_CALC_FPS_FRAME_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v14, 0x1

    invoke-static {v7, v0, v1, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MEMORY_STATS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v13, v8, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v1, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-direct {v1}, Lcom/motorola/camera/settings/CaptureIntent;-><init>()V

    invoke-static {v7, v0, v1, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACING_VALUES:Ljava/util/List;

    invoke-static {v7, v0, v2, v8, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v1, v48

    invoke-static {v7, v0, v1, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_UI_ANALYTICS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v1, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v1, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT:Landroid/graphics/Rect;

    invoke-static {v7, v0, v15, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION_SLV:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT_SLV:Landroid/graphics/Rect;

    invoke-static {v7, v0, v15, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_SEGMENT_DEFAULT:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-static {v7, v0, v15, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->COMPOSITION_GUIDE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->COMPOSITION_GUIDE_VALUES:Ljava/util/List;

    invoke-static {v7, v0, v4, v8, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->POST_CAPTURE_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v14, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const/16 v45, 0x3

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v20, v12

    iget-object v12, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v14, v15, v12}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->POST_CAPTURE_REVIEW_VALUES:Ljava/util/List;

    invoke-virtual {v14, v12}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    invoke-virtual {v14, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v12

    invoke-virtual {v7, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_REPROC:Z

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->REPROC_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v7, v12, v0, v8, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_MCF:Z

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v7, v12, v0, v8, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK0:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v4, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK1:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v4, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK2:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v4, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v4, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGAD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v12, "0"

    invoke-static {v7, v0, v12, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGML_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v4, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v14, 0x1

    invoke-static {v7, v0, v13, v14, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_SP_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v13, v14, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ACTIVITY_TIMEOUT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v6, v8, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MS_AVG_CAPTURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v12, 0x14d

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x3

    invoke-static {v7, v0, v12, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->OIS:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v12, v19

    invoke-static {v7, v0, v9, v14, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v6, v8, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->JPEG_QUALITY:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v15, v17

    invoke-static {v7, v0, v15, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->THUMBNAIL_JPEG_QUALITY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v15, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DUMP_PREVIEW_ON_SHUTTER_UP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v13, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE_VALUES:Ljava/util/List;

    invoke-static {v7, v0, v4, v14, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MANUAL_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v15, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v8, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    move-object/from16 v17, v9

    move-object/from16 v9, v18

    invoke-direct {v15, v9, v8}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    const v8, 0x7f120564

    iput v8, v15, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    invoke-virtual {v15}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v8, v52

    const/4 v14, 0x1

    invoke-static {v7, v0, v8, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->shouldFaceBeautyDefaultAuto()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    sget-object v26, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_VALUES:Ljava/util/List;

    const v0, 0x7f120443

    const v14, 0x7f120444

    const v15, 0x7f120442

    filled-new-array {v15, v0, v14}, [I

    move-result-object v27

    const v0, 0x7f0801b0

    const v14, 0x7f0801af

    const v15, 0x7f0801ac

    filled-new-array {v15, v0, v14}, [I

    move-result-object v28

    const v29, 0x7f12040f

    const v30, 0x7f120551

    const/16 v25, 0x2

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move/from16 v0, v25

    move-object/from16 v14, v31

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const/16 v18, 0x4

    move-object/from16 v36, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v18, v12

    iget-object v12, v15, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v0, v9, v12}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL_VALUES:Ljava/util/List;

    invoke-virtual {v0, v12}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    invoke-virtual {v0, v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v7, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v12, 0x2

    invoke-static {v7, v0, v6, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_SMOOTH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_WHITE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_TAN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_RED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_NATURAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_EYE_ENLARGE_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_NOSE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FIRST_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v9, 0x2

    invoke-static {v7, v0, v6, v9, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_DEFAULT_FEATURES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v8, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v12, "V8"

    invoke-static {v7, v0, v12, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CURRENT_PHYSICAL_CAMERA_ID:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v8, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UPDATE_DEFAULT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v13, v9, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_SMART_ADJUSTMENT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v9, 0x3

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v9, 0x4

    invoke-static {v7, v0, v13, v9, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TOGGLE_DISPLAY_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v13, v9, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v13, v9, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v12, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const v15, 0x3e99999a    # 0.3f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    iget-object v3, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v12, v15, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL_VALUES:Ljava/util/List;

    invoke-virtual {v12, v3}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    invoke-virtual {v12}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_SHOW_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v9, 0x2

    invoke-static {v7, v0, v13, v9, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v9, 0x1

    invoke-static {v7, v0, v1, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_BLUR_RESULT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_EFFECT_TYPE:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    invoke-static {v7, v0, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_SAVE_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->MINIATURE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v0, 0x7f120446

    const v3, 0x7f120475

    filled-new-array {v3, v0}, [I

    move-result-object v26

    move-object/from16 v25, v11

    move-object/from16 v24, v13

    move-object/from16 v27, v20

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MINIATURE_BOKEH_PARAMS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_MINIATURE_BOKEH_PARAMS:Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;

    invoke-static {v7, v0, v3, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CUTOUT_DEFAULT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v9, 0x2

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_FV_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_WIDE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_ST_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_CU_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v2, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x0

    const/4 v15, 0x1

    invoke-static {v7, v0, v3, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_STATES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v4, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v11, 0x4

    invoke-static {v7, v0, v2, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v5, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v1, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getPortraitLensDefaultOption()Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_FOCAL_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7, v11, v0, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v0, 0x7f120446

    const v11, 0x7f120475

    filled-new-array {v11, v0}, [I

    move-result-object v26

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v11, v25

    move-object/from16 v12, v27

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v15, 0x1f4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v7, v0, v15, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_PIXEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v4, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v15, 0x1

    invoke-static {v7, v0, v3, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v6, v9, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MOT_SCENE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v6, v9, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MOT_SMILE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v6, v9, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MOT_DOC_SCAN_CAPTURE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v6, v9, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MOT_SLIDE_SCAN_CAPTURE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v6, v9, v11}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v6, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v9, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v6, v5, v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE_VALUES:Ljava/util/List;

    invoke-virtual {v6, v11}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    const v11, 0x7f120569

    iput v11, v6, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    invoke-virtual {v6, v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v6}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE_KELVIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v6, 0x8fc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7, v0, v6, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v6, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v11, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v6, v4, v11}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ISO_ALLOW_VALUES:Ljava/util/List;

    invoke-virtual {v6, v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    const/16 v9, 0x9

    new-array v9, v9, [I

    fill-array-data v9, :array_f

    iput-object v9, v6, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    const v9, 0x7f120566

    iput v9, v6, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    invoke-virtual {v6, v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v6}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v6, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v9, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    move-object/from16 v11, v47

    invoke-direct {v6, v11, v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME_VALUES:Ljava/util/List;

    invoke-virtual {v6, v9}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    const/16 v9, 0x22

    new-array v9, v9, [I

    fill-array-data v9, :array_10

    iput-object v9, v6, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    const v9, 0x7f120568

    iput v9, v6, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    invoke-virtual {v6, v14}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v6}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->NATIVE_MAX_EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v9, 0x2

    invoke-static {v7, v0, v11, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v6, "Auto"

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->PANO_FOCUS_MODE_VALUES:Ljava/util/List;

    const/4 v15, 0x1

    invoke-static {v7, v0, v6, v15, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->SENSOR_MODE_VALUES:Ljava/util/List;

    const-string v9, "GyroScope"

    invoke-static {v7, v0, v9, v15, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_END_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v15, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_PROJECTION_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v6, "Equirectangular"

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->PROJECTION_MODE_VALUES:Ljava/util/List;

    invoke-static {v7, v0, v6, v15, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_MOTION_DETECTION_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v6, "HighQuality"

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->MOTION_DETECTION_MODE_VALUES:Ljava/util/List;

    invoke-static {v7, v0, v6, v15, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v10, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_CAPTURE_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v6, "REPEATING_REQUEST"

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->PANO_CAPTURE_MODE_VALUES:Ljava/util/List;

    invoke-static {v7, v0, v6, v15, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_ROUND_END:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->TRUE_FALSE:Ljava/util/List;

    invoke-static {v7, v0, v13, v15, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_MAKE_360_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7, v0, v9, v15, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_SAVE_OUTPUT_BY_ENGINE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v15, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_DUMP_INPUT_IMAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v7, v0, v13, v3, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_GOAL_ANGLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v3, 0x43e10000    # 450.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GOAL_ANGLE_VALUES:Ljava/util/List;

    invoke-static {v7, v0, v3, v15, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_ASPECT_RATION_GAIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v3, 0x3f88f5c3    # 1.07f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO_GAIN_VALUES:Ljava/util/List;

    invoke-static {v7, v0, v3, v15, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v10, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v10, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_DUMP_INPUT_IMAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v10, 0x2

    invoke-static {v7, v0, v3, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_ANTI_FLICKER_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v13, v39

    invoke-static {v7, v0, v4, v15, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_EX_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v3, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE_SHOW_SLAVE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v3, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SUPPORT_ALL_SIZES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v3, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BACK_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v15, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v7, v0, v15, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v10, 0x1

    invoke-static {v7, v0, v15, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FRONT_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v15, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v7, v0, v15, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ULTRA_WIDE_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->ULTRA_WIDE_FACING_VALUES:Ljava/util/List;

    const/4 v10, 0x3

    invoke-static {v7, v0, v5, v10, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_STOP_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v10, 0x2

    invoke-static {v7, v0, v4, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSIONS:Ljava/util/List;

    const/4 v10, 0x1

    invoke-static {v7, v0, v4, v10, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QCFA_REMOSAIC_FINISHED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v3, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v0, 0x7f120403

    const v10, 0x7f120402

    filled-new-array {v0, v10}, [I

    move-result-object v27

    const v0, 0x7f1205ff

    const v10, 0x7f1205fc

    filled-new-array {v0, v10}, [I

    move-result-object v28

    const v0, 0x7f080191

    const v10, 0x7f080190

    filled-new-array {v0, v10}, [I

    move-result-object v29

    const v30, 0x7f120400

    const v31, 0x7f12055c

    move-object/from16 v24, v4

    move-object/from16 v26, v13

    move-object/from16 v32, v14

    const/16 v25, 0x2

    invoke-static/range {v22 .. v32}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move/from16 v10, v25

    move-object/from16 v14, v26

    move-object/from16 v31, v32

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO_BUFFER_DURATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-wide/16 v21, 0xbb8

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v7, v0, v13, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO_AUDIO_TIMESTAMP_OFFSET:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_ACTIVE_PHOTO_KEEP_VIDEO_FILES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v3, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v13, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v15, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v13, v8, v15}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType(I)V

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->MLRN_GROUND_TRUTHS_VALUES:Ljava/util/List;

    invoke-virtual {v13, v15}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    move-object/from16 v15, v51

    invoke-virtual {v13, v15}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v13}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    invoke-virtual {v7, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v3, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v13, v18

    invoke-static {v7, v0, v4, v10, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v4, v10, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_COMPOSITION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v4, v10, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMATS:Ljava/util/List;

    const v14, 0x7f120417

    const v15, 0x7f120416

    const v10, 0x7f120415

    filled-new-array {v10, v14, v15}, [I

    move-result-object v10

    const v14, 0x7f0801e5

    const v15, 0x7f0801e6

    move-object/from16 v27, v12

    const v12, 0x7f0801e3

    filled-new-array {v12, v14, v15}, [I

    move-result-object v12

    invoke-static {v7, v0, v13, v10, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;[I[I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v10, 0x2

    invoke-static {v7, v0, v3, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_AUTO_CAPTURE_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v3, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_GROUPSHOT_JUMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v3, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v12, "NONE"

    invoke-static {v7, v0, v12, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_FOOD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_PET_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_PET_STILL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_TODDLER_STILL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_TODDLER_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_HOLIDAY_LIGHTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_SUNSET_SUNRISE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_MOON:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_FIREWORKS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_TEXT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_BLUESKY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_FLOWER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_GREENERY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_AI_SCENE_ADJUSTMENT_SHOW_PILL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v3, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_NIGHT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_GROUPSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_AIGROUPSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_NONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0, v9, v10, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomDefaultOff()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    const v0, 0x7f120446

    const v12, 0x7f120475

    filled-new-array {v12, v0}, [I

    move-result-object v26

    move-object/from16 v25, v6

    move-object/from16 v22, v7

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_CANCELLATION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v12, v0}, [I

    move-result-object v26

    move-object/from16 v24, v3

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v12, v27

    const/4 v3, 0x2

    new-array v0, v3, [I

    const v6, 0x7f0801f4

    aput v6, v0, v46

    const v6, 0x7f0801f5

    aput v6, v0, v33

    sget-object v6, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v7, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_HDR10_PLUS:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v6, v6, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v6, Ljava/util/EnumSet;

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-array v0, v3, [I

    const v3, 0x7f0801f6

    aput v3, v0, v46

    const v3, 0x7f0801f7

    aput v3, v0, v33

    const v3, 0x7f1202d1

    :goto_4
    move-object/from16 v29, v0

    move/from16 v30, v3

    goto :goto_5

    :cond_2
    const v3, 0x7f1202d0

    goto :goto_4

    :goto_5
    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v0, 0x7f120424

    const v3, 0x7f120423

    filled-new-array {v0, v3}, [I

    move-result-object v27

    const v0, 0x7f120601

    const v3, 0x7f1205fe

    filled-new-array {v0, v3}, [I

    move-result-object v28

    move-object/from16 v32, v31

    move/from16 v31, v30

    move-object/from16 v26, v25

    move/from16 v25, v10

    invoke-static/range {v22 .. v32}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v0, v24

    move-object/from16 v25, v26

    move-object/from16 v31, v32

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DOLBY_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v3, 0x7f12040e

    const v6, 0x7f12040d

    filled-new-array {v3, v6}, [I

    move-result-object v27

    const v3, 0x7f120600

    const v6, 0x7f1205fd

    filled-new-array {v3, v6}, [I

    move-result-object v28

    const v3, 0x7f0801d2

    filled-new-array {v3, v3}, [I

    move-result-object v29

    const v30, 0x7f1202cd

    const v31, 0x7f1202cd

    const/16 v25, 0x4

    move-object/from16 v24, v9

    invoke-static/range {v22 .. v32}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v7, v22

    move-object/from16 v3, v24

    move-object/from16 v25, v26

    move-object/from16 v31, v32

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DOLBY_VISION_PROFILE_VALUE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-wide/16 v13, -0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v14, 0x1

    invoke-static {v7, v6, v9, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DOLBY_VISION_ENCODER_SUPPORT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v6, v0, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_COLOR_SPACE_VALUE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v9, 0x0

    invoke-static {v7, v6, v9, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->MTK_VIDEO_SHDR_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v6, 0x7f120446

    const v9, 0x7f120475

    filled-new-array {v9, v6}, [I

    move-result-object v26

    move-object/from16 v24, v0

    move-object/from16 v27, v12

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v6, v24

    move-object/from16 v0, v25

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FPS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v3, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_CAMERA_ID_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_CAMERA_ID:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v13, "7"

    invoke-static {v7, v9, v13, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUMP_CAPTURE_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUMP_FACE_DETECT_INFO_PER_FRAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->BG_SERVICE_PROCESSING:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->ON_OFF:Ljava/util/List;

    invoke-static {v7, v9, v4, v10, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_BG_SERVICE_EXPEDITED_FIRST_JOB:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->SEQ_ID:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v4, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ON_LAUNCH_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v14, Lcom/motorola/camera/launch/OnLaunchAction;->NONE:Lcom/motorola/camera/launch/OnLaunchAction;

    const/4 v15, 0x1

    invoke-static {v7, v9, v14, v15}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_LAST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v11, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v11, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v4, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->QCFA_DEBUG_FORCE_SINGLE_SESSION_REMOSAIC_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_INITIAL_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_INITIAL_PREVIEW_MAX_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v14, v38

    invoke-static {v7, v9, v14, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->CACHE_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v8, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->CACHE_SHORTCUT_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v8, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG_CACHE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v8, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->CACHE_VERSION_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v8, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->QCFA_DEBUG_IGNORE_SHOT_CONDITIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->QCFA_DEBUG_FORCE_FOUR_STREAMS_QCFA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->LEAK_CANARY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->LIMIT_SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_ALWAYS_LOG_SHUTTER_LAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DISABLE_BG_SERVICE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DISPLAY_FLASH_PROCESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v14, 0x1

    invoke-static {v7, v9, v6, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_TURN_ON_LUX:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v14, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v14, v14, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashLuxRange:[F

    aget v14, v14, v46

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v7, v9, v14, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_TURN_OFF_LUX:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v14, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v14, v14, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashLuxRange:[F

    aget v14, v14, v33

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v7, v9, v14, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v14, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v7, v9, v14, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v14, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v14, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_PREVIEW_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v5, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_LAYOUT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v4, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_CAMERA_GROUP_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v5, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v14, 0x1

    invoke-static {v7, v9, v1, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v1, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v1, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v1, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v1, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v1, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH_PIP_WINDOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v3, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->BACK_KNIFE_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v2, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SELFIE_ANIMATION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v3, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SELFIE_ANIMATION_SCALE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v4, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MIGRATE_CAMERA_ID_TO_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v3, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_TIMES_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v4, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_LAST_AVAILABLE_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v4, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_INSTALLED_NEW_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_LAST_CHECK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v11, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_DOWNLOAD_STARTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MTK_SMVR_MODE_AVAILABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SUPER_SLOW_MOTION_KEEP_FILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MTK_QUICK_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v3, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->LAST_DEBUG_UI_SETTING_SEARCH_QUERY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v8, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_PHOTO_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v9, "Original"

    invoke-static {v7, v1, v9, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_VIDEO_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v9, "Original"

    invoke-static {v7, v1, v9, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_TETRAS_PORTRAIT_REPAIR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v3, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_BST_DSLR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v3, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GLOBAL_SYSTEM_SETTING_TRANSITION_ANIMATION_SCALE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v9, -0x40800000    # -1.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v7, v1, v9, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SHDR_MANUAL_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SHDR_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_VIDEO_HDR_STATE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DOLBY_FW_DISPLAY_DEFAULT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v14, 0x1

    invoke-static {v7, v1, v6, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_VSTAB_IHC_3_OPTIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->HIGH_RES_IN_PHOTO_MODE_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->HIGH_RES_SWITCH_PHOTO_REMINDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->SMART_HIGH_RES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/Util;->isPrcBuild()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartHighResDefaultOff()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_6

    :cond_3
    move/from16 v33, v46

    :goto_6
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const v1, 0x7f12042c

    const v9, 0x7f12042b

    filled-new-array {v1, v9}, [I

    move-result-object v27

    const v1, 0x7f1205df

    const v9, 0x7f1205de

    filled-new-array {v1, v9}, [I

    move-result-object v28

    const v1, 0x7f080290

    const v9, 0x7f08028f

    filled-new-array {v1, v9}, [I

    move-result-object v29

    const v30, 0x7f12042a

    move-object/from16 v32, v31

    const v31, 0x7f12042a

    move-object/from16 v22, v7

    move/from16 v25, v10

    move-object/from16 v26, v13

    invoke-static/range {v22 .. v32}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v1, v26

    move-object/from16 v31, v32

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_PREVIEW_ERROR_DELAY_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_ERROR_DELAY_TIMES:Ljava/util/List;

    move/from16 v9, v46

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v24, v9

    check-cast v24, Ljava/lang/Integer;

    const/16 v26, 0x0

    move-object/from16 v25, v7

    move-object/from16 v27, v12

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v7, v22

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->GLOBAL_SESSION_UUID:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v11, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SMOOTH_ZOOM_JUMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_TO_HIGH_RES_RG_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v11, v36

    invoke-static {v7, v9, v11, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_TO_NORMAL_RES_RG_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v11, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_ISP_HIDL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_OFFLINE_POSTPROC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_RAW_HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DISABLE_BRIGHTNESS_BUMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v9, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v20, Lcom/motorola/camera/settings/SettingsManager;->ADOBE_AUTO_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v9, 0x7f120405

    const v12, 0x7f120404

    filled-new-array {v9, v12}, [I

    move-result-object v24

    const v9, 0x7f120472

    const v12, 0x7f120471

    filled-new-array {v9, v12}, [I

    move-result-object v25

    const v9, 0x7f080194

    const v12, 0x7f080193

    filled-new-array {v9, v12}, [I

    move-result-object v26

    move-object/from16 v12, v27

    const v27, 0x7f120405

    const v28, 0x7f120404

    move-object/from16 v23, v1

    move-object/from16 v21, v5

    move-object/from16 v19, v7

    move/from16 v22, v10

    move-object/from16 v29, v12

    invoke-static/range {v19 .. v29}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move/from16 v25, v22

    move-object/from16 v22, v19

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI_PERSONAL_COLOR_TONE:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0801ff

    goto :goto_7

    :cond_4
    const v1, 0x7f080201

    :goto_7
    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->IMAGE_PREFERENCE_SELECTOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v26, Lcom/motorola/camera/settings/SettingsManager;->IMAGE_PREFERENCE_SELECTOR_VALUES:Ljava/util/List;

    const v7, 0x7f120406

    const v9, 0x7f120406

    const v10, 0x7f120427

    const v13, 0x7f120422

    filled-new-array {v10, v13, v7, v9}, [I

    move-result-object v27

    const v7, 0x7f0801fc

    const v9, 0x7f0801fe

    const v10, 0x7f080200

    filled-new-array {v1, v10, v7, v9}, [I

    move-result-object v28

    const v29, 0x7f120214

    const v30, 0x7f120214

    move-object/from16 v24, v4

    invoke-static/range {v22 .. v31}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    move-object/from16 v7, v22

    move/from16 v10, v25

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_AUTO_ENHANCE_KEEP_FILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_AI_PERSONAL_COLOR_TONE_KEEP_FILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_PERSONAL_COLOR_TONE_CUSTOMIZE_MODULE_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v2, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_PERSONAL_COLOR_TONE_CUSTOMIZE_MODULE_TRAINING_PROGRESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v4, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_PERSONAL_COLOR_TONE_MODULE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v4, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_PERSONAL_COLOR_TONE_MOO_PAGE_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v4, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PENDING_MEDIA_URIS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_PENDING_URIS:[Ljava/lang/String;

    invoke-static {v7, v1, v2, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->NOTIFICATION_PERMISSION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->LONG_EXPOSURE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v4, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->LP_WATER_SHUTTER_SPEED:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v2, v34

    invoke-static {v7, v1, v2, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->LP_TRAFFIC_SHUTTER_SPEED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v2, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->LP_LIGHT_SHUTTER_SPEED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v2, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->LP_STAR_SHUTTER_SPEED:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v9, v17

    invoke-static {v7, v1, v9, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CMS_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v3, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOTION_CAPTURE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PROFILE_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v5, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_GALLERY_SHOW_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v3, v10, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->AI_GROUP_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v5, 0x7f120446

    const v9, 0x7f120475

    filled-new-array {v9, v5}, [I

    move-result-object v26

    move-object/from16 v25, v0

    move-object/from16 v24, v6

    move-object/from16 v27, v12

    invoke-static/range {v22 .. v27}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_HW_FLICLER_DETECT_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v3, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v8, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PERFECT_ME_PROGRESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v14, 0x1

    invoke-static {v7, v1, v11, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PERFECT_ME_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v4, v14}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PERFECT_ME_SLIDER_USE_TIMES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v4, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TRIPOD_PREVIEW_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v1, v6, v14, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSettingsMap dur:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, v35

    move-wide/from16 v11, v42

    invoke-static {v11, v12, v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5
    return-object v7

    nop

    :array_0
    .array-data 4
        0x7f120433
        0x7f120433
        0x7f120434
        0x7f120435
        0x7f120432
        0x7f120436
    .end array-data

    :array_1
    .array-data 4
        0x7f080298
        0x7f080298
        0x7f080299
        0x7f08029a
        0x7f080297
        0x7f08029b
    .end array-data

    :array_2
    .array-data 4
        0x7f12045e
        0x7f12046c
        0x7f12045f
        0x7f12046e
        0x7f120465
        0x7f120467
        0x7f120464
        0x7f120462
        0x7f120459
        0x7f12046b
        0x7f120462
        0x7f12045d
        0x7f120455
        0x7f120458
        0x7f12045d
        0x7f12046d
        0x7f120458
        0x7f120469
        0x7f120457
        0x7f120466
        0x7f120456
        0x7f12045b
        0x7f120461
        0x7f12046a
        0x7f120453
        0x7f120455
        0x7f12046c
        0x7f120452
        0x7f120460
    .end array-data

    :array_3
    .array-data 4
        0x7f080230
        0x7f08023f
        0x7f08022e
        0x7f080229
        0x7f08023c
        0x7f08023b
        0x7f080238
        0x7f080235
        0x7f080224
        0x7f08023e
        0x7f080235
        0x7f08022d
        0x7f080225
        0x7f080239
        0x7f08022d
        0x7f080237
        0x7f080239
        0x7f080360
        0x7f080228
        0x7f08023a
        0x7f080227
        0x7f08022c
        0x7f080231
        0x7f08023d
        0x7f08022a
        0x7f080225
        0x7f08023f
        0x7f080222
        0x7f08022f
    .end array-data

    :array_4
    .array-data 4
        0x7f1203be
        0x7f1203ba
        0x7f1203bb
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203ba
        0x7f1203ba
        0x7f1203bb
        0x7f1203bc
        0x7f1203b8
        0x7f1203b9
        0x7f1203bf
    .end array-data

    :array_5
    .array-data 4
        0x7f08025c
        0x7f08025e
        0x7f080260
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f08025f
        0x7f08025f
        0x7f080260
        0x7f080261
        0x7f08025b
        0x7f08025d
        0x7f08025c
    .end array-data

    :array_6
    .array-data 4
        0x7f12041a
        0x7f12041c
        0x7f12041e
        0x7f120419
        0x7f12041b
        0x7f12041d
        0x7f12041f
    .end array-data

    :array_7
    .array-data 4
        0x7f0801e9
        0x7f0801eb
        0x7f0801ed
        0x7f0801e8
        0x7f0801ea
        0x7f0801ec
        0x7f0801ee
    .end array-data

    :array_8
    .array-data 4
        0x7f1203be
        0x7f1203ba
        0x7f1203bb
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203ba
        0x7f1203ba
        0x7f1203bb
        0x7f1203bc
        0x7f1203b8
        0x7f1203b9
        0x7f1203bf
    .end array-data

    :array_9
    .array-data 4
        0x7f08025c
        0x7f08025e
        0x7f080260
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f08025f
        0x7f08025f
        0x7f080260
        0x7f080261
        0x7f08025b
        0x7f08025d
        0x7f08025c
    .end array-data

    :array_a
    .array-data 4
        0x7f12041a
        0x7f12041c
        0x7f12041e
        0x7f120419
        0x7f12041b
        0x7f12041d
        0x7f12041f
    .end array-data

    :array_b
    .array-data 4
        0x7f12041a
        0x7f12041c
        0x7f12041e
        0x7f1205f1
        0x7f1205f2
        0x7f1205f3
        0x7f1205f4
    .end array-data

    :array_c
    .array-data 4
        0x7f0801e9
        0x7f0801eb
        0x7f0801ed
        0x7f0801e8
        0x7f0801ea
        0x7f0801ec
        0x7f0801ee
    .end array-data

    :array_d
    .array-data 4
        0x7f1203be
        0x7f1203ba
        0x7f1203bb
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203bd
        0x7f1203ba
        0x7f1203ba
        0x7f1203bb
        0x7f1203bc
        0x7f1203b8
        0x7f1203b9
        0x7f1203bf
    .end array-data

    :array_e
    .array-data 4
        0x7f08025c
        0x7f08025e
        0x7f080260
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f080262
        0x7f08025f
        0x7f08025f
        0x7f080260
        0x7f080261
        0x7f08025b
        0x7f08025d
        0x7f08025c
    .end array-data

    :array_f
    .array-data 4
        0x7f1203d0
        0x7f1203fd
        0x7f1203fe
        0x7f1203f8
        0x7f1203fa
        0x7f1203fc
        0x7f1203ff
        0x7f1203f9
        0x7f1203fb
    .end array-data

    :array_10
    .array-data 4
        0x7f1203d0
        0x7f120502
        0x7f1204fd
        0x7f1204fa
        0x7f1204f6
        0x7f1204f2
        0x7f1204ef
        0x7f120503
        0x7f1204ff
        0x7f1204fb
        0x7f1204f7
        0x7f1204f3
        0x7f1204f0
        0x7f120505
        0x7f120501
        0x7f1204fe
        0x7f1204f9
        0x7f1204f5
        0x7f1204f1
        0x7f1204ee
        0x7f120504
        0x7f120500
        0x7f1204fc
        0x7f1204f8
        0x7f1204f4
        0x7f1204ed
        0x7f120506
        0x7f120508
        0x7f120509
        0x7f12050a
        0x7f12050b
        0x7f1204eb
        0x7f1204ec
        0x7f120507
    .end array-data
.end method
