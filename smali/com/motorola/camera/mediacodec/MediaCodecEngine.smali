.class public final Lcom/motorola/camera/mediacodec/MediaCodecEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final mTrackLock:Ljava/lang/Object;


# instance fields
.field public mAudioBufferSize:I

.field public mAudioChannelCount:I

.field public mAudioCodecHelper:Landroidx/room/RoomConnectionManager;

.field public mAudioLensSwitchMode:Z

.field public mAudioRecord:Landroid/media/AudioRecord;

.field public mAudioSampleRate:I

.field public mCamcorderProfile:Landroid/media/CamcorderProfile;

.field public mCodecSurface:Landroid/view/Surface;

.field public mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

.field public mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

.field public mMediaMuxer:Landroid/media/MediaMuxer;

.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

.field public final mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

.field public mVideoCodecHelper:Landroidx/room/RoomConnectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    return-void
.end method


# virtual methods
.method public final createMediaCodec(Lcom/motorola/camera/PreviewSize;)Landroid/media/MediaCodec;
    .locals 8

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentCliCamera()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsHelper;->getCodecVideoFps(Landroid/util/Size;Z)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    if-nez v1, :cond_0

    iget v1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v2, p1, Lcom/motorola/camera/PreviewSize;->height:I

    mul-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    :goto_0
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v5, Lcom/motorola/camera/AppFeatures$Feature;->HEVC_CODEC_VIDEO_DISABLE:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v2, v2, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v2, Ljava/util/EnumSet;

    invoke-virtual {v2, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHevcAllowed()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget v2, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v5, p1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    invoke-static {v2, v5, v0, v6}, Lcom/motorola/camera/settings/SettingsHelper;->isHevcSupported(IIILcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v3

    :goto_2
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v5

    invoke-static {v2, v5, v1}, Lcom/motorola/camera/VideoHelper;->getBitrateOfSize(ZLandroid/util/Size;I)I

    move-result v1

    if-eqz v2, :cond_3

    const-string/jumbo v5, "video/hevc"

    goto :goto_3

    :cond_3
    const-string/jumbo v5, "video/avc"

    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v6, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLandscapeLayout()Z

    move-result v6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v7

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v7

    goto :goto_4

    :cond_5
    iget v7, p1, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p0

    if-nez p0, :cond_7

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result p0

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result p0

    goto :goto_5

    :cond_7
    iget p0, p1, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_5
    invoke-static {v5, v7, p0}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    invoke-static {v5}, Lcom/motorola/camera/mediacodec/CodecUtil;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object p1

    const-string v6, "bitrate"

    invoke-virtual {p0, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "frame-rate"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "color-format"

    const v1, 0x7f000789

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "color-range"

    invoke-virtual {p0, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BT709_CODEC_VIDEO:Z

    if-eqz v0, :cond_8

    move v0, v4

    goto :goto_6

    :cond_8
    const/4 v0, 0x4

    :goto_6
    const-string v1, "color-standard"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "i-frame-interval"

    invoke-virtual {p0, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "bitrate-mode"

    invoke-virtual {p0, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    if-eqz v2, :cond_9

    move v0, v4

    goto :goto_7

    :cond_9
    const/16 v0, 0x8

    :goto_7
    const-string/jumbo v1, "profile"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "level"

    invoke-static {p1, v5}, Lcom/motorola/camera/mediacodec/CodecUtil;->getProfileLevel(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareQCom()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "vendor.qti-ext-enc-content-adaptive-mode.value"

    invoke-virtual {p0, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_a
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object p1
.end method

.method public final initAudioCodecHelper()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Landroidx/room/RoomConnectionManager;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/room/RoomConnectionManager;

    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    const-string v2, "mime"

    const-string v3, "audio/mp4a-latm"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "aac-profile"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "sample-rate"

    iget v4, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioSampleRate:I

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "channel-count"

    iget v4, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioChannelCount:I

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioBitRate:I

    const-string v4, "bitrate"

    invoke-virtual {v1, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance v1, Landroidx/compose/ui/graphics/vector/DrawCache;

    iget-object v3, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-direct {v1, p0, v3}, Landroidx/compose/ui/graphics/vector/DrawCache;-><init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;Landroid/media/AudioRecord;)V

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroidx/room/RoomConnectionManager;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;I)V

    iput-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Landroidx/room/RoomConnectionManager;

    iget-object p0, v0, Landroidx/room/RoomConnectionManager;->connectionPool:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Thread;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setPriority(I)V

    :cond_0
    return-void
.end method

.method public final initAudioRecord()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v1, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    iput v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioChannelCount:I

    iget v0, v0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iput v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioSampleRate:I

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getAudioDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioChannelCount:I

    invoke-static {v0, v1}, Lcom/motorola/camera/VideoHelper;->getCheckedAudioChannels(Landroid/media/AudioDeviceInfo;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioChannelCount:I

    iget v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioSampleRate:I

    invoke-static {v0, v1}, Lcom/motorola/camera/VideoHelper;->getCheckedAudioSampleRate(Landroid/media/AudioDeviceInfo;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioSampleRate:I

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/Util;->isBluetoothMicType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_BLUETOOTH_RECORDING:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const/4 v1, 0x1

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :goto_1
    iget v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioChannelCount:I

    iget v4, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioSampleRate:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/16 v1, 0xc

    :goto_2
    move v5, v1

    goto :goto_3

    :cond_2
    const/16 v1, 0x10

    goto :goto_2

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioBufferSize:I

    new-instance v2, Landroid/media/AudioRecord;

    const/4 v6, 0x2

    iget v7, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioBufferSize:I

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v2, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2, v0}, Landroid/media/AudioRecord;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    :cond_3
    return-void
.end method

.method public final makeCurrent()Z
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    sget-object v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->PAUSED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/utility/EGLHelper;->makeCurrent()Z

    move-result v2

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    if-eqz v0, :cond_3

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const-string v0, "MediaCodecEngine"

    const-string v1, "egl makeCurrent fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_4
    :goto_1
    return v2
.end method

.method public final processForAnalytics(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 12

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    iget-wide v1, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    iget-wide v1, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    iget v3, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseCount:I

    iget-wide v4, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    iget-wide v8, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    div-long/2addr v8, v6

    iget-wide v10, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    div-long/2addr v10, v6

    invoke-virtual {p1}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v4, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    iput-wide v1, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    iput-wide v10, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    iput-wide v8, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    iput v3, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseCount:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    :cond_0
    return-void
.end method

.method public final declared-synchronized setupAudioRecord(Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioLensSwitchMode:Z

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_0

    iget v0, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {v0, p1}, Lcom/motorola/camera/ProfileSelector;->selectProfile(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->initAudioRecord()V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_BLUETOOTH_RECORDING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioManager;->startBluetoothSco()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized startEngine()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->LOADED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Landroidx/room/RoomConnectionManager;

    invoke-virtual {v0}, Landroidx/room/RoomConnectionManager;->start()V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_BLUETOOTH_RECORDING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Landroidx/room/RoomConnectionManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/room/RoomConnectionManager;->start()V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized stopAudioRecordAndAudioCodecHelper()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Landroidx/room/RoomConnectionManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/room/RoomConnectionManager;->stop()V

    iput-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Landroidx/room/RoomConnectionManager;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iput-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-static {}, Lcom/motorola/camera/Util;->stopBluetoothSco()V

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioLensSwitchMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->setupAudioRecord(Lcom/motorola/camera/PreviewSize;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized stopEngine(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 12

    const-string v1, "MediaMuxer stop failed."

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->LOADED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->ERROR:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_a

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->ERROR:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Flags;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x4

    const v4, 0x7f12017f

    const/4 v5, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v6, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v7, 0x14

    invoke-direct {v6, v7, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CyclicBarrier;->reset()V

    iput-object v5, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_6

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->stopAudioRecordAndAudioCodecHelper()V

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setEndTime(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->getVideoDuration()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    :cond_3
    const-wide/16 v6, 0x0

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v8, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_STOPPED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const-wide/32 v8, 0xf4240

    cmp-long v0, v6, v8

    if-gez v0, :cond_6

    if-nez v2, :cond_4

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v6, 0x7f120597

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v0, v6}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    :goto_2
    iput-object v5, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    goto :goto_4

    :cond_6
    invoke-virtual {p0, p1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->processForAnalytics(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    iget-object v10, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iput-object v10, v0, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    goto :goto_3

    :cond_7
    move-object p1, v5

    :goto_3
    iget-object v10, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    div-long v8, v6, v8

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    new-instance v6, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    const/4 v11, 0x2

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;JLjava/lang/Object;I)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    if-eqz v2, :cond_8

    :try_start_3
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v1, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput v3, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->release()V

    :goto_5
    iput-object v5, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    :goto_6
    :try_start_4
    const-string v0, "MediaCodecEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    if-nez p1, :cond_9

    goto :goto_7

    :cond_9
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    :goto_7
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_a

    :try_start_5
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v1, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput v3, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :cond_b
    :goto_8
    monitor-exit p0

    return-void

    :goto_9
    if-eqz v2, :cond_c

    :try_start_6
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v2, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    iput-object v5, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    :cond_d
    throw p1

    :goto_a
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method
