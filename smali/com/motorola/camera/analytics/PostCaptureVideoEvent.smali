.class public final Lcom/motorola/camera/analytics/PostCaptureVideoEvent;
.super Lcom/motorola/camera/analytics/PostCaptureEvent;
.source "SourceFile"


# direct methods
.method public static getVideoFormat(Ljava/util/Map;)Lcom/motorola/camera/VideoFormat;
    .locals 4

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/VideoFormat;

    iget-object v1, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/motorola/camera/VideoFormat;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/motorola/camera/VideoFormat;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/motorola/camera/VideoFormat;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance p0, Lcom/motorola/camera/VideoFormat;

    invoke-direct {p0}, Lcom/motorola/camera/VideoFormat;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final getCapturedResolution(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 0

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    invoke-static {p0}, Lcom/motorola/camera/analytics/PostCaptureVideoEvent;->getVideoFormat(Ljava/util/Map;)Lcom/motorola/camera/VideoFormat;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFlashMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 0

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string p1, "ANALYTICS_FLASHMODE"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "auto"

    return-object p0

    :cond_1
    const-string/jumbo p0, "torch"

    return-object p0

    :cond_2
    const-string p0, "off"

    return-object p0
.end method

.method public final getFocusMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getZoomValue(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I
    .locals 0

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string p1, "ANALYTICS_ZOOM"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final postProcessData(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V
    .locals 18

    move-object/from16 v0, p2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, p3

    check-cast v3, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    iget-object v4, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v10, v10, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    if-eqz v10, :cond_0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v12, :cond_0

    move v10, v12

    goto :goto_0

    :cond_0
    move v10, v1

    :goto_0
    const-string v11, "SAVE_TIME"

    const-wide/16 v13, 0x0

    move-object/from16 v16, v8

    invoke-virtual {v5, v11, v13, v14}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v11, "SVTIME"

    invoke-virtual {v0, v11, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, v3, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-virtual {v3}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->getVideoDuration()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v13, v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v7, "VIDLNGTH"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v0, v7, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :goto_1
    const-string v3, "SNAPSHOT_COUNT"

    invoke-virtual {v5, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v7, "VIDEOSNAPSHOTS"

    invoke-virtual {v0, v7, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v7, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v8, v16

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v11, -0x1

    if-eqz v7, :cond_7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "SSMTOGGLE"

    invoke-virtual {v0, v7, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz v10, :cond_7

    const-string v7, "ANALYTICS_SSMACTION"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    if-nez v7, :cond_3

    :goto_3
    move v7, v11

    goto :goto_4

    :cond_3
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_6

    if-eq v7, v12, :cond_5

    if-eq v7, v8, :cond_4

    goto :goto_3

    :cond_4
    move v7, v8

    goto :goto_4

    :cond_5
    move v7, v12

    goto :goto_4

    :cond_6
    move v7, v1

    :goto_4
    const-string v9, "SSMACTION"

    invoke-virtual {v0, v9, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "ANALYTICS_SSMEDIT"

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "SSMEDIT"

    invoke-virtual {v0, v9, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v7, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    const-string v9, "ANALYTICS_EXPOSURE"

    invoke-virtual {v5, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getExposureCompensation(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v7

    const-wide/16 v9, 0x0

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v9, v9, v13

    if-nez v9, :cond_8

    goto :goto_5

    :cond_8
    const-string v9, "XPSR"

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v0, v9, v13, v14}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :goto_5
    iget-object v7, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    invoke-static {v7}, Lcom/motorola/camera/analytics/PostCaptureVideoEvent;->getVideoFormat(Ljava/util/Map;)Lcom/motorola/camera/VideoFormat;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v9, v7

    const-string v7, "FPS"

    invoke-virtual {v0, v7, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v7, v7, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v6}, Lcom/motorola/camera/analytics/PostCaptureVideoEvent;->getVideoFormat(Ljava/util/Map;)Lcom/motorola/camera/VideoFormat;

    move-result-object v7

    iget-boolean v7, v7, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    if-eqz v7, :cond_9

    move v7, v12

    goto :goto_6

    :cond_9
    move v7, v1

    :goto_6
    const-string v9, "HEVC"

    invoke-virtual {v0, v9, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v7, "INITIAL_LUX"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v7

    float-to-double v9, v7

    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v7, v13, v9

    if-nez v7, :cond_a

    goto :goto_7

    :cond_a
    const-string v7, "LUX"

    invoke-virtual {v0, v7, v9, v10}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :goto_7
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v7, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_b

    iget-object v7, v7, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v9, "MIC"

    invoke-virtual {v0, v9, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_b
    const/16 v7, 0x26

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static/range {p2 .. p3}, Lcom/motorola/camera/analytics/PostCaptureEvent;->populateDualCaptureData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    :cond_c
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoStabilizationAvailable()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_d

    move-object v3, v2

    :cond_d
    const-string v7, "VSTAB"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v7, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_e
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_11

    sget-object v7, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v9, Lcom/motorola/camera/AppFeatures$Feature;->AUDIO_ZOOM:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v7, v7, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v7, Ljava/util/EnumSet;

    invoke-virtual {v7, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "ANALYTICS_AUDIO_ZOOM"

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    move v3, v8

    goto :goto_8

    :cond_f
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v12

    goto :goto_8

    :cond_10
    move v3, v1

    :goto_8
    const-string v7, "AUDIOZM"

    invoke-virtual {v0, v7, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_11
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v7, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_PORTRAIT:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v3, v3, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v3, Ljava/util/EnumSet;

    invoke-virtual {v3, v7}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "VDPORT"

    if-eqz v3, :cond_12

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    :try_start_0
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL_VALUES:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v7, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/motorola/camera/analytics/LogEvent;->TAG:Ljava/lang/String;

    const-string v9, "Portrait Level format is not valid, sending default value"

    invoke-static {v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v7, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9

    :cond_12
    invoke-virtual {v0, v7, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_13
    :goto_9
    iget-object v3, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    sget-object v7, Lcom/motorola/camera/settings/CameraType;->CLI_ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-eq v3, v7, :cond_15

    sget-object v7, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-ne v3, v7, :cond_14

    goto :goto_a

    :cond_14
    move v3, v11

    goto :goto_b

    :cond_15
    :goto_a
    const-string v3, "ANALYTICS_VIDEO_ZOOM_CHANGES"

    invoke-virtual {v5, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    :goto_b
    const-string v7, "SATZMTAP"

    invoke-virtual {v0, v7, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "IS_CLI_DISPLAY"

    move-object/from16 v7, p1

    invoke-virtual {v7, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDvSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_1a

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DV:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v7, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "ANALYTICS_VIDEO_DV_POSTURE"

    invoke-virtual {v7, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    iget-object v7, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "ANALYTICS_VIDEO_DV_ALIGNMENT"

    invoke-virtual {v7, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v9, "VDVALIGN"

    invoke-virtual {v0, v9, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v4}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getCaptureTrigger(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "DVAT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DV_START_DELAY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v7, v7, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    const/4 v3, 0x4

    goto :goto_c

    :cond_16
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v3, 0x5

    goto :goto_c

    :cond_17
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DV_AUTO_RECORD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x3

    goto :goto_c

    :cond_18
    move v3, v8

    :cond_19
    :goto_c
    const-string v7, "VDVSTATE"

    invoke-virtual {v0, v7, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1a
    iget-boolean v3, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDidSwFlashFire:Z

    const-string v7, "FLASHFIRED"

    invoke-virtual {v0, v7, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVision4KSupported()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionFHDSupported()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_d

    :cond_1b
    const/4 v15, 0x3

    goto :goto_10

    :cond_1c
    :goto_d
    const-string v3, "ANALYTICS_VIDEO_NV_SUGGESTION"

    invoke-virtual {v5, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-virtual {v5, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_e

    :cond_1d
    move v3, v11

    :goto_e
    const-string v5, "VDNVSTT"

    if-ne v3, v12, :cond_1e

    const/4 v15, 0x3

    invoke-virtual {v0, v5, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_10

    :cond_1e
    const/4 v15, 0x3

    if-nez v3, :cond_1f

    invoke-virtual {v0, v5, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_10

    :cond_1f
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_20

    goto :goto_f

    :cond_20
    move-object v2, v3

    :goto_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_10
    move-object v2, v4

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-boolean v2, v2, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->mIsHDR10VideoMode:Z

    if-nez v2, :cond_21

    goto :goto_11

    :cond_21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10PlusSupported()Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v8

    goto :goto_11

    :cond_22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Supported()Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v12

    goto :goto_11

    :cond_23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDolbyVisionFeatureSupported()Z

    move-result v3

    if-eqz v3, :cond_24

    iget-boolean v2, v2, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->mIsDolbyVideoMode:Z

    if-eqz v2, :cond_25

    move v1, v15

    goto :goto_11

    :cond_24
    move v1, v11

    :cond_25
    :goto_11
    const-string v2, "VIDEOHDR"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v2, "ANALYTICS_AIR_GESTURE_PAUSE"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v2, "ANALYTICS_AIR_GESTURE_STOP"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v11

    move v11, v1

    move/from16 v1, v17

    goto :goto_12

    :cond_26
    move v1, v11

    :goto_12
    const-string v2, "AIRSTOP"

    invoke-virtual {v0, v2, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "AIRPAUSE"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
