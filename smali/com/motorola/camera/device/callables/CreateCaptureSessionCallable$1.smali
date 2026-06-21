.class public final Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    const-string v0, "CreateCaptureSessionCallable"

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->HAL_CLOSE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/Fsm;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v1

    iget-object v2, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v3

    if-eq v2, v3, :cond_1

    const-string p0, "onClosed received for camera device that is no longer valid!"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/motorola/camera/device/callables/CloseSessionListener;->onSessionClose()V

    iput-object v2, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    :cond_2
    new-instance v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/CameraCaptureSession;I)V

    invoke-static {p0, v1}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->-$$Nest$mpostCallbackWithListener(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string p1, "CameraInfo is null"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/CameraCaptureSession;I)V

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-static {p0, v0}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->-$$Nest$mpostCallbackWithListener(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 11

    const-string v0, "CreateCaptureSessionCallable"

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v2, v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mMcfPreviewConfig:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v3

    iget-object v4, v1, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/Fsm;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v3

    iput-object p1, v3, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "CameraInfo is null"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v3}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->-$$Nest$mpostCallbackWithListener(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;Ljava/util/function/Consumer;)V

    :goto_0
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->HAL_CREATE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_0
    const-string p0, "CreateSession"

    const/4 v3, 0x3

    invoke-static {v3, p0}, Lcom/motorola/camera/shared/MotSysTrace;->endAsync(ILjava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_8

    if-eqz v2, :cond_8

    iget-boolean p0, v2, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mUseMcf:Z

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->isStarted(Z)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isCameraActivityStarted()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v3

    sget-object v4, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    sget-object v5, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_MONO_ONLY_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v3, v5}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    sget-object v5, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_AUX_BAYER_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v3, v5}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v3, v4

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_MONO_ONLY_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v5, v6}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    iget-object v5, v1, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_AUX_BAYER_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v5, v6}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    move v5, p0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v5, 0x1

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget v8, v2, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mWidth:I

    iget v9, v2, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mHeight:I

    iget v10, v2, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mFormat:I

    invoke-static {v8, v9, v10, v3, v5}, Lcom/motorola/camera/mcf/Mcf;->openPreview(IIILcom/motorola/camera/mcf/McfPreview$PreviewChanType;Z)V

    sget-boolean v3, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Mcf.openPreview dur:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7, v3, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_7
    iget-object v0, v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mMcfOnNotifyListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object v3, v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/motorola/camera/mcf/Mcf;->setNotifyListener(Lcom/motorola/camera/mcf/Mcf$OnNotifyListener;Landroid/os/Handler;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v2, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mWidth:I

    iget v3, v2, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mHeight:I

    iget v2, v2, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;->mFormat:I

    invoke-static {v0, v3, v2, v4, p0}, Lcom/motorola/camera/mcf/Mcf;->openPreview(IIILcom/motorola/camera/mcf/McfPreview$PreviewChanType;Z)V

    :cond_8
    new-instance p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/CameraCaptureSession;I)V

    invoke-static {v1, p0}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->-$$Nest$mpostCallbackWithListener(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/Fsm;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object p0

    iget-object p1, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mStopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/camera/device/callables/StopRepeatingListener;->onStopRepeating()V

    iput-object v0, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mStopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mAbortCapturesListener:Lcom/motorola/camera/device/callables/AbortCapturesListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/motorola/camera/device/callables/AbortCapturesListener;->onAbortCaptures()V

    iput-object v0, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mAbortCapturesListener:Lcom/motorola/camera/device/callables/AbortCapturesListener;
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    const-string p1, "CreateCaptureSessionCallable"

    const-string v0, "CameraInfo is null"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
