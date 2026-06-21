.class public Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mKpi:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    .line 2
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/CameraRunnable;I)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Ljava/lang/Object;

    return-void

    .line 4
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Ljava/lang/Object;

    return-void

    .line 6
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Ljava/lang/Object;

    return-void

    :pswitch_3
    const/4 p1, 0x0

    const/4 v0, 0x6

    .line 8
    invoke-direct {p0, v0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    iget v0, v1, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->$r8$classId:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    .line 12
    const-string v0, "MODE_DIRECTION"

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    .line 15
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-ne v1, v3, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    move-object/from16 v1, p3

    check-cast v1, Landroid/os/Bundle;

    .line 17
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 18
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_0
    return-void

    .line 20
    :pswitch_0
    const-string v0, "IS_HIGH_RES_AUTO_SWITCH"

    const-string v2, "IS_SHORTCUT_JUMP"

    const-string v4, "IS_MANUAL_JUMP"

    const-string v6, "ORIGIN_CAMERA_TYPE"

    const-string v7, "CAMERA_TYPE"

    const-string v8, "SWITCH_TYPE"

    const-string v9, "DUAL_CAPTURE_CAMERA_TYPE_IS_MASTER"

    const-string v10, "PREVIOUS_ZOOM"

    const-string v11, "ZOOM_SEGMENT"

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 21
    sget-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "USE_CASE"

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-virtual {v13, v14, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 22
    sget-object v13, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v1, v13, :cond_3

    if-eqz p3, :cond_3

    .line 23
    move-object/from16 v13, p3

    check-cast v13, Landroid/os/Bundle;

    .line 24
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v14

    .line 25
    invoke-virtual {v13, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 26
    invoke-virtual {v14, v8, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    :cond_3
    sget-object v8, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v1, v8, :cond_7

    if-eqz p3, :cond_7

    .line 28
    move-object/from16 v1, p3

    check-cast v1, Landroid/os/Bundle;

    .line 29
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v8

    .line 30
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    .line 31
    invoke-virtual {v8, v7, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v7

    .line 33
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .line 34
    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 35
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 36
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    .line 38
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 39
    invoke-virtual {v2, v11, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    .line 41
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    .line 42
    invoke-virtual {v2, v10, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    .line 43
    :cond_4
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 44
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    .line 46
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    .line 47
    invoke-virtual {v2, v11, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 48
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    .line 50
    invoke-virtual {v2, v10, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 51
    :cond_5
    :goto_1
    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 52
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    .line 53
    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 54
    invoke-virtual {v2, v9, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    :cond_6
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 56
    invoke-virtual {v3, v12}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    return-void

    .line 57
    :pswitch_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v2, "SWITCH_CASE"

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 58
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-ne v1, v4, :cond_8

    .line 59
    move-object/from16 v1, p3

    check-cast v1, Landroid/os/Bundle;

    .line 60
    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 61
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_2

    .line 63
    :cond_8
    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_2
    return-void

    .line 64
    :pswitch_2
    const-string v0, "android.intent.extra.durationLimit"

    const-string v5, "android.intent.extra.sizeLimit"

    const-string v6, "RecorderPrepareRunnable"

    sget-object v7, Lcom/motorola/camera/CameraKpi$KPI;->VIDEO_CREATE_FD:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 65
    sget-object v8, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    sget-object v9, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    .line 66
    const-string/jumbo v9, "shotType"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {v8, v2}, Lcom/motorola/camera/storage/StorageUtils;->isFreeBytesSufficientWithFallback(Lcom/motorola/camera/ShotType;Landroidx/media3/exoplayer/WakeLockManager;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 68
    const-string v2, "Storage space is too low, video recording may not work properly"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_9
    new-instance v2, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;

    .line 70
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->getNewCaptureSequenceId()I

    move-result v8

    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 71
    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v10

    invoke-direct {v2, v8, v10}, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;-><init>(ILandroid/os/Bundle;)V

    .line 72
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 73
    sget-object v8, Lcom/motorola/camera/VideoHelper;->ALLOWED_VIDEO_SIZES:Ljava/util/ArrayList;

    .line 74
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v8

    .line 75
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/motorola/camera/VideoHelper;->getRecorderDataForMode(ILcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    move-result-object v12

    .line 76
    iget v8, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    iput v8, v12, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    .line 77
    iget-object v8, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    iput-object v8, v12, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    .line 78
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getMediaRecorderMaxFileSize()J

    move-result-wide v10

    .line 79
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 80
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/settings/CaptureIntent;->mExtras:Landroid/os/Bundle;

    .line 81
    invoke-virtual {v8, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 82
    invoke-virtual {v8, v5, v10, v11}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 83
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 84
    :cond_a
    invoke-virtual {v8, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 85
    invoke-virtual {v8, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 86
    :cond_b
    iput-wide v10, v12, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mMaxFileSize:J

    .line 87
    iput v4, v12, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoDuration:I

    .line 88
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 89
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10PlusSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x2000

    goto :goto_3

    :cond_c
    const/16 v0, 0x1000

    .line 90
    :goto_3
    iput v0, v12, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoEncoderProfile:I

    .line 91
    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDolbyVisionMode()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x100

    .line 92
    iput v0, v12, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoEncoderProfile:I

    .line 93
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    if-eqz v0, :cond_e

    .line 94
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 95
    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    const-wide v10, 0x80000000L

    invoke-virtual {v4, v10, v11}, Lcom/motorola/camera/saving/FileName;->setAttribute(J)Lcom/motorola/camera/saving/FileName;

    .line 96
    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v4}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->setFileName(Ljava/lang/String;)V

    .line 97
    :cond_e
    invoke-virtual {v3, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "SURFACE"

    .line 98
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    if-nez v0, :cond_f

    .line 99
    const-string v0, "configured recordSurface is null, reconfigure session."

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDER_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto/16 :goto_4

    .line 101
    :cond_f
    iput-object v0, v12, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mSurface:Landroid/view/Surface;

    .line 102
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    .line 103
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    .line 104
    const-string v4, "RECORDER_DATA"

    invoke-virtual {v0, v4, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 105
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_10

    .line 106
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 107
    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 108
    :cond_10
    :try_start_0
    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->createFileDescriptorWithFallback(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/io/FileDescriptor;

    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_11

    .line 109
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 110
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 111
    :cond_11
    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    new-instance v4, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-direct {v4}, Lcom/motorola/camera/capturedmediadata/RecordingTime;-><init>()V

    invoke-direct {v0, v2, v12, v4}, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;-><init>(Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    .line 112
    new-instance v4, Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-direct {v4, v0}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V

    .line 113
    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    .line 114
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;

    .line 115
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 116
    sget-object v1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 117
    new-instance v11, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;

    const/4 v15, 0x1

    move-object/from16 v16, v0

    invoke-direct/range {v11 .. v16}, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;-><init>(Lcom/motorola/camera/capturedmediadata/MediaRecorderData;Ljava/io/FileDescriptor;Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;ZLandroid/os/Handler;)V

    invoke-virtual {v1, v11}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    .line 118
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 119
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 120
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 121
    check-cast v0, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CaptureIntent;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_13

    .line 122
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v1}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_4

    .line 123
    :catch_0
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_12

    .line 124
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 125
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v7}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 127
    :cond_12
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_13
    :goto_4
    return-void

    .line 128
    :pswitch_3
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 129
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_7

    .line 130
    :cond_14
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    .line 131
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5

    .line 132
    :cond_15
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 133
    const-string v2, "VIDEO_RECORDING"

    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    move v4, v5

    :cond_16
    move v0, v4

    .line 134
    :goto_5
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 135
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 136
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 137
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isPaused()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGestureVideoEnabledModes()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 138
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoFamilyMode()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_6

    :cond_17
    if-nez v0, :cond_18

    .line 139
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 140
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v3

    .line 141
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_19

    if-eq v2, v5, :cond_19

    .line 142
    :cond_18
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->pause()V

    goto :goto_7

    .line 143
    :cond_19
    :goto_6
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_1b

    if-nez v0, :cond_1b

    .line 144
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 145
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-ne v2, v5, :cond_1b

    .line 146
    :cond_1a
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->resume()V

    :cond_1b
    :goto_7
    return-void

    .line 147
    :pswitch_4
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 149
    sget-object v0, Lcom/motorola/camera/utility/ColdStartHelper;->characteristicsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 150
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_1c

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 152
    const-string v0, "GetCharacteristicsRunnable"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "awaitCharacteristics dur: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1c
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    .line 154
    array-length v6, v0

    move v7, v4

    move v8, v7

    :goto_8
    if-ge v7, v6, :cond_1e

    aget-object v8, v0, v7

    .line 155
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-eqz v8, :cond_1d

    add-int/lit8 v7, v7, 0x1

    move v8, v5

    goto :goto_8

    :cond_1d
    move v8, v4

    :cond_1e
    if-nez v8, :cond_26

    .line 156
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    .line 157
    array-length v6, v0

    move v7, v4

    move v8, v7

    :goto_9
    if-ge v7, v6, :cond_21

    aget-object v9, v0, v7

    .line 158
    invoke-virtual {v9}, Lcom/motorola/camera/settings/CameraType;->isOfflineReproc()Z

    move-result v10

    if-nez v10, :cond_20

    .line 159
    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-eqz v8, :cond_1f

    move v8, v5

    goto :goto_a

    :cond_1f
    move v8, v4

    goto :goto_b

    :cond_20
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_21
    :goto_b
    if-eqz v8, :cond_24

    .line 160
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    .line 161
    array-length v6, v0

    move v7, v4

    :goto_c
    if-ge v7, v6, :cond_23

    aget-object v8, v0, v7

    .line 162
    invoke-virtual {v8}, Lcom/motorola/camera/settings/CameraType;->isOfflineReproc()Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-eqz v8, :cond_22

    move v4, v5

    goto :goto_d

    :cond_22
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_23
    :goto_d
    if-eqz v4, :cond_26

    .line 163
    :cond_24
    invoke-static {}, Lcom/motorola/camera/Util;->isSampleApk()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_e

    .line 164
    :cond_25
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;

    .line 165
    iget-object v1, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 166
    sget-object v3, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 167
    new-instance v4, Lcom/motorola/camera/device/callables/RecorderStopCallable;

    .line 168
    invoke-direct {v4, v2, v0, v1, v5}, Lcom/motorola/camera/device/callables/RecorderStopCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;I)V

    .line 169
    invoke-virtual {v3, v4}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    goto :goto_f

    .line 170
    :cond_26
    :goto_e
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->GET_CHARACTERISTICS_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    .line 171
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->setupCameraFacing(Z)V

    .line 172
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 173
    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    .line 174
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    :goto_f
    return-void

    .line 175
    :pswitch_5
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 176
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    .line 177
    const-string v0, "VIDEO_STOP_POST_DELAY"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-lez v0, :cond_27

    .line 178
    iget-object v8, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 179
    new-instance v0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;

    const/4 v5, 0x2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_27
    return-void

    .line 180
    :pswitch_6
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 181
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v5

    .line 182
    monitor-enter v5

    .line 183
    :try_start_1
    iput-boolean v4, v5, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    .line 184
    iget-object v0, v5, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v0}, Lcom/lenovo/core/LenovoPanoramaSelfie;->resetStitchingStatus()V

    .line 185
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v0

    .line 187
    iput-object v2, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mOutputPreviewData:[B

    .line 188
    iput v4, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    .line 189
    iput v4, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mRequestNum:I

    .line 190
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->mImageIdArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    .line 192
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    .line 193
    const-string v2, "PANO_SELFIE_IMAGE_ID"

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->mImageIdArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :catchall_0
    move-exception v0

    .line 194
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 195
    :pswitch_7
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 196
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "CAPTURE_TYPE"

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    .line 197
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void

    .line 198
    :pswitch_8
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 199
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 200
    const-string v2, "CAPTURE_TRIGGER"

    .line 201
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-nez v3, :cond_28

    .line 202
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_28
    return-void

    .line 203
    :pswitch_9
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 204
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_29

    .line 205
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 206
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_29
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 3
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 4
    :pswitch_2
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 5
    :pswitch_3
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 6
    :pswitch_4
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 7
    :pswitch_5
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 8
    :pswitch_6
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 9
    :pswitch_7
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 10
    :pswitch_8
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 11
    :pswitch_9
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
