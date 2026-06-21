.class public Lcom/motorola/camera/fsm/camera/modes/PhotoMode;
.super Lcom/motorola/camera/fsm/camera/modes/AbstractMode;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;


# static fields
.field public static final mMcfHolders:Ljava/util/HashMap;

.field public static final mMcfHoldersLock:Ljava/lang/Object;


# instance fields
.field public final mAeSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

.field public final mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

.field public final mFgHandler:Landroid/os/Handler;

.field public final mFlashSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

.field public mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final mHighResActivePhysicalCameraListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda5;

.field public mHighResAutoSwitchAllowed:Z

.field public final mHighResAutoSwitchTurnOnRunnable:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

.field public final mHoldStillPopupListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

.field public final mInSensorCropActivePhysicalCameraListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda5;

.field public mIscLuxIdxThresholdMet:Ljava/lang/Boolean;

.field public final mJpegImageReaders:Ljava/util/ArrayList;

.field public mLastSensorCrop:I

.field public final mMcfControlListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;

.field public final mMcfStateListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;

.field public mMoonDetected:Z

.field public mMotionLevel:I

.field public mPreAe:I

.field public mPreZoom:F

.field public mPreviewImageReader:Landroid/media/ImageReader;

.field public mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

.field public mSensorCropDisableCounter:I

.field public mSensorCropEnableCounter:I

.field public final mSmartHighResSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

.field public mSubPreviewImageReader:Landroid/media/ImageReader;

.field public mSwitchToPhotoModeReminderOn:Z

.field public mToHighResFrameCnt:I

.field public mToNormalResFrameCnt:I

.field public mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

.field public final mZoomSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHoldersLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mJpegImageReaders:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFgHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreZoom:F

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreAe:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mIscLuxIdxThresholdMet:Ljava/lang/Boolean;

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMotionLevel:I

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHighResAutoSwitchTurnOnRunnable:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSmartHighResSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mZoomSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mAeSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFlashSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHighResActivePhysicalCameraListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda5;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mInSensorCropActivePhysicalCameraListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda5;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfStateListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHoldStillPopupListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfControlListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    return-void
.end method

