.class public final Lcom/motorola/camera/fsm/camera/modes/DualCaptureMode;
.super Lcom/motorola/camera/fsm/camera/modes/PhotoMode;
.source "SourceFile"


# instance fields
.field public final mIsMtkPlatform:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;-><init>()V

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/DualCaptureMode;->mIsMtkPlatform:Z

    return-void
.end method

.method public static getDualCaptureCameraIds()[I
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "DualCaptureMode"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public static setMtkPreviewEis(Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoStabilizationConfigured(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoStabilizationConfigured(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->MTK_PREVIEW_EIS_DISABLE:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_EIS_FEATURE_PREVIEW_EIS_ON:[I

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_EIS_FEATURE_PREVIEW_EIS_OFF:[I

    :goto_2
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_STREAMING_FEATURE_PIP_PREVIEW_EIS:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v2, v1, p0, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getSessionStreamRequest()Lcom/motorola/camera/StreamRequest;
    .locals 2

    new-instance p0, Lcom/motorola/camera/StreamRequest;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/StreamRequest;-><init>(FLandroid/util/Size;)V

    return-object p0
.end method

.method public final onCreateCaptureRequests(Ljava/util/ArrayList;Z)V
    .locals 2

    const/4 p0, 0x1

    if-eqz p2, :cond_0

    new-instance p2, Lcom/motorola/camera/fsm/RequestWrapper;

    invoke-direct {p2, p0, p0, p0}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p2, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, v1}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onCreateSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    return-void
.end method

.method public final onSetupCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/ShotType;)V
    .locals 3

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v2, v0, p3, p1, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAeFpsRange(IILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsLidClosed(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p3, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFaceStatisticReporting(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/modes/DualCaptureMode;->mIsMtkPlatform:Z

    if-eqz p0, :cond_1

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/DualCaptureMode;->getDualCaptureCameraIds()[I

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_STREAMING_FEATURE_PIP_DEVICES:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p3, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object p1, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONFIGURE_SETTING_PROPRIETARY_ON:[I

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONFIGURE_SETTING_PROPRIETARY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p3, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/modes/DualCaptureMode;->setMtkPreviewEis(Lcom/motorola/camera/fsm/RequestWrapper;)V

    :cond_0
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_1
    return-void
.end method

.method public final onSetupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 4

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    iget-object v2, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3, v1, v0, p1, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAeFpsRange(IILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsLidClosed(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v2, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v0, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFaceStatisticReporting(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/modes/DualCaptureMode;->mIsMtkPlatform:Z

    if-eqz p0, :cond_1

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/DualCaptureMode;->getDualCaptureCameraIds()[I

    move-result-object p1

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_STREAMING_FEATURE_PIP_DEVICES:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, p0, v0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object p1, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONFIGURE_SETTING_PROPRIETARY_ON:[I

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONFIGURE_SETTING_PROPRIETARY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, p0, v0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/modes/DualCaptureMode;->setMtkPreviewEis(Lcom/motorola/camera/fsm/RequestWrapper;)V

    :cond_0
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_1
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkHintForCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    return-void
.end method

.method public final onSurfaceKeysRequired()Ljava/util/ArrayList;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
