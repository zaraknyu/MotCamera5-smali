.class public Lcom/motorola/camera/fsm/camera/modes/VideoMode;
.super Lcom/motorola/camera/fsm/camera/modes/AbstractMode;
.source "SourceFile"


# static fields
.field public static mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;


# instance fields
.field public final envListener:Lcom/motorola/camera/fsm/camera/modes/VideoMode$$ExternalSyntheticLambda0;

.field public final mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

.field public mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public mHolder:Lcom/tinder/StateMachine;

.field public mJpegImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

.field public mPreviewImageReader:Landroid/media/ImageReader;

.field public final mRecorderPrepareListener:Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;

.field public mVideoSizeLimited:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mVideoSizeLimited:Z

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mRecorderPrepareListener:Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->envListener:Lcom/motorola/camera/fsm/camera/modes/VideoMode$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    return-void
.end method

.method public static clearSessionData(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    iput-object v1, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mSurface:Landroid/view/Surface;

    :cond_1
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SURFACE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    :cond_3
    return-void
.end method

.method public static setBuilder(ILcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V
    .locals 8

    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v2, 0x1

    if-ne v2, p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopDetectionAllowSupport()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :goto_0
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDepthMode()Z

    move-result v3

    const-string v5, "ORIENTATION"

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    if-eqz v3, :cond_2

    invoke-virtual {p1, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    sget v7, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    invoke-virtual {v3, v5, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v7

    invoke-static {v7}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne p0, v4, :cond_3

    invoke-virtual {p1, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    sget v4, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setControlAppRtb(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDepthModeInBackMainCamera()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v4, Lcom/motorola/camera/settings/CustomKeyHelper;->SINGLE_CAM_RTB_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v3, v1, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v1, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFaceStatisticReporting(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {v1, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRoi(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-boolean v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mIsMaster:Z

    if-eqz v3, :cond_5

    invoke-static {v1, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFlashByTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_5
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoStabilization(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabEnableAndSupport()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareQCom()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    sget-object v4, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_END_OF_STREAM_SUPPORT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_7

    sget-object v4, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_END_OF_STREAM_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v3, v1, v6}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVstabSmartEis(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setEisMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setPreviewEisInVideo(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKSmvrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v3, v1, p3}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->setVideoFlip(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V

    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, v3, v1, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRecordMirror(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v3, v1, p3}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->setFps(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, p1, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoAutoFps(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoIqDynamicFps(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_ISO_PRI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v4, 0x0

    invoke-virtual {v3, p3, v1, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_EXP_PRI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v3, p3, v1, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, p1, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsLidClosed(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v3

    invoke-static {p3, v1, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRingFlash(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMultiCameraFeatureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkQuickPreviewOn(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoHDR10Mode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSHDRMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkSHDRMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoNightVision(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAutoMacro(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAutoFocusTrackingEnable(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p3, v1, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVstabIhc(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    if-ne v2, p0, :cond_8

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, v1, v5, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkHintForCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    :cond_8
    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAiCameraMode(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/ShotType;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAFSalinet(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result p1

    sget-object p2, Lcom/motorola/camera/settings/CustomKeyHelper;->HDR10_MODE_TUNING_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p0, v1, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setFps(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V
    .locals 4

    iget-object v0, p3, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-ne v1, p0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/VideoFormat;

    invoke-static {p1}, Lcom/motorola/camera/VideoHelper;->getMtkAvailableSmvrModes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/MtkAvailableSmvrModeData;

    iget-object v1, p3, Lcom/motorola/camera/MtkAvailableSmvrModeData;->mVideoSize:Landroid/util/Size;

    iget p3, p3, Lcom/motorola/camera/MtkAvailableSmvrModeData;->mMaxFps:I

    iget-object v2, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/util/Range;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v0, v1, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iget-object p1, p3, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object p0

    array-length p1, p0

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p1, :cond_3

    aget-object v1, p0, p3

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setVideoFlip(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V
    .locals 3

    iget v0, p2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_VIDEO_FLIP_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, p2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFlip:Z

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_VIDEO_FLIP_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, p1, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iput-boolean v1, p2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFlip:Z

    return-void
.end method


# virtual methods
.method public final getPreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getSessionStreamRequest()Lcom/motorola/camera/StreamRequest;
    .locals 3

    sget-object p0, Lcom/motorola/camera/VideoHelper;->ALLOWED_VIDEO_SIZES:Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/VideoHelper;->getRecorderDataForMode(ILcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    new-instance v0, Lcom/motorola/camera/StreamRequest;

    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/StreamRequest;-><init>(FLandroid/util/Size;)V

    return-object v0
.end method

.method public final isPermissionRequired(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 1

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionsManager;->isPermissionGranted(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/DnDHandler;->isDnDPermissionRequired(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->isNotificationPermissionRequired()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onCloseSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mJpegImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/utility/ImageReaderWrapper;->close()V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mJpegImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoRecording(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfInputStream;->close()V

    :cond_3
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->clearSessionData(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->clearBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mSessionSurfacesClosed:Z

    return-void
.end method

.method public final onCreateCaptureRequests(Ljava/util/ArrayList;Z)V
    .locals 2

    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x5

    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoSnapshotSupportedForCurrentMode()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x4

    invoke-direct {p0, v1, v0, p2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final onCreateSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v4, 0x1

    const/16 v5, 0x100

    const-string v6, "RECORDER_DATA"

    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const/4 v12, 0x0

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoRecording(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    new-instance v6, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v13, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v7, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mSurface:Landroid/view/Surface;

    iget-object v8, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    const/16 v18, 0x0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-direct/range {v13 .. v18}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v6, v3, v13, v12}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->setupPreviewSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto/16 :goto_2

    :cond_0
    sget-object v2, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    sget-object v8, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    const-string/jumbo v8, "shotType"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/motorola/camera/storage/StorageUtils;->isFreeBytesSufficientWithFallback(Lcom/motorola/camera/ShotType;Landroidx/media3/exoplayer/WakeLockManager;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VideoMode"

    const-string v8, "Storage space is too low, video recording may not work properly"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->getNewCaptureSequenceId()I

    move-result v8

    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v10

    invoke-direct {v2, v8, v10}, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    sget-object v8, Lcom/motorola/camera/VideoHelper;->ALLOWED_VIDEO_SIZES:Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/motorola/camera/VideoHelper;->getRecorderDataForMode(ILcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    move-result-object v8

    iget v10, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    iput v10, v8, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    iget-object v10, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    iput-object v10, v8, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getMediaRecorderMaxFileSize()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->setupPreviewSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v13

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->getCameraSensorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v12

    iget-object v12, v12, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v12, Landroid/util/Size;

    invoke-static {v4, v13, v4}, Lcom/motorola/camera/JsonConfig;->getBufferCnt(ILcom/motorola/camera/settings/CameraType;I)I

    move-result v18

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v16

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v17

    const/16 v19, 0x0

    sget-object v20, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->FULL_PRIMARY:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    sget-object v21, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->YUV_420_888:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    sget-object v22, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->NORMAL:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    invoke-static/range {v14 .. v22}, Lcom/motorola/camera/mcf/Mcf;->createInputStream(Ljava/lang/String;Ljava/lang/String;IIIILcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;Lcom/motorola/camera/mcf/McfInputStream$StreamMode;)Lcom/motorola/camera/mcf/McfInputStream;

    move-result-object v12

    sput-object v12, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v12

    iget-object v12, v12, Lcom/motorola/camera/settings/CaptureIntent;->mExtras:Landroid/os/Bundle;

    const-string v13, "android.intent.extra.sizeLimit"

    invoke-virtual {v12, v13}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v12, v13, v10, v11}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    :cond_3
    const-string v13, "android.intent.extra.durationLimit"

    invoke-virtual {v12, v13}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v12, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    :goto_0
    iput-wide v10, v8, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mMaxFileSize:J

    iput v12, v8, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoDuration:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x2

    iput v10, v8, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoEncoderProfile:I

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDolbyVisionMode()Z

    move-result v10

    if-eqz v10, :cond_6

    iput v5, v8, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoEncoderProfile:I

    :cond_6
    :goto_1
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "SURFACE"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/view/Surface;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/view/Surface;->isValid()Z

    move-result v12

    if-nez v12, :cond_8

    :cond_7
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_8
    iput-object v10, v8, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mSurface:Landroid/view/Surface;

    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-boolean v6, Lcom/motorola/camera/Util;->KPI:Z

    sget-object v7, Lcom/motorola/camera/CameraKpi$KPI;->VIDEO_CREATE_FD:Lcom/motorola/camera/CameraKpi$KPI;

    if-eqz v6, :cond_9

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v9}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_9
    :try_start_0
    iget-object v9, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    const-string v10, "fileName"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/tasks/zzr;

    invoke-direct {v10, v9}, Lcom/google/android/gms/tasks/zzr;-><init>(Lcom/motorola/camera/saving/FileName;)V

    iput-object v10, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-virtual {v10}, Lcom/google/android/gms/tasks/zzr;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_a

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v6}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_a
    new-instance v6, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    new-instance v7, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-direct {v7}, Lcom/motorola/camera/capturedmediadata/RecordingTime;-><init>()V

    invoke-direct {v6, v2, v8, v7}, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;-><init>(Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    new-instance v2, Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-direct {v2, v6}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Lcom/tinder/StateMachine;

    if-nez v2, :cond_b

    new-instance v2, Lcom/tinder/StateMachine;

    const/16 v6, 0x19

    invoke-direct {v2, v6, v1, v8}, Lcom/tinder/StateMachine;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Lcom/tinder/StateMachine;

    :cond_b
    iget-object v13, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    move-object v9, v8

    new-instance v8, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;

    iget-object v11, v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mRecorderPrepareListener:Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;-><init>(Lcom/motorola/camera/capturedmediadata/MediaRecorderData;Ljava/io/FileDescriptor;Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;ZLandroid/os/Handler;)V

    invoke-virtual {v2, v8}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    move-object v2, v9

    :goto_2
    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoSnapshotSupportedForCurrentMode()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/motorola/camera/VideoHelper;->getSnapshotSize(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v2, v5, v4, v6, v15}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReaderWrapper(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Lcom/motorola/camera/utility/ImageReaderWrapper;

    move-result-object v4

    iput-object v4, v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mJpegImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    new-instance v5, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v5, v14}, Lcom/google/android/gms/tasks/zzb;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v13, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mJpegImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    iget-object v5, v5, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v16

    const/16 v18, 0x100

    move-object/from16 v17, v2

    invoke-direct/range {v13 .. v18}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v4, v3, v13, v12}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_c
    iput-boolean v12, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mSessionSurfacesClosed:Z

    return-void

    :catch_0
    move-exception v0

    const/4 v12, 0x0

    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_d

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_d
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3, v0, v12}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final onSetup(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 5

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

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMacroCameraWithWide(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getZoomForMacroCameraWithWide()F

    move-result v0

    div-float/2addr v1, v0

    sget-boolean v0, Lcom/motorola/camera/utility/ZoomHelper;->sIsLight:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionOn()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->getFormatForMode(I)Lcom/motorola/camera/VideoFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->isThermalRestricted(Lcom/motorola/camera/VideoFormat;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mVideoSizeLimited:Z

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-static {v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->registerListener(Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDepthMode()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_LOW_LIGHT_LUX:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->envListener:Lcom/motorola/camera/fsm/camera/modes/VideoMode$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onSetupCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/ShotType;)V
    .locals 9

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-eqz v2, :cond_1

    iget v2, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    if-ne v2, v4, :cond_1

    iget-object p3, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p3

    iget-object p3, p3, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    sget-object v2, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    iget-object v2, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v4}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v4}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v2, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFaceStatisticReporting(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {v2, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRoi(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, v4, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v2, p0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v2, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFlashByTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoStabilization(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setEisMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setPreviewEisInVideo(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKSmvrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2, p3}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->setVideoFlip(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0, v2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRecordMirror(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, p0, v2, p3}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->setFps(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v2, p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsLidClosed(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result p1

    invoke-static {p0, v2, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRingFlash(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setControlAppRtb(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDepthModeInBackMainCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object p1, Lcom/motorola/camera/settings/CustomKeyHelper;->SINGLE_CAM_RTB_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {p1, p0, v2, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMultiCameraFeatureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkQuickPreviewOn(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAFSalinet(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    :cond_1
    sget-object v2, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    if-ne v2, p3, :cond_8

    iget v5, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    if-ne v5, v1, :cond_8

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "SEQ_ID"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v8, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_SNAPSHOT_WITH_ALL_SURFACES:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v7, v7, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v7, Ljava/util/EnumSet;

    invoke-virtual {v7, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v7}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v7}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_2
    sget-object v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v7}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v8, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v8, v8, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-virtual {p3, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v7, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p1, v7}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoAutoFps(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object v7, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoIqDynamicFps(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {p3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v6, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegThumbnailSize()Landroid/util/Size;

    move-result-object v4

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, v6, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v6

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {p3, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getThumbnailJpegQuality()I

    move-result v6

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {p3, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGeoEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Landroid/location/Location;

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, v6, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v1, v5, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setEdgeMode(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v1, v5, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setNoiseReduction(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v4, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v4, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p3, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFaceStatisticReporting(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {p3, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRoi(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {p3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {p3, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFlashByTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoStabilization(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v4, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabEnableAndSupport()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareQCom()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_END_OF_STREAM_SUPPORT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p0, :cond_5

    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_END_OF_STREAM_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, p3, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVstabSmartEis(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setEisMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setPreviewEisInVideo(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsLidClosed(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v4

    invoke-static {p0, p3, v4}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRingFlash(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setControlAppRtb(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDepthModeInBackMainCamera()Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v4, Lcom/motorola/camera/settings/CustomKeyHelper;->SINGLE_CAM_RTB_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v4, p0, p3, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_6
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMultiCameraFeatureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkQuickPreviewOn(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoHDR10Mode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSHDRMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkSHDRMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAutoMacro(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoNightVision(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAutoFocusTrackingEnable(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0, p3, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRecordMirror(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMirrorSupported()Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setStillFlip(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    :cond_7
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, p0, p3, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAiCameraMode(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/ShotType;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAFSalinet(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result p1

    sget-object p2, Lcom/motorola/camera/settings/CustomKeyHelper;->HDR10_MODE_TUNING_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p0, p3, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void

    :cond_8
    sget-object p0, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    if-ne p0, p3, :cond_9

    iget p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    if-ne p0, v4, :cond_9

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    invoke-static {v1, p1, p2, p0}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->setBuilder(ILcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V

    :cond_9
    return-void
.end method

.method public onSetupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 3

    iget v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    return-void

    :cond_0
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    const/4 v0, 0x3

    invoke-static {v0, p1, p2, p0}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->setBuilder(ILcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v0, "RECORDER_DATA"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    invoke-static {v1, p1, p2, p0}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->setBuilder(ILcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V

    return-void
.end method

.method public onSurfaceKeysRequired()Ljava/util/ArrayList;
    .locals 3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoSnapshotSupportedForCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public final onTeardown(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-static {v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->unregisterListener(Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDepthMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->envListener:Lcom/motorola/camera/fsm/camera/modes/VideoMode$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoRecording(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->cleanUpLockedBut(Ljava/util/List;)V

    return-void
.end method

.method public final setupPermissionsRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 3

    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v1

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v1, v2}, Lcom/motorola/camera/PermissionsManager;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "perm_request_code"

    if-nez v1, :cond_0

    const/4 p0, 0x4

    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/DnDHandler;->isDnDPermissionRequired(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/VideoHelper;->isNotificationPermissionRequired()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x7

    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    new-instance v0, Lcom/motorola/camera/PermissionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/PermissionCallback;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/PermissionsManager;->mCallback:Lcom/motorola/camera/PermissionsManager$PermissionResultCallback;

    return-void
.end method

.method public final setupPreviewSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCameraPreviewProcessingNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/util/Size;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v6, v0, v4, v1}, Lcom/motorola/camera/utility/SurfaceUtil;->newDelayPreviewImageReader(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/16 v7, 0x23

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    const/4 p0, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, v1, p0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_0
    return-void
.end method

.method public final teardown(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoRecording(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->onTeardown(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->teardown(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    return-void
.end method
