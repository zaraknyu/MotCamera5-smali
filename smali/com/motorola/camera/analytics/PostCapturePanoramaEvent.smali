.class public final Lcom/motorola/camera/analytics/PostCapturePanoramaEvent;
.super Lcom/motorola/camera/analytics/PostCaptureEvent;
.source "SourceFile"


# virtual methods
.method public final getFlashMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 0

    const-string p0, "off"

    return-object p0
.end method

.method public final getFocusMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final postProcessData(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V
    .locals 4

    iget-object p0, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string p3, "PANO_FAILURE"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const-string v1, "PANFAIL"

    invoke-virtual {p2, v1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "PANO_CANCELED"

    invoke-virtual {p1, p3, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const-string v0, "PANCANCEL"

    invoke-virtual {p2, v0, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "PROCESSING_SAVE_TIME"

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "PANSAVETIME"

    invoke-virtual {p2, p1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->PANO_FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p3, p3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Infinity"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, -0x1

    if-eqz p1, :cond_1

    const/16 p1, 0x64

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    if-ne p3, p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p3, "MANFOCUS"

    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p1

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSessionId:I

    int-to-long v0, p0

    const-string p0, "MODE"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->setShotToShotMode(JLjava/lang/String;)V

    return-void
.end method