.method public static checkCreateRawStream(Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;ILcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isRawStreamNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p9, :cond_1

    move-object/from16 v1, p9

    goto :goto_0

    :cond_1
    move-object/from16 v1, p8

    :goto_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda3;

    const/4 v4, 0x1

    move-object/from16 v5, p4

    invoke-direct {v3, v5, v4}, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda3;-><init>(Landroid/util/Size;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getSensorRawMaxResolution(Ljava/lang/String;)Lcom/motorola/camera/PreviewSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v1

    move-object v7, v1

    goto :goto_1

    :cond_2
    move-object/from16 v5, p4

    :cond_3
    move-object v7, v5

    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    if-nez v1, :cond_4

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v11

    const/4 v13, 0x0

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mCameraMode:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    sget-object v15, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->RAW_SENSOR:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v12, p5

    move-object/from16 v14, p6

    move-object/from16 v16, v1

    invoke-static/range {v8 .. v16}, Lcom/motorola/camera/mcf/Mcf;->createInputStream(Ljava/lang/String;Ljava/lang/String;IIIILcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;Lcom/motorola/camera/mcf/McfInputStream$StreamMode;)Lcom/motorola/camera/mcf/McfInputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    :cond_4
    sget-object v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/16 v8, 0x20

    move/from16 v12, p5

    move-object/from16 v1, p7

    invoke-static {v7, v8, v12, v1, v5}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableListener()Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const/4 v9, 0x0

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;IZ)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static closeMcfStream(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    move-object p0, p1

    :cond_0
    sget-object p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHoldersLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/McfInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/McfInputStream;->close()V

    :cond_3
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static closeMcfStreams()V
    .locals 6

    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHoldersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfInputStream;->close()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->close()V

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfInputStream;->close()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :cond_4
    sget-object v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static forEachOfflineReprocCameraType(Ljava/util/function/Consumer;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocCameraTypes(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/CameraType;

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getNewLuxIdxThreshMetCond(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Z
    .locals 5

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->getActivePhysicalCameraTypeForInSensorCrop(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getInSensorCropConfigByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/JsonConfig$InSensorCropData;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropDefaultConfig:Lcom/motorola/camera/JsonConfig$InSensorCropData;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxLowerThreshold:Ljava/lang/Double;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxLowerThreshold:Ljava/lang/Double;

    invoke-static {p1}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getLuxIdxThreshold(Ljava/lang/Double;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getLuxIdxThreshold(Ljava/lang/Double;Ljava/lang/Double;)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getInSensorCropConfigByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/JsonConfig$InSensorCropData;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropDefaultConfig:Lcom/motorola/camera/JsonConfig$InSensorCropData;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxUpperThreshold:Ljava/lang/Double;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxUpperThreshold:Ljava/lang/Double;

    invoke-static {p1}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getLuxIdxThreshold(Ljava/lang/Double;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getLuxIdxThreshold(Ljava/lang/Double;Ljava/lang/Double;)D

    move-result-wide p0

    :goto_0
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/IqConfigManager;->mLastLuxIdx:F

    float-to-double v3, v0

    cmpl-double p0, v3, p0

    if-lez p0, :cond_1

    :goto_1
    move p0, v2

    goto :goto_3

    :cond_1
    move p0, v1

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getInSensorCropConfigByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/JsonConfig$InSensorCropData;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropDefaultConfig:Lcom/motorola/camera/JsonConfig$InSensorCropData;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxUpperThreshold:Ljava/lang/Double;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxUpperThreshold:Ljava/lang/Double;

    invoke-static {p1}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getLuxIdxThreshold(Ljava/lang/Double;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getLuxIdxThreshold(Ljava/lang/Double;Ljava/lang/Double;)D

    move-result-wide p0

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getInSensorCropConfigByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/JsonConfig$InSensorCropData;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropDefaultConfig:Lcom/motorola/camera/JsonConfig$InSensorCropData;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxLowerThreshold:Ljava/lang/Double;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxLowerThreshold:Ljava/lang/Double;

    invoke-static {p1}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getLuxIdxThreshold(Ljava/lang/Double;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getLuxIdxThreshold(Ljava/lang/Double;Ljava/lang/Double;)D

    move-result-wide p0

    :goto_2
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/IqConfigManager;->mLastLuxIdx:F

    float-to-double v3, v0

    cmpg-double p0, v3, p0

    if-gez p0, :cond_1

    goto :goto_1

    :goto_3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_MOON_USE_ISZ:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {p1, v0}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_6

    array-length v0, p1

    if-lez v0, :cond_6

    sget-boolean v0, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mIsMoonDetected:Z

    if-eqz v0, :cond_6

    aget p0, p1, v1

    if-ne p0, v2, :cond_5

    return v2

    :cond_5
    :goto_4
    return v1

    :cond_6
    return p0
.end method

.method public static highResAutoSwitchForKnifeSwitchCase(ZLjava/lang/Object;Lcom/motorola/camera/utility/ZoomSegment;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ZOOM_SEGMENT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    :goto_0
    const-string p2, "CAMERA_TYPE"

    invoke-virtual {v0, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "ORIGIN_CAMERA_TYPE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "IS_MANUAL_JUMP"

    const/4 p2, 0x1

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "IS_HIGH_RES_AUTO_SWITCH"

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    instance-of p2, p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_2
    instance-of p2, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :cond_3
    instance-of p2, p1, Lcom/motorola/camera/Controller;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/motorola/camera/Controller;

    iget-object p1, p1, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-virtual {p1, p0}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public static highResAutoSwitchForSmoothSwitchCase(Z)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HIGH_RES_IN_PHOTO_MODE_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->showHighResAutoSwitchToast(Z)V

    return-void
.end method

.method public static isAeOkForAutoHighResDetection()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isFlashOkForAutoHighResDetection()Z
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isHdrOkForAutoHighResDetection()Z
    .locals 5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sLastSceneIntentRequested:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-class v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentRawScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    monitor-exit v0

    if-eqz v2, :cond_1

    return v4

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    return v1
.end method

.method public static isWithinPhysicalBackMainZoomRatioRange(F)Z
    .locals 6

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->getInSensorCropConfigByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/JsonConfig$InSensorCropData;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropDefaultConfig:Lcom/motorola/camera/JsonConfig$InSensorCropData;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$InSensorCropData;->zoomLowerThreshold:Ljava/lang/Double;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$InSensorCropData;->zoomLowerThreshold:Ljava/lang/Double;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getTeleSegmentMin()F

    move-result v2

    float-to-double v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    :goto_0
    double-to-float v0, v0

    div-float/2addr v3, p0

    cmpg-float p0, v3, v0

    if-gez p0, :cond_3

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_2

    div-float/2addr v3, p0

    invoke-static {v3}, Lcom/motorola/camera/utility/ZoomHelper;->isWithinPhysicalBackMainZoomRatioRange(F)Z

    move-result p0

    return p0

    :cond_2
    div-float/2addr v3, p0

    const/high16 p0, 0x40000000    # 2.0f

    cmpg-float p0, v3, p0

    if-gez p0, :cond_3

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static showHighResAutoSwitchToast(Z)V
    .locals 3

    const v0, 0x7f1205df

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v2, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v0, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAutoHide:Z

    invoke-static {v2, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :cond_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, p0, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void
.end method

.method public static showSwitchToPhotoModeReminder(Z)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HIGH_RES_SWITCH_PHOTO_REMINDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const v0, 0x7f1205fb

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v2, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v0, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAutoHide:Z

    invoke-static {v2, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :cond_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, p0, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void
.end method


# virtual methods
.method public final areAllOkForAutoHighResDetection()Z
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isZoomOkForAutoHighResDetection()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isAeOkForAutoHighResDetection()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isHdrOkForAutoHighResDetection()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isFlashOkForAutoHighResDetection()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getFullFrameExposureCompensation(Ljava/lang/String;)I
    .locals 1

    sget-object p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameExposureCompensation:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMcfStreamSize(Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;
    .locals 0

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsHelper;->getYuvImageSize(Lcom/motorola/camera/settings/CameraType;Z)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewFullFrameSkipCount(Lcom/motorola/camera/settings/CameraType;)I
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->MAIN:Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->getPhysicalCameraType(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mPreviewFullFrameSkipCount:I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getPreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getSessionStreamRequest()Lcom/motorola/camera/StreamRequest;
    .locals 2

    new-instance p0, Lcom/motorola/camera/StreamRequest;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/VideoFormat;

    iget-object v0, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/StreamRequest;-><init>(FLandroid/util/Size;)V

    return-object p0
.end method

.method public getSlavePreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getSubPreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PhotoMode"

    return-object p0
.end method

.method public final isLatestSensorCropConverged(Z)Z
    .locals 6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getInSensorCropEnableKey()Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    sget-boolean v1, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhotoMode"

    const-string/jumbo v3, "previewCrop:"

    const-string v4, " repeating:"

    invoke-static {v3, v0, v4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v4, v4, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/dynamite/zzo;

    monitor-enter v4

    :try_start_0
    iget v5, v4, Lcom/google/android/gms/dynamite/zzo;->zza:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mSensorCropEnableCounter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSensorCropEnableCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mSensorCropDisableCounter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSensorCropDisableCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mLastSensorCrop:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mLastSensorCrop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mLastSensorCrop:I

    if-ne v0, p0, :cond_3

    goto :goto_1

    :cond_1
    const/4 p1, 0x6

    if-ne v0, v2, :cond_2

    iget p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSensorCropEnableCounter:I

    if-lt p0, p1, :cond_3

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSensorCropDisableCounter:I

    if-lt p0, p1, :cond_3

    :goto_1
    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public isPermissionRequired(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    const-string p1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, p1}, Lcom/motorola/camera/PermissionsManager;->isPermissionGranted(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isZoomOkForAutoHighResDetection()Z
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz p0, :cond_0

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;->activePhysicalCameraId:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->isPhysicalIdBackMain(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isWithinPhysicalBackMainZoomRatioRange(F)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, v0, p0

    if-nez p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public onCloseSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 3

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mJpegImageReaders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/utility/ImageReaderWrapper;

    invoke-virtual {v1, v2, v2}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->close()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2, v2}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->close()V

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2, v2}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->close()V

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    :cond_4
    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStreams()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mSessionSurfacesClosed:Z

    return-void
.end method

.method public onCreateCaptureRequests(Ljava/util/ArrayList;Z)V
    .locals 3

    const/4 p0, 0x2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    new-instance p2, Lcom/motorola/camera/fsm/RequestWrapper;

    invoke-direct {p2, v0, v0, v0}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/motorola/camera/fsm/RequestWrapper;

    invoke-direct {p2, p0, v0, v0}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v1, 0x3

    invoke-direct {p2, v1, p0, v0}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p2, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p2, v1, v0, v2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/motorola/camera/fsm/RequestWrapper;

    const/16 v1, 0x8

    invoke-direct {p2, v1, v0, v2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x7

    invoke-direct {p2, v0, p0, v2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreateSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupPreview(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;)V

    goto :goto_0

    :cond_0
    const-string v2, "PhotoMode"

    const-string/jumbo v3, "preview surface not released!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaRawImageFormat()I

    move-result v11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v10, v11, v5, v2, v8}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReaderWrapper(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Lcom/motorola/camera/utility/ImageReaderWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v9, v6}, Lcom/google/android/gms/tasks/zzb;-><init>(Ljava/lang/Object;)V

    sget-object v6, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v6, v6, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9, v6}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object v9, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    iget-object v9, v9, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v2, v3, v6, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mJpegImageReaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupJpegImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRawOnly()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalDepthMode()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x4

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v6, 0x6

    :goto_2
    new-instance v7, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda12;

    invoke-direct {v7, p0, p1, v6, v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;Lcom/motorola/camera/fsm/camera/FsmContext;IZ)V

    invoke-static {v7}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->forEachOfflineReprocCameraType(Ljava/util/function/Consumer;)V

    if-nez v2, :cond_6

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupJpegImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorVideoMode()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupJpegImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_6
    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->getSensorRawMaxResolution(Ljava/lang/String;)Lcom/motorola/camera/PreviewSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v10

    sget-object v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/16 v11, 0x20

    invoke-static {v10, v11, v5, v2, v8}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReaderWrapper(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Lcom/motorola/camera/utility/ImageReaderWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    new-instance v6, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v6, v7}, Lcom/google/android/gms/tasks/zzb;-><init>(Ljava/lang/Object;)V

    sget-object v9, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v9, v9, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v9}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object v9, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    iget-object v9, v9, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v2, v3, v6, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfControlListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFgHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/motorola/camera/mcf/Mcf;->setControlListener(Lcom/motorola/camera/mcf/Mcf$OnControlListener;Landroid/os/Handler;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->MAIN:Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    invoke-static {v3, v7}, Lcom/motorola/camera/settings/SettingsManager;->getPhysicalCameraType(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3, v5}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupMcf(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Z)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p1, v2, v6, v5}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupMcf(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Z)V

    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->AUX:Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    invoke-static {v3, v5}, Lcom/motorola/camera/settings/SettingsManager;->getPhysicalCameraType(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupMcf(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Z)V

    goto :goto_5

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v6, v4}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupMcf(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Z)V

    goto :goto_5

    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupFullYuvImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_b
    :goto_5
    sget-boolean p1, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreateSessionSurfaces dur:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_c
    iput-boolean v4, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mSessionSurfacesClosed:Z

    return-void
.end method

.method public onSetup(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 6

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-static {v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->registerListener(Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionCaptureOn()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_HW_FLICKER_DETECT_SUPPORT:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v1, v2}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "ANTI_BANDING_MODE"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_ROI_RECT:Ljava/util/List;

    const/4 v3, 0x0

    new-array v4, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModePossible()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isInSensorCropSupportedInSession()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/motorola/camera/JsonConfig;->inSensorCropHasLuxIdxThresholdRequirement()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isInSensorCropSupportedInSession()Z

    move-result v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropConfigOverrides:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mInSensorCropActivePhysicalCameraListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda5;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_5
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfStateListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModePossible()Z

    move-result v1

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mAeSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SMART_HIGH_RES:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSmartHighResSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    invoke-static {v1, v5}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mZoomSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    invoke-static {v1, v5}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {v0, v4}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHighResActivePhysicalCameraListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda5;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFlashSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResAutoSwitchEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->startHighResAutoSwitchDetection()V

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->showHighResAutoSwitchToast(Z)V

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v0, v4}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->HOLD_STILL_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHoldStillPopupListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    invoke-static {v0, p1}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :cond_9
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_a

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT:Landroid/graphics/Rect;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION_SLV:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT_SLV:Landroid/graphics/Rect;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMacroCameraWithWide(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getZoomForMacroCameraWithWide()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0, p1}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    :cond_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result p1

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    if-eqz p1, :cond_d

    iput-boolean v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->showSwitchToPhotoModeReminder(Z)V

    :cond_d
    return-void
.end method

.method public onSetupCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/ShotType;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    iget-object v5, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-boolean v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mIsMaster:Z

    const/4 v9, 0x2

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v0, v1, v8}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_1

    :cond_0
    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v0, v1, v8}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRawOnly()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/motorola/camera/settings/CameraType;->isOfflineReproc()Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    iget-object v12, v8, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;->activePhysicalCameraId:Ljava/lang/String;

    sget-object v14, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    iget-object v11, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v13, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTargetWithPhysicalCamera(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Z)V

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v0, v1, v8}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v0, v1, v8}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_1

    :cond_4
    sget-object v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v0, v1, v8}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_5
    :goto_1
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v10

    if-nez v10, :cond_6

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    iget-object v10, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_7

    :cond_6
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v10

    invoke-static {v10}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(Z)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_7
    invoke-static {v5, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFaceStatisticReporting(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v8

    const/4 v10, 0x3

    if-nez v8, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode()Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v10, v0, v5, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureWhiteBalance(ILcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/ShotType;)V

    goto :goto_3

    :cond_9
    :goto_2
    invoke-static {v5, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFlashByTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {v10, v6, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setNoiseReduction(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v10, v6, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setEdgeMode(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGeoEnabled()Z

    move-result v8

    if-eqz v8, :cond_b

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v8, Landroid/location/Location;

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    :goto_4
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v11, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegThumbnailSize()Landroid/util/Size;

    move-result-object v8

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v11, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v5, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRoi(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {v7, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v5, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v11

    int-to-byte v11, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getThumbnailJpegQuality()I

    move-result v11

    int-to-byte v11, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v5, v0, v8}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setStillFlip(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v10, v6, v5, v0, v8}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAeFpsRange(IILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setOIS(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v8, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-static {v10, v6, v5, v8}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAiCameraMode(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/ShotType;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_SESSION_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v8

    int-to-byte v9, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v6, v8, v5, v9}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_c
    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v5, v0, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsLidClosed(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVstabPzsEnabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "QCFA_SHOT"

    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_d

    iget-boolean v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mFromMcf:Z

    if-eqz v8, :cond_e

    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeMcfShotOnly()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "DO_REMOSAIC"

    invoke-virtual {v6, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-boolean v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mMcfFinalReproc:Z

    if-nez v6, :cond_f

    :cond_e
    move v6, v3

    goto :goto_5

    :cond_f
    move v6, v9

    :goto_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v8

    if-nez v8, :cond_10

    move v8, v3

    goto :goto_6

    :cond_10
    move v8, v9

    :goto_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result v11

    if-eqz v11, :cond_11

    if-eqz v8, :cond_11

    if-nez v6, :cond_11

    move v8, v3

    goto :goto_7

    :cond_11
    move v8, v9

    :goto_7
    iget-object v11, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v12

    invoke-static {v11, v5, v8, v12}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMfnr(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;ZZ)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeWithSwHwQcfaSensor()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    int-to-byte v6, v6

    sget-object v11, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_DO_SW_REMOSAIC_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v11, v8, v5, v6}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-boolean v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mMcfFinalReproc:Z

    xor-int/2addr v8, v3

    int-to-byte v8, v8

    sget-object v11, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_DO_REMOSAIC_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v11, v6, v5, v8}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_8

    :cond_12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-boolean v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mMcfFinalReproc:Z

    xor-int/2addr v8, v3

    int-to-byte v8, v8

    sget-object v11, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_DO_REMOSAIC_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v11, v6, v5, v8}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_8

    :cond_13
    iget-object v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    int-to-byte v6, v6

    sget-object v11, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_DO_REMOSAIC_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v11, v8, v5, v6}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :goto_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentSceneAdjustmentStatusEnabled()Z

    move-result v6

    if-eqz v6, :cond_15

    sget-object v6, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v6, :cond_15

    instance-of v8, v6, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    if-nez v8, :cond_14

    goto :goto_9

    :cond_14
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v8

    if-eqz v8, :cond_15

    check-cast v6, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    invoke-virtual {v6, v8}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->applyTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V

    :cond_15
    :goto_9
    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_SMILE_ENABLE_CAPTURE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v8, v6, v5, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_BLINK_ENABLE_CAPTURE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v8, v6, v5, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_GAZE_ENABLE_CAPTURE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v8, v6, v5, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    int-to-byte v8, v9

    sget-object v9, Lcom/motorola/camera/settings/CustomKeyHelper;->DISABLE_UW_DC_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v9, v6, v5, v8}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v8

    invoke-static {v6, v5, v8}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRingFlash(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {v7, v5}, Lcom/motorola/camera/SkinToneDetection;->setupCustomScene(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static/range {p1 .. p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setupMotoFlashTuning(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V

    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setControlAppRtb(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object v6, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-eq v6, v2, :cond_16

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMcfLowLightFrameStack()Z

    move-result v6

    int-to-byte v6, v6

    sget-object v7, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_AS_LLS_FLAG_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v7, v2, v5, v6}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_16
    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMultiCameraFeatureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkMultiframeBokeh(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mMcfFinalReproc:Z

    if-nez v2, :cond_17

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMotZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkQuickPreviewOn(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_17
    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkYuvNrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v6

    if-nez v6, :cond_18

    goto :goto_a

    :cond_18
    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->SUPER_NIGHT_MODE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v6, v2, v5, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :goto_a
    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v4

    if-eqz v4, :cond_19

    const/16 v4, 0x8

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v4

    if-eqz v4, :cond_19

    sget-object v4, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_APP_CUTOUT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v5, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_19
    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAutoMacro(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setUwDcAppProcess(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDisplayFlashStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRawNVSceneStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSR()Z

    move-result v3

    sget-object v4, Lcom/motorola/camera/settings/CustomKeyHelper;->SR_SCENE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v4, v2, v5, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v5, v0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setOISBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->enableMTKISPTuningData(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v5, v0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setInSensorCropMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setInsensorZoomForSession(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAFSalinet(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v10, v5, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsFaceBeautyCapture(ILandroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    move-object/from16 v1, p0

    iget v1, v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMotionLevel:I

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_SUPPORT_IN_MOTION_LEVEL_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v5, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public onSetupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    iget-object v6, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v9

    iget-boolean v10, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mIsMaster:Z

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    sget-object v11, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v0, v1, v11}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v11

    if-eqz v11, :cond_2

    sget-boolean v11, Lcom/motorola/camera/utility/ZoomHelper;->sIsLight:Z

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v11

    iget-object v11, v11, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v11}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface(F)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v0, v1, v11}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_0

    :cond_1
    sget-object v11, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v0, v1, v11}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_2
    :goto_0
    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->isStreamingSupportedByCurrentMode(Z)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v0, v1, v9}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_3
    sget-object v9, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-static {v6, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFaceStatisticReporting(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {v6, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode()Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v2, v0, v6, v9}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureWhiteBalance(ILcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/ShotType;)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {v6, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFlashByTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :goto_2
    sget-object v11, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v11, v11, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseHQPreview:[Z

    invoke-static {v7}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v12

    aget-boolean v11, v11, v12

    const/4 v12, 0x2

    if-eqz v11, :cond_6

    move v11, v12

    goto :goto_3

    :cond_6
    move v11, v2

    :goto_3
    invoke-static {v11, v8, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setNoiseReduction(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v11, v8, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setEdgeMode(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v6, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRoi(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {v7, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v13, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v8, v6, v0, v13}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAeFpsRange(IILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object v13, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v13, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setOIS(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v13, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v11, v13, v6, v9}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAiCameraMode(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/ShotType;)V

    iget-object v9, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v11, v8, v6, v0, v9}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->processMcfSceneMode(IILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object v9

    if-eqz v10, :cond_7

    sget-object v10, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v10, v8, v6, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result v10

    sget-object v11, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_MAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v11, v8, v6, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result v11

    and-int/2addr v10, v11

    sget-object v11, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_SESSION_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v8, v6, v9}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result v8

    :goto_4
    and-int/2addr v8, v10

    goto :goto_5

    :cond_7
    sget-object v10, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v10, v9, v6, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result v10

    sget-object v11, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_MAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v11, v9, v6, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result v11

    and-int/2addr v10, v11

    sget-object v11, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_SESSION_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v9, v6, v8}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result v8

    goto :goto_4

    :goto_5
    if-nez v8, :cond_8

    const-string v8, "RequestBuilderHelper"

    const-string v9, "Failed to set custom keys for dual session link"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-object v8, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v8, v8, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/device/CameraStateManager;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Lcom/motorola/camera/device/CameraStateManager;->setLinked(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Lcom/motorola/camera/device/CameraStateManager;->setLinked(Ljava/lang/String;Z)V

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v8

    if-eqz v8, :cond_a

    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_SESSION_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v9

    int-to-byte v10, v12

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v8, v9, v6, v10}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_a
    iget-object v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v6, v0, v8}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsLidClosed(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVstabPzsEnabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentSceneAdjustmentStatusEnabled()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v8

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupportedByCurrentMode(Z)Z

    move-result v8

    if-eqz v8, :cond_c

    sget-object v8, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v8, :cond_c

    instance-of v9, v8, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    if-nez v9, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v9

    if-eqz v9, :cond_c

    check-cast v8, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    invoke-virtual {v8, v9}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->applyTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V

    :cond_c
    :goto_6
    iget-object v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v9, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_SMILE_ENABLE_CAPTURE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v9, v8, v6, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v9, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_BLINK_ENABLE_CAPTURE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v9, v8, v6, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v9

    invoke-static {v8, v6, v9}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRingFlash(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {v7, v6}, Lcom/motorola/camera/SkinToneDetection;->setupCustomScene(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setControlAppRtb(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMcfLowLightFrameStack()Z

    move-result v8

    int-to-byte v8, v8

    sget-object v9, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_AS_LLS_FLAG_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v9, v7, v6, v8}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setupMotoFlashTuning(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMultiCameraFeatureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkMultiframeBokeh(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMotZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkYuvNrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_7

    :cond_d
    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->SUPER_NIGHT_MODE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v8, v7, v6, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :goto_7
    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkQuickPreviewOn(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v8

    if-eqz v8, :cond_e

    const/16 v8, 0x8

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v8

    if-eqz v8, :cond_e

    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_APP_CUTOUT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v6, v9}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_e
    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAutoMacro(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeWithSwHwQcfaSensor()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    int-to-byte v8, v4

    sget-object v9, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_DO_SW_REMOSAIC_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v9, v7, v6, v8}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_f
    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setUwDcAppProcess(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDisplayFlashStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->enableMTKISPTuningData(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v7, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v8

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isMoonDetectSupported(Z)Z

    move-result v8

    if-eqz v8, :cond_23

    sget-boolean v8, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mIsMoonDetected:Z

    const/4 v10, 0x3

    if-eqz v8, :cond_11

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_8

    :cond_10
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v8

    sget-object v13, Lcom/motorola/camera/mcf/Mcf;->MCF_MOON_BRIGHT_SEG_Y_HIST_THRESH_RANGE:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v8, v13}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    if-nez v8, :cond_12

    :cond_11
    :goto_8
    move/from16 v20, v2

    const/high16 v16, -0x40800000    # -1.0f

    goto/16 :goto_11

    :cond_12
    aget v13, v8, v4

    aget v13, v8, v2

    sget-object v13, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mMoonYHistList:[I

    array-length v14, v13

    const/high16 v16, -0x40800000    # -1.0f

    const-string v11, "SettingsHelper"

    if-nez v14, :cond_13

    const-string v12, "Error, dataList.length == 0"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v2

    const/16 v18, 0x0

    goto/16 :goto_c

    :cond_13
    array-length v14, v13

    move v15, v4

    move/from16 v17, v12

    const/16 v18, 0x0

    move v12, v15

    :goto_9
    if-ge v12, v14, :cond_14

    aget v19, v13, v12

    add-int v15, v15, v19

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_14
    if-gtz v15, :cond_15

    const-string v12, "Error, sumPixelCnt <= 0"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v2

    goto :goto_c

    :cond_15
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v12

    iget-object v12, v12, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v14, v12, v18

    const/high16 v19, 0x3f800000    # 1.0f

    if-lez v14, :cond_16

    div-float v19, v19, v12

    :cond_16
    const v12, -0x42555555

    const v14, 0x3bda740e

    mul-float v14, v14, v19

    add-float/2addr v14, v12

    int-to-float v12, v15

    mul-float/2addr v12, v14

    array-length v14, v13

    sub-int/2addr v14, v2

    move/from16 v20, v2

    move v15, v4

    move/from16 v19, v15

    :goto_a
    int-to-float v2, v15

    cmpg-float v2, v2, v12

    if-gez v2, :cond_18

    aget v2, v13, v14

    add-int/2addr v15, v2

    if-eqz v14, :cond_17

    mul-int/2addr v2, v14

    mul-int/lit8 v2, v2, 0x2

    add-int v19, v2, v19

    add-int/lit8 v14, v14, -0x1

    goto :goto_a

    :cond_17
    aget v2, v13, v4

    add-int v19, v19, v2

    :cond_18
    if-lez v15, :cond_1a

    if-gtz v19, :cond_19

    goto :goto_b

    :cond_19
    div-int v2, v19, v15

    int-to-float v2, v2

    sput v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mBYHistAva:F

    goto :goto_c

    :cond_1a
    :goto_b
    const-string v2, "Error, bPixelCnt or bYHistSum <= 0"

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    sget-object v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mBYHistAvaList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v11

    if-nez v11, :cond_1b

    move/from16 v11, v16

    goto :goto_e

    :cond_1b
    sget v11, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mBYHistAva:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x5

    if-le v11, v12, :cond_1c

    invoke-virtual {v2}, Ljava/util/ArrayList;->removeFirst()Ljava/lang/Object;

    :cond_1c
    move v11, v4

    move/from16 v15, v18

    :goto_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_1d

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v15, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_1d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    div-float v11, v15, v2

    :goto_e
    sput v11, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mBYHistAva:F

    aget v2, v8, v20

    cmpl-float v2, v11, v2

    const/16 v12, 0xf

    if-ltz v2, :cond_1f

    sget v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mMinInterval:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mMinInterval:I

    if-ge v2, v12, :cond_1e

    goto :goto_10

    :cond_1e
    sget-object v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mExpLvData:[I

    sget v8, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mExpLvDataIdx:I

    aget v2, v2, v8

    sput v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mExpLv:I

    sget v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mExpLvDataIdx:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mExpLvDataIdx:I

    if-gez v2, :cond_22

    sput v4, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mExpLvDataIdx:I

    goto :goto_f

    :cond_1f
    aget v2, v8, v4

    cmpg-float v2, v11, v2

    if-gtz v2, :cond_21

    sget v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mMinInterval:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mMinInterval:I

    if-ge v2, v12, :cond_20

    goto :goto_10

    :cond_20
    sget-object v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mExpLvData:[I

    sget v8, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mExpLvDataIdx:I

    aget v2, v2, v8

    sput v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mExpLv:I

    sget v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mExpLvDataIdx:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mExpLvDataIdx:I

    if-le v2, v10, :cond_22

    sput v10, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mExpLvDataIdx:I

    goto :goto_f

    :cond_21
    sget v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mMinInterval:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mMinInterval:I

    if-ge v2, v12, :cond_22

    goto :goto_10

    :cond_22
    :goto_f
    sput v4, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mMinInterval:I

    :goto_10
    sget v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mExpLv:I

    invoke-static {v7, v6, v2, v4}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkHintForCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    goto :goto_12

    :goto_11
    sput v4, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mExpLv:I

    sput v10, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mExpLvDataIdx:I

    sget-object v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mBYHistAvaList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    sget-object v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mMoonDetectedHist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    sput v16, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mBYHistAva:F

    invoke-static {v7, v6, v4, v4}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkHintForCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    goto :goto_12

    :cond_23
    move/from16 v20, v2

    invoke-static {v7, v6, v4, v4}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkHintForCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    goto :goto_12

    :cond_24
    move/from16 v20, v2

    move/from16 v17, v12

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isMoonDetectSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_26

    sget-boolean v2, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mIsMoonDetected:Z

    if-eqz v2, :cond_25

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_PREVIEW_SCENE_MODE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v2, v7, v6, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_12

    :cond_25
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_PREVIEW_SCENE_MODE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v2, v7, v6, v10}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_12

    :cond_26
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isOutDoorDetectSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_28

    sget-boolean v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sIsOutDoorScene:Z

    if-eqz v2, :cond_27

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_PREVIEW_SCENE_MODE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v2, v7, v6, v8}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_12

    :cond_27
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_PREVIEW_SCENE_MODE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v2, v7, v6, v10}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_12

    :cond_28
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_PREVIEW_SCENE_MODE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v2, v7, v6, v10}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :goto_12
    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setInsensorZoomForSession(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->getAntiBandingMode(Lcom/motorola/camera/fsm/camera/FsmContext;)I

    move-result v0

    if-ne v0, v9, :cond_29

    goto :goto_13

    :cond_29
    move v4, v0

    :goto_13
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2a
    iget-object v0, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_MOTION_CAPTURE:Z

    if-eqz v2, :cond_2c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result v2

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_MOTION_CAPTURE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v2, v0, v6, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2b
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_MOTION_CAPTURE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v2, v0, v6, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_2c
    :goto_14
    iget-object v0, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    move-object/from16 v2, p0

    iget v2, v2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMotionLevel:I

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_SUPPORT_IN_MOTION_LEVEL_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v6, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->USE_CUSTOM_ZSL:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2, v6, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CUSTOM_ZSL_NUM:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2, v6, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAFSalinet(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    move/from16 v1, v20

    invoke-static {v1, v6, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsFaceBeautyCapture(ILandroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceKeysRequired()Ljava/util/ArrayList;
    .locals 9

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_2
    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v6, v0, v4, v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v6, v0, v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getSubPreviewPhysicalCameraId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v7, v0, v6, v8}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRawOnly()Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v3, :cond_6

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v6

    new-instance v7, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda10;

    invoke-direct {v7, p0, v6, v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda10;-><init>(Ljava/util/ArrayList;ZLjava/lang/String;)V

    invoke-static {v7}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->forEachOfflineReprocCameraType(Ljava/util/function/Consumer;)V

    if-nez v6, :cond_7

    new-instance v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v6, v0, v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorVideoMode()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getPhysicalCamIdForJpegImageReader()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v7, v0, v6, v8}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v6, v0, v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez v2, :cond_9

    if-eqz v3, :cond_f

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isRawStreamNeeded()Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v3, v0, v4, v5}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v3, v0, v4, v5}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    if-eqz v3, :cond_c

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiYuvInputWithoutReproc()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    new-instance v3, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0, v0}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->forEachOfflineReprocCameraType(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_e
    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v3, v0, v4}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isRawStreamNeeded()Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v3, v0, v4}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v3, v1, v4}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_10

    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v3, v1, v4}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v3, v0, v1, v4}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isRawStreamNeeded()Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v2, v0, v1, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    new-instance v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v2, v0, v1, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_3
    return-object p0
.end method

.method public onTeardown(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-static {v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->unregisterListener(Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->cleanUpLockedBut(Ljava/util/List;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentSceneAdjustmentStatusEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupportedByCurrentMode(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isInSensorCropSupportedInSession()Z

    move-result v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropConfigOverrides:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mInSensorCropActivePhysicalCameraListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda5;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModePossible()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->SMART_HIGH_RES:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSmartHighResSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    invoke-static {v4, v5}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mZoomSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    invoke-static {v4, v5}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mAeSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    invoke-static {v4, v5}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHighResActivePhysicalCameraListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda5;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFlashSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    invoke-static {v2, v4}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    :cond_2
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfStateListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->stopHighResAutoSwitchDetection()V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreZoom:F

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreAe:I

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v0, p1, :cond_3

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v0, p1, :cond_3

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v0, p1, :cond_3

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v0, p1, :cond_6

    const-string p1, "IS_HIGH_RES_AUTO_SWITCH"

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_3
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->HIGH_RES_IN_PHOTO_MODE_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->showHighResAutoSwitchToast(Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    if-eqz p1, :cond_5

    iput-boolean v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->showSwitchToPhotoModeReminder(Z)V

    :cond_5
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->HOLD_STILL_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHoldStillPopupListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    invoke-static {v0, p1}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    iput v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    iput v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    :cond_6
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mIscLuxIdxThresholdMet:Ljava/lang/Boolean;

    iput-boolean v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMoonDetected:Z

    const/4 p1, 0x6

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSensorCropDisableCounter:I

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSensorCropEnableCounter:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mLastSensorCrop:I

    return-void
.end method

.method public final onUpdate(Landroid/os/Bundle;)V
    .locals 8

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->ISO100_GAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v2, v1, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, v1, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda14;-><init>(FILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHighResAutoSwitchAllowed:Z

    const/16 v2, 0xa

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isShotOngoing(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_TO_HIGH_RES_RG_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v6, v1, v5

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mToHighResRgThreshold:F

    :goto_0
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_TO_NORMAL_RES_RG_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v5, v6, v5

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v6, v5, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mToNormalResRgThreshold:F

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    if-lt v0, v2, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForSmoothSwitchCase(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v3, v0, v7}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForKnifeSwitchCase(ZLjava/lang/Object;Lcom/motorola/camera/utility/ZoomSegment;)V

    :goto_2
    iput v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    goto/16 :goto_4

    :cond_3
    iput v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    goto/16 :goto_4

    :cond_4
    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    if-lt v0, v2, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForSmoothSwitchCase(Z)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v4, v0, v7}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForKnifeSwitchCase(ZLjava/lang/Object;Lcom/motorola/camera/utility/ZoomSegment;)V

    :goto_3
    iput v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    goto :goto_4

    :cond_6
    iput v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isShotOngoing(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isAeOkForAutoHighResDetection()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUltraResReminderRgThreshold:F

    iget-boolean v5, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    if-eqz v5, :cond_9

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_8

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    if-lt v0, v2, :cond_b

    iput-boolean v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    iput v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->showSwitchToPhotoModeReminder(Z)V

    goto :goto_4

    :cond_8
    iput v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    goto :goto_4

    :cond_9
    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    if-lt v0, v2, :cond_b

    iput-boolean v4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    iput v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->showSwitchToPhotoModeReminder(Z)V

    goto :goto_4

    :cond_a
    iput v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    :cond_b
    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isInSensorCropSupportedInSession()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/motorola/camera/JsonConfig;->inSensorCropHasLuxIdxThresholdRequirement()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/motorola/camera/JsonConfig;->isSupportFastFrameScene()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTouchDownFrameCollection()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sLastSceneIntentRequested:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-class v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sSceneLockedForCapture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_c

    goto :goto_5

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_c
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mIscLuxIdxThresholdMet:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->getNewLuxIdxThreshMetCond(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mIscLuxIdxThresholdMet:Ljava/lang/Boolean;

    if-eq v1, v0, :cond_d

    iput v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSensorCropEnableCounter:I

    iput v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSensorCropDisableCounter:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ISC_LUX_IDX_THRESH_MET"

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mIscLuxIdxThresholdMet:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FULL_FRAME_CONFIG_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v5, v0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_d
    :goto_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getInSensorCropEnableKey()Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getInSensorCropEnableKey()Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result p1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mLastSensorCrop:I

    if-eq p1, v0, :cond_e

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mLastSensorCrop:I

    iput v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSensorCropEnableCounter:I

    iput v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSensorCropDisableCounter:I

    :cond_e
    if-ne p1, v4, :cond_f

    iget p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSensorCropEnableCounter:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSensorCropEnableCounter:I

    goto :goto_6

    :cond_f
    iget p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSensorCropDisableCounter:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSensorCropDisableCounter:I

    :cond_10
    :goto_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sMoonChooseScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p1, v0, :cond_12

    sget-boolean p1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sOrigIsOutDoorScene:Z

    sget-boolean v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sIsOutDoorScene:Z

    if-ne p1, v0, :cond_11

    if-eqz v0, :cond_13

    goto :goto_7

    :cond_11
    sput-boolean v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sOrigIsOutDoorScene:Z

    :cond_12
    :goto_7
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz p0, :cond_13

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FULL_FRAME_CONFIG_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_13
    return-void
.end method

.method public setupFullYuvImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v0, v7}, Lcom/motorola/camera/settings/SettingsHelper;->getYuvImageSize(Lcom/motorola/camera/settings/CameraType;Z)Landroid/util/Size;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/16 v1, 0x23

    const/16 v4, 0x8

    invoke-static {v5, v1, v4, v0, v3}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReaderWrapper(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Lcom/motorola/camera/utility/ImageReaderWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v4, 0x19

    invoke-direct {v1, v4}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    iget-object p0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    const/16 v6, 0x23

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, p0, v1, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public setupJpegImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 8

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->HIGH_RES_BURST_DISABLE_FRONT:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v1, v1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumSet;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v2

    invoke-static {v1}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v1

    if-le v2, v1, :cond_1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->HIGH_RES_BURST_DISABLE:Lcom/motorola/camera/AppFeatures$Feature;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v2

    if-le v2, v1, :cond_1

    :goto_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->REPROC_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaUpscaleOnly(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getStandardPictureSizeForCurrentAspect(Z)Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalDepthMode()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x4

    :goto_2
    move v5, v0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v0, 0x6

    goto :goto_2

    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getPhysicalCamIdForJpegImageReader()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupJpegImageReaderImpl(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/util/Size;ILcom/motorola/camera/settings/CameraType;Ljava/lang/String;)V

    return-void
.end method

.method public final setupJpegImageReaderImpl(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/util/Size;ILcom/motorola/camera/settings/CameraType;Ljava/lang/String;)V
    .locals 7

    invoke-static {p4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/16 v0, 0x100

    invoke-static {p2, v0, p3, p4, v3}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReaderWrapper(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Lcom/motorola/camera/utility/ImageReaderWrapper;

    move-result-object p3

    new-instance p4, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {p4, v1}, Lcom/google/android/gms/tasks/zzb;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3, p4, v0}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mJpegImageReaders:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object p3, p3, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    const/16 v6, 0x100

    move-object v5, p2

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    const/4 p2, 0x0

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p3, v0, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public setupMcf(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Z)V
    .locals 18

    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_1

    move-object/from16 v7, p3

    goto :goto_2

    :cond_1
    move-object/from16 v7, p2

    :goto_2
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, p0

    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->getMcfStreamSize(Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;

    move-result-object v4

    if-nez v4, :cond_2

    goto/16 :goto_10

    :cond_2
    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;-><init>()V

    sget-object v5, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_MONO_ONLY_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v8, v5}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_AUX_BAYER_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v8, v5}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->AUX:Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    invoke-static {v5, v6}, Lcom/motorola/camera/settings/SettingsManager;->getPhysicalCameraType(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;)Lcom/motorola/camera/settings/CameraType;

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalDepthMode()Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v11

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsHelper;->isDualStreamDepthMode(Z)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v5, :cond_5

    if-eqz v6, :cond_7

    if-eqz v11, :cond_6

    goto :goto_3

    :cond_5
    if-eqz v9, :cond_8

    if-eqz v10, :cond_7

    if-eqz v11, :cond_6

    :goto_3
    const/4 v5, 0x4

    goto :goto_4

    :cond_6
    const/4 v5, 0x3

    goto :goto_4

    :cond_7
    const/4 v5, 0x2

    goto :goto_4

    :cond_8
    move v5, v12

    :goto_4
    invoke-static {v12, v7, v5}, Lcom/motorola/camera/JsonConfig;->getBufferCnt(ILcom/motorola/camera/settings/CameraType;I)I

    move-result v5

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v15, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->YUV_420_888:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    move v6, v12

    move v12, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v9

    sget-object v10, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->DUAL:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    sget-object v11, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->DUAL_DEPTH:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v9

    if-eqz v9, :cond_b

    :goto_5
    move-object v10, v11

    goto :goto_6

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalDepthMode()Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_5

    :cond_a
    sget-object v10, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->NORMAL:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    :cond_b
    :goto_6
    iput-object v10, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mCameraMode:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    if-eqz p4, :cond_c

    :try_start_0
    sget-object v9, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->FULL_PRIMARY:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    :goto_7
    move-object v14, v9

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v1, v5

    goto/16 :goto_d

    :cond_c
    sget-object v9, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->FULL_AUX:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    goto :goto_7

    :goto_8
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->getCameraSensorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v11

    iget-object v13, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mCameraMode:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    move-object/from16 v16, v13

    const/4 v13, 0x0

    invoke-static/range {v8 .. v16}, Lcom/motorola/camera/mcf/Mcf;->createInputStream(Ljava/lang/String;Ljava/lang/String;IIIILcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;Lcom/motorola/camera/mcf/McfInputStream$StreamMode;)Lcom/motorola/camera/mcf/McfInputStream;

    move-result-object v10

    iput-object v10, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_a

    :cond_d
    :goto_9
    move-object v2, v4

    move-object v4, v0

    goto :goto_b

    :cond_e
    :goto_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiYuvInputWithoutReproc()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_f

    goto :goto_9

    :goto_b
    :try_start_1
    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;

    move-object v6, v1

    move-object v10, v7

    move-object v7, v8

    move-object v8, v9

    move v3, v12

    move-object v9, v14

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;-><init>(Lcom/motorola/camera/settings/CameraType;Landroid/util/Size;ILcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/settings/CameraType;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_2

    move-object v8, v5

    :try_start_2
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->forEachOfflineReprocCameraType(Ljava/util/function/Consumer;)V

    move-object v1, v8

    goto/16 :goto_e

    :catch_1
    move-exception v0

    :goto_c
    move-object v1, v8

    goto :goto_d

    :catch_2
    move-exception v0

    move-object v8, v5

    goto :goto_c

    :cond_f
    move-object v11, v0

    move-object v10, v7

    move-object v13, v9

    move-object v9, v8

    move-object v8, v5

    const/16 v6, 0x23

    invoke-static {v4, v6, v12, v10, v3}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v5, v11, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableListener()Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v5

    iget-object v7, v11, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-virtual {v7}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v5, v11, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v0

    new-instance v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v17, v5

    move-object v5, v4

    move-object/from16 v4, v17

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;IZ)V

    move-object v4, v5

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessError; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v8

    move-object v8, v1

    move-object v1, v0

    move-object v0, v9

    move-object v9, v2

    move-object v2, v0

    move-object v7, v10

    move-object v0, v11

    move v5, v12

    move-object v3, v13

    move-object v6, v14

    :try_start_3
    invoke-static/range {v0 .. v9}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->checkCreateRawStream(Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;ILcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_e

    :catch_3
    move-exception v0

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception: create stream: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_f

    :cond_10
    :goto_10
    return-void
.end method

.method public setupPermissionsRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionsManager;->isPermissionGranted(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "perm_request_code"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    new-instance v0, Lcom/motorola/camera/PermissionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/PermissionCallback;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/PermissionsManager;->mCallback:Lcom/motorola/camera/PermissionsManager$PermissionResultCallback;

    return-void
.end method

.method public setupPreview(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;)V
    .locals 11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCameraPreviewProcessingNeeded()Z

    move-result v0

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/util/Size;

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v6, p2, v4, v0}, Lcom/motorola/camera/utility/SurfaceUtil;->newDelayPreviewImageReader(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/16 v7, 0x23

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v0, v8, v1, v9}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v6, p2, v4, v0}, Lcom/motorola/camera/utility/SurfaceUtil;->newDelayPreviewImageReader(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {p2, v8, v1, v9}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v6, p2, v4, v0}, Lcom/motorola/camera/utility/SurfaceUtil;->newDelayPreviewImageReader(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    new-instance v10, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/16 v7, 0x23

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v10, v8, v1, v9}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v10}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getSubPreviewPhysicalCameraId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v6, p2, v4, v0}, Lcom/motorola/camera/utility/SurfaceUtil;->newDelayPreviewImageReader(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-virtual {p2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/16 v7, 0x23

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {p0, v8, v1, v9}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getSubPreviewPhysicalCameraId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v6, p2, v4, v0}, Lcom/motorola/camera/utility/SurfaceUtil;->newDelayPreviewImageReader(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-virtual {p2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/16 v7, 0x23

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {p0, v8, v1, v9}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_2
    return-void
.end method

.method public final startHighResAutoSwitchDetection()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHighResAutoSwitchAllowed:Z

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHighResAutoSwitchTurnOnRunnable:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0xbb8

    :goto_0
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final stopHighResAutoSwitchDetection()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHighResAutoSwitchAllowed:Z

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHighResAutoSwitchTurnOnRunnable:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
