.class public final Lcom/motorola/camera/analytics/PostCaptureMultiShotEvent;
.super Lcom/motorola/camera/analytics/PostCaptureImageEvent;
.source "SourceFile"


# virtual methods
.method public final getFlashMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 0

    const-string p0, "off"

    return-object p0
.end method

.method public final getHdrMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 0

    const-string p0, "off"

    return-object p0
.end method

.method public final postProcessData(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V
    .locals 5

    iget-object v0, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v2, "MULTI_SHOT_COUNT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "BURSTMODEPICS"

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getExposureCompensation(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/Double;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "XPSR"

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->postProcessData(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    return-void
.end method
