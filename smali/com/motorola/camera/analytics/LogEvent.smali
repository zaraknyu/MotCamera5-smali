.class public abstract Lcom/motorola/camera/analytics/LogEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "SERVICEMODE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/analytics/LogEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getCameraIdForAnalytics(Ljava/lang/String;Lcom/motorola/camera/settings/CameraType;ZLjava/lang/String;Z)I
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_MONO_ONLY_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_AUX_BAYER_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_AUX_MASTER_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_ACTION_VIDEO_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    sget-object p0, Lcom/motorola/camera/analytics/LogEvent$1;->$SwitchMap$com$motorola$camera$settings$CameraType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw p0

    :pswitch_0
    const/4 p0, -0x1

    return p0

    :pswitch_1
    if-eqz p2, :cond_2

    const/16 p0, 0xf

    return p0

    :cond_2
    :pswitch_2
    const/16 p0, 0xa

    return p0

    :pswitch_3
    if-eqz p2, :cond_6

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p3, p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraType(Ljava/lang/String;Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne p0, p2, :cond_5

    if-eqz p4, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p3, p0, v0, p1, v0}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(Ljava/lang/String;Lcom/motorola/camera/settings/CameraType;ZLjava/lang/String;Z)I

    move-result p0

    return p0

    :cond_6
    const/16 p0, 0xb

    return p0

    :pswitch_4
    const/16 p0, 0x8

    return p0

    :goto_0
    :pswitch_5
    const/16 p0, 0x9

    return p0

    :pswitch_6
    const/4 p0, 0x7

    return p0

    :goto_1
    :pswitch_7
    return v0

    :pswitch_8
    if-eqz p2, :cond_7

    const/16 p0, 0xe

    return p0

    :cond_7
    :pswitch_9
    const/4 p0, 0x0

    return p0

    :pswitch_a
    if-eqz p2, :cond_a

    if-nez p3, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {p3, p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraType(Ljava/lang/String;Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_2

    :cond_9
    invoke-static {p3, p0, v0, p1, v0}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(Ljava/lang/String;Lcom/motorola/camera/settings/CameraType;ZLjava/lang/String;Z)I

    move-result p0

    return p0

    :pswitch_b
    if-eqz p2, :cond_a

    const/16 p0, 0xc

    return p0

    :pswitch_c
    if-eqz p2, :cond_a

    const/16 p0, 0xd

    return p0

    :cond_a
    :goto_2
    :pswitch_d
    const/4 p0, 0x5

    return p0

    :cond_b
    :goto_3
    :pswitch_e
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getCaptureMode(ILcom/motorola/camera/ShotType;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 3

    .line 8
    sget-object v0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    if-ne p1, v0, :cond_13

    const/4 p2, 0x6

    if-ne p0, p2, :cond_0

    .line 9
    const-string p0, "SS_DEPTH"

    return-object p0

    :cond_0
    const/16 p2, 0x10

    if-ne p0, p2, :cond_1

    .line 10
    const-string p0, "SS_SEGMENTATION"

    return-object p0

    :cond_1
    const/16 p2, 0x12

    if-ne p0, p2, :cond_2

    .line 11
    const-string p0, "SS_SINGLE_BOKEH"

    return-object p0

    .line 12
    :cond_2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 13
    const-string p0, "SS_PRO"

    return-object p0

    :cond_3
    const/16 p2, 0xc

    if-ne p0, p2, :cond_4

    .line 14
    const-string p0, "SS_SPOT_COLOR"

    return-object p0

    :cond_4
    const/16 p2, 0x18

    if-eq p0, p2, :cond_12

    const/16 p2, 0x1f

    if-ne p0, p2, :cond_5

    goto :goto_1

    :cond_5
    const/16 p2, 0x1d

    if-eq p0, p2, :cond_11

    const/16 p2, 0x23

    if-ne p0, p2, :cond_6

    goto :goto_0

    :cond_6
    const/16 p2, 0x27

    if-ne p0, p2, :cond_7

    .line 15
    const-string p0, "DOC"

    return-object p0

    :cond_7
    const/16 p2, 0x28

    if-ne p0, p2, :cond_8

    .line 16
    const-string p0, "SLIDE"

    return-object p0

    :cond_8
    const/16 p2, 0x29

    if-ne p0, p2, :cond_9

    .line 17
    const-string p0, "PHOTO_DUAL"

    return-object p0

    :cond_9
    const/16 p2, 0x30

    if-ne p0, p2, :cond_a

    .line 18
    const-string p0, "BOOTH"

    return-object p0

    :cond_a
    const/16 p2, 0x2f

    if-ne p0, p2, :cond_b

    .line 19
    const-string p0, "MIRROR"

    return-object p0

    :cond_b
    const/16 p2, 0x31

    if-ne p0, p2, :cond_c

    .line 20
    const-string p0, "ARC_LONG_EXPOSURE"

    return-object p0

    :cond_c
    const/16 p2, 0x33

    if-ne p0, p2, :cond_d

    .line 21
    const-string p0, "ADOBE_SCAN"

    return-object p0

    :cond_d
    const/16 p2, 0x32

    if-ne p0, p2, :cond_e

    .line 22
    const-string p0, "TILT_SHIFT"

    return-object p0

    .line 23
    :cond_e
    iget-object p2, p3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string p3, "ANALYTICS_ACTION_SHOT"

    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 24
    const-string p0, "ACTION_SHOT"

    return-object p0

    :cond_f
    const/16 p2, 0x35

    if-ne p0, p2, :cond_10

    .line 25
    const-string p0, "AI_GROUP_PHOTO"

    return-object p0

    :cond_10
    const/16 p2, 0x37

    if-ne p0, p2, :cond_1e

    .line 26
    const-string p0, "PERFECT_ME"

    return-object p0

    .line 27
    :cond_11
    :goto_0
    const-string p0, "SS_HIGH_MP"

    return-object p0

    .line 28
    :cond_12
    :goto_1
    const-string p0, "SS_NIGHT_VISION"

    return-object p0

    .line 29
    :cond_13
    sget-object v0, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne p1, v0, :cond_14

    .line 30
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 31
    const-string p0, "MS_PRO"

    return-object p0

    .line 32
    :cond_14
    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    if-ne p1, v0, :cond_1d

    const/4 v0, 0x3

    if-ne p0, v0, :cond_15

    .line 33
    const-string p0, "CAMCORDER_SLOWMO"

    return-object p0

    :cond_15
    const/16 v0, 0xd

    if-ne p0, v0, :cond_16

    .line 34
    const-string p0, "CAMCORDER_TIMELAPSE"

    return-object p0

    :cond_16
    const/16 v0, 0x22

    if-ne p0, v0, :cond_17

    .line 35
    const-string p0, "CAMCORDER_DEPTH"

    return-object p0

    :cond_17
    const/16 v0, 0x24

    if-ne p0, v0, :cond_18

    .line 36
    const-string p0, "CAMCORDER_SELECT_COLOR"

    return-object p0

    :cond_18
    const/16 v0, 0x25

    if-ne p0, v0, :cond_19

    .line 37
    const-string p0, "VIDEO_FACE"

    return-object p0

    :cond_19
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_1a

    .line 38
    const-string p0, "VIDEO_PORTRAIT"

    return-object p0

    :cond_1a
    const/16 v0, 0x26

    if-ne p0, v0, :cond_1b

    .line 39
    const-string p0, "VIDEO_DUAL"

    return-object p0

    .line 40
    :cond_1b
    iget-object v0, p3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1c

    .line 41
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 42
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 43
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 45
    const-string p0, "VIDEO_NV"

    return-object p0

    .line 46
    :cond_1c
    iget-object p2, p3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string p3, "ANALYTICS_VIDEO_DV_POSTURE"

    .line 47
    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-ne p0, v1, :cond_1e

    if-eqz p2, :cond_1e

    .line 48
    const-string p0, "VIDEO_DV"

    return-object p0

    .line 49
    :cond_1d
    sget-object p0, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    if-ne p1, p0, :cond_1e

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 50
    const-string p0, "SS_GROUP_SELFIE"

    return-object p0

    .line 51
    :cond_1e
    invoke-static {p1}, Lcom/motorola/camera/analytics/LogEvent;->getCaptureMode(Lcom/motorola/camera/ShotType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCaptureMode(Lcom/motorola/camera/ShotType;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/analytics/LogEvent$1;->$SwitchMap$com$motorola$camera$ShotType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 2
    const-string p0, "SINGLESHOT"

    return-object p0

    .line 3
    :cond_0
    const-string p0, "UHD"

    return-object p0

    .line 4
    :cond_1
    const-string p0, "SLOW_MOTION"

    return-object p0

    .line 5
    :cond_2
    const-string p0, "CAMCORDER"

    return-object p0

    .line 6
    :cond_3
    const-string p0, "PANORAMA"

    return-object p0

    .line 7
    :cond_4
    const-string p0, "MULTISHOT"

    return-object p0
.end method

.method public static getCurrentCameraIdForAnalytics()I
    .locals 5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(Ljava/lang/String;Lcom/motorola/camera/settings/CameraType;ZLjava/lang/String;Z)I

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract addData(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroid/os/Bundle;Ljava/lang/Object;)V
.end method

.method public abstract getEventType()I
.end method

.method public abstract getEventVersion()Ljava/lang/String;
.end method

.method public getSessionSeqId(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/Object;)J
    .locals 0

    const-string p0, "SEQID"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final logEvent(Landroidx/work/impl/DefaultRunnableScheduler;Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SEQID"

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/LogEvent;->getSessionSeqId(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/Object;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "APKVER"

    const v2, 0x98a8f4

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, p2, v0, p3}, Lcom/motorola/camera/analytics/LogEvent;->addData(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroid/os/Bundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/analytics/LogEvent;->getEventType()I

    move-result p2

    invoke-virtual {p0}, Lcom/motorola/camera/analytics/LogEvent;->getEventVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/motorola/camera/analytics/AnalyticsService$EventRunnable;

    invoke-direct {p3, p0, p2, v0}, Lcom/motorola/camera/analytics/AnalyticsService$EventRunnable;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    iget-object p0, p1, Landroidx/work/impl/DefaultRunnableScheduler;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
