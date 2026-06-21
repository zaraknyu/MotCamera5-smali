.class public Lcom/motorola/camera/analytics/PostCaptureImageEvent;
.super Lcom/motorola/camera/analytics/PostCaptureEvent;
.source "SourceFile"


# direct methods
.method public static getModeFromCaptureData(Ljava/util/Map;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    iget p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    return p0
.end method

.method public static populateActivePhotosData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 6

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v1, "ACTIVE_PHOTO_ALLOWED"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "MTNSTAT"

    invoke-virtual {p0, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v1, "ANALYTICS_ACTIVE_PHOTO_VIDDUR"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v4, "ANALYTICS_ACTIVE_PHOTO_SAVED"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v4, "MTNSVD"

    invoke-virtual {p0, v4, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long p1, v2, v0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "MTNVIDDUR"

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static processExifData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 8

    iget-object v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "ExposureMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    const-string v5, "DIS"

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    const-string v5, "HDR"

    goto :goto_0

    :cond_2
    iget v5, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    iget-object v6, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    iget-object v7, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5, v6, v7, p1}, Lcom/motorola/camera/analytics/LogEvent;->getCaptureMode(ILcom/motorola/camera/ShotType;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-eq v1, v4, :cond_3

    if-ne v1, v3, :cond_4

    :cond_3
    const-string v1, "MODE"

    invoke-virtual {p0, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    iget v3, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSessionId:I

    int-to-long v6, v3

    invoke-virtual {v1, v6, v7, v5}, Lcom/motorola/camera/analytics/AnalyticsHelper;->setShotToShotMode(JLjava/lang/String;)V

    iget-boolean p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDidSwFlashFire:Z

    const-string v1, "FLASHMODE"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "auto"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    const-string p1, "Flash"

    invoke-virtual {v0, v2, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result p1

    const/16 v1, 0x19

    if-ne p1, v1, :cond_7

    move v2, v4

    goto :goto_1

    :cond_6
    move v2, p1

    :cond_7
    :goto_1
    const-string p1, "FLASHFIRED"

    invoke-virtual {p0, p1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "LightSource"

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_9

    if-ne v1, p1, :cond_8

    goto :goto_2

    :cond_8
    const-string v0, "LGHTSRC"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    :goto_2
    return-void
.end method

.method public static processMakerNotes(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 6

    iget-object v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    if-nez v1, :cond_2

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    if-eqz p1, :cond_1

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    sget-object v1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_FD_FACE_BOUNDRY_HEIGHT:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->get(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    sget-object v1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_FD_FACE_BOUNDRY_WIDTH:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->get(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v1, "FACESIZE"

    invoke-virtual {p0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_LUX:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_4

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v2, v4, v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const-string v2, "LUX"

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_2
    iget-object p1, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_AF_STATE:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->get(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    :cond_7
    move-object p1, v0

    goto :goto_3

    :cond_8
    sget-object v2, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->AF_STATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    if-eqz p1, :cond_9

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :try_start_1
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_9
    if-eqz v0, :cond_a

    const-string p1, "FOCDIST"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_a
    return-void
.end method


# virtual methods
.method public getHdrMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 3

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->getModeFromCaptureData(Ljava/util/Map;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    if-eq v1, v0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/analytics/LogEvent;->TAG:Ljava/lang/String;

    const-string v0, "Unexpected hdrMode value: "

    invoke-static {v0, v1, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    return-object p1

    :cond_2
    const-string p0, "auto"

    return-object p0

    :cond_3
    const-string p0, "on"

    return-object p0

    :cond_4
    :goto_1
    const-string p0, "off"

    return-object p0
.end method

.method public final populateOptionalImageValues(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 10

    iget-object p3, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, p3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    iget-object v1, p3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v2, "TIMER_CHECKIN"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "TIMERVAL"

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    invoke-static {v0, p3}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->getModeFromCaptureData(Ljava/util/Map;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v2, :cond_a

    iget-object v2, p3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    invoke-virtual {p0, p3}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getFocusMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I

    move-result p0

    if-ne v5, p0, :cond_4

    iget-object p0, p3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0, v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MANUAL_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v7, v6

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    div-float/2addr v7, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v7, p0

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_1

    :cond_2
    const/16 p0, 0x64

    :goto_1
    if-ne v4, p0, :cond_3

    goto :goto_2

    :cond_3
    const-string v6, "MANFOCUS"

    invoke-virtual {p2, v6, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    :goto_2
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE_KELVIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz p0, :cond_6

    if-eqz v6, :cond_6

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    const-string v6, "WHTBLNC"

    invoke-virtual {p2, v6, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    :goto_3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double p0, v8, v6

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    const-string p0, "XPSRTIME"

    invoke-virtual {p2, p0, v6, v7}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :goto_4
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_8

    move p0, v4

    :cond_8
    if-ne v4, p0, :cond_9

    goto :goto_5

    :cond_9
    const-string v2, "ISOSPEED"

    invoke-virtual {p2, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_a
    :goto_5
    invoke-static {p3}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getExposureCompensation(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/Double;

    move-result-object p0

    const-wide/16 v6, 0x0

    if-nez p0, :cond_b

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpl-double v2, v6, v8

    if-nez v2, :cond_c

    goto :goto_6

    :cond_c
    const-string v2, "XPSR"

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p2, v2, v6, v7}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :goto_6
    move-object p0, p3

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-nez v2, :cond_d

    goto :goto_7

    :cond_d
    const-string v6, "FILEFORMAT"

    invoke-virtual {p2, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_7
    iget-object v2, p3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v6, "ANALYTICS_PHOTO_SOLID_TIME"

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v8, v6

    if-nez v2, :cond_e

    goto :goto_8

    :cond_e
    const-string v2, "PHTOSLD"

    invoke-virtual {p2, v2, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_f
    :goto_8
    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "ANALYTICS_DOC_SCAN_TOAST"

    invoke-virtual {p1, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v6, "DOCTOAST"

    invoke-virtual {p2, v6, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_10
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string v2, "MCFSCMD"

    invoke-virtual {p2, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_11
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_13

    const-string v2, "IS_CLI_DISPLAY"

    invoke-virtual {p1, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    iget v2, p3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    if-nez v2, :cond_13

    :cond_12
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    const-string v2, "SPMIRR"

    invoke-virtual {p2, v2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCliMirrorSupported()Z

    move-result p0

    if-eqz p0, :cond_14

    const/16 p0, 0x2f

    if-ne v1, p0, :cond_14

    iget-object p0, p3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v2, "ANALYTICS_MIRROR_EFFECT_NAME"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    const-string v2, "MIREFFCT"

    invoke-virtual {p2, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object p0, p3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v2, "ANALYTICS_AUTO_ENHANCE_STATE"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-ne v4, p0, :cond_15

    goto :goto_9

    :cond_15
    const-string v2, "ENHANCE"

    invoke-virtual {p2, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_9
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_16

    if-nez v1, :cond_16

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const-string v1, "AUTONV"

    invoke-virtual {p2, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorToneFeatureEnabled()Z

    move-result p0

    const-string v1, "AICTSEL"

    if-eqz p0, :cond_1a

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->IMAGE_PREFERENCE_SELECTOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_17

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_a

    :cond_17
    move p0, v4

    :goto_a
    if-eqz p0, :cond_19

    const/4 v3, 0x2

    if-eq p0, v3, :cond_18

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    move v3, v4

    goto :goto_b

    :cond_18
    move v3, v5

    :cond_19
    :goto_b
    invoke-virtual {p2, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c

    :cond_1a
    invoke-virtual {p2, v1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1b
    :goto_c
    iget-wide v0, p3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mTotalCaptureTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p3, "CAPTURETIME"

    invoke-virtual {p2, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result p0

    if-eqz p0, :cond_1c

    const-string p0, "ANALYTICS_LONG_EXPOSURE_SCENE"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p3, "LEXPSCN"

    invoke-virtual {p2, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ANALYTICS_LONG_EXPOSURE_SHUTTER_TIME"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string p0, "LEXPSHTT"

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "ANALYTICS_LONG_EXPOSURE_STOP_TYPE"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    const-string p1, "LEXPSTOP"

    invoke-virtual {p2, p1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1c
    return-void
.end method

.method public postProcessData(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V
    .locals 4

    check-cast p3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-eqz p3, :cond_5

    iget-object v0, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v2, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "FLASHFIRED"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    const/16 v3, 0x29

    if-ne v1, v3, :cond_1

    invoke-static {p2, p3}, Lcom/motorola/camera/analytics/PostCaptureEvent;->populateDualCaptureData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->populateOptionalImageValues(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    invoke-static {p2, p3}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->populateActivePhotosData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    invoke-static {p2, p3}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->processExifData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    iget-object p0, p3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p2, p3}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->processMakerNotes(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->getModeFromCaptureData(Ljava/util/Map;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I

    move-result p0

    if-nez p0, :cond_5

    iget p0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownCount:I

    const-string p1, "D_CNT"

    invoke-virtual {p2, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-wide p0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownDuration:J

    const-wide/32 v1, 0xea60

    cmp-long p3, p0, v1

    if-lez p3, :cond_4

    move-wide p0, v1

    :cond_4
    const-string p3, "D_DUR"

    invoke-virtual {p2, p3, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget p0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownJobs:I

    const-string p1, "D_JOB"

    invoke-virtual {p2, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "PostCaptureImageEvent"

    const-string p2, "Exception in postProcessData"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_0
    return-void
.end method
