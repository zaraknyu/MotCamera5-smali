.class public abstract Lcom/motorola/camera/fsm/camera/record/CaptureRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAnalyticsLog:Z

.field public mBackupImageSaved:Z

.field public mCameraFacingId:I

.field public mCameraId:Ljava/lang/String;

.field public mCameraType:Lcom/motorola/camera/settings/CameraType;

.field public mCaptureMode:I

.field public mCaptureTime:J

.field public mDidSwFlashFire:Z

.field public mDownCount:I

.field public mDownDuration:J

.field public mDownJobs:I

.field public mElapsedIntervalStart:J

.field public mExitBeforeDone:Z

.field public mExtraOutput:Landroid/net/Uri;

.field public mFileName:Lcom/motorola/camera/saving/FileName;

.field public mGpsLocation:Landroid/location/Location;

.field public mLongExposureIso:I

.field public mLongExposureShutterTime:J

.field public mLongExposureStartTime:J

.field public mMediaFile:Lcom/motorola/camera/storage/MediaFile;

.field public mMetaData:Landroid/os/Bundle;

.field public mOrientation:I

.field public mRecordExtendedInfo:Z

.field public mSatPhysicalCameraId:Ljava/lang/String;

.field public mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

.field public mSessionId:I

.field public mSettingValues:Ljava/util/Map;

.field public mShotBundle:Landroid/os/Bundle;

.field public mShotType:Lcom/motorola/camera/ShotType;

.field public mTotalCaptureTime:J

.field public mUUID:J


# direct methods
.method public constructor <init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSatPhysicalCameraId:Ljava/lang/String;

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDidSwFlashFire:Z

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mTotalCaptureTime:J

    .line 6
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    .line 8
    invoke-static {p4}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/ShotType;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 9
    iput p1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSessionId:I

    .line 10
    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mRecordExtendedInfo:Z

    if-eqz p3, :cond_0

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 12
    :cond_0
    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSatPhysicalCameraId:Ljava/lang/String;

    .line 17
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDidSwFlashFire:Z

    const-wide/16 v1, 0x0

    .line 19
    iput-wide v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mTotalCaptureTime:J

    .line 20
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    .line 21
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    .line 22
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 23
    iget v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSessionId:I

    iput v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSessionId:I

    .line 24
    iget-wide v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    iput-wide v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 25
    new-instance v1, Lcom/motorola/camera/saving/FileName;

    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-direct {v1, v2}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    .line 26
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExtraOutput:Landroid/net/Uri;

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExtraOutput:Landroid/net/Uri;

    .line 27
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 28
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 29
    new-instance v0, Landroid/location/Location;

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    .line 30
    iget v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    .line 31
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    .line 32
    iget v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    .line 33
    iget v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    .line 34
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 35
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    .line 36
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mRecordExtendedInfo:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mRecordExtendedInfo:Z

    .line 37
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExitBeforeDone:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExitBeforeDone:Z

    .line 38
    iget-wide v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    .line 40
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 41
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 42
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 43
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    .line 44
    iget-wide v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mElapsedIntervalStart:J

    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mElapsedIntervalStart:J

    .line 45
    iget v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownCount:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownCount:I

    .line 46
    iget-wide v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownDuration:J

    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownDuration:J

    .line 47
    iget v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownJobs:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownJobs:I

    .line 48
    iget-wide v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mLongExposureStartTime:J

    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mLongExposureStartTime:J

    .line 49
    iget-wide v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mLongExposureShutterTime:J

    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mLongExposureShutterTime:J

    .line 50
    iget v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mLongExposureIso:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mLongExposureIso:I

    .line 51
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSatPhysicalCameraId:Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSatPhysicalCameraId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    iget v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    iput v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    new-instance v4, Lcom/motorola/camera/saving/FileName;

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-direct {v4, v5, v2, v3}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    iput-object v4, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-virtual {v2}, Lcom/motorola/camera/settings/CaptureIntent;->getExtraOutput()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExtraOutput:Landroid/net/Uri;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExtraOutput:Landroid/net/Uri;

    const-string v4, "fileName"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "uri"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;

    invoke-direct {v4, v2, v3}, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;-><init>(Lcom/motorola/camera/saving/FileName;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExtraOutput:Landroid/net/Uri;

    const-string/jumbo v3, "uri"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/tasks/zzr;

    invoke-direct {v3, v2}, Lcom/google/android/gms/tasks/zzr;-><init>(Landroid/net/Uri;)V

    iput-object v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v2}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    :goto_0
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Landroid/location/Location;

    if-eqz v3, :cond_2

    iget-wide v4, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setTime(J)V

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGeoEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    sget v3, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    sget-boolean v4, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2, v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2, v5}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v4, v2, v1}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    const-class v1, Lcom/motorola/camera/settings/SettingsManager;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager;->mSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/settings/Setting;

    iget-object v5, v4, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/motorola/camera/settings/Setting;->getCheckValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_4
    monitor-exit v1

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v2, "FACES_DETECTED"

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->isFaceDetectionAllowed(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->mFaces:[Landroid/hardware/camera2/params/Face;

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    array-length v3, v3

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v2, "ANALYTICS_SEQID"

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v4, "SEQID"

    invoke-virtual {v3, v4}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v2, "ANALYTICS_ACTION_SHOT"

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ANALYTICS_ACTION_SHOT"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;->activePhysicalCameraId:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSatPhysicalCameraId:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    monitor-enter p1

    :try_start_1
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_7
    const/4 v0, -0x1

    :goto_5
    monitor-exit p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string p1, "ANALYTICS_AUTO_FOCUS_STATE"

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    :goto_6
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_7
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CaptureRecord{mSeqId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtraOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExtraOutput:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMediaFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mGpsLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShotType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRecordExtendedInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mRecordExtendedInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mElapsedIntervalStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mElapsedIntervalStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mCameraFacingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAnalyticsLog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mExitBeforeDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExitBeforeDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mShotBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSettingValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMetaData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
