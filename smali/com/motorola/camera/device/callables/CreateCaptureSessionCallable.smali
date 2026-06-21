.class public final Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

.field public final mColorSpace:Landroid/graphics/ColorSpace$Named;

.field public final mCreateCaptureSessionListener:Ljava/lang/ref/WeakReference;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsHighSpeedVideo:Z

.field public final mMcfOnNotifyListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

.field public final mMcfPreviewConfig:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;

.field public final mOutputConfigurations:Ljava/util/ArrayList;

.field public final mReprocInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

.field public final mSessionConfigurationRequired:Z

.field public final mStateListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;


# direct methods
.method public static -$$Nest$mpostCallbackWithListener(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;Ljava/util/function/Consumer;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p1, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "null listener, unable to run "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CreateCaptureSessionCallable"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$CreateCaptureSessionCameraListener;Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;Landroid/os/Handler;Landroid/os/Handler;Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;Landroid/hardware/camera2/params/InputConfiguration;Landroid/graphics/ColorSpace$Named;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p4, p6}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    new-instance p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mStateListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;

    new-instance p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mMcfOnNotifyListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mOutputConfigurations:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mHandler:Landroid/os/Handler;

    iput-object p8, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mMcfPreviewConfig:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;

    iput-object p9, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mReprocInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    iput-object p10, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mColorSpace:Landroid/graphics/ColorSpace$Named;

    iput-boolean p11, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mIsHighSpeedVideo:Z

    iput-object p2, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    iput-boolean p12, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mSessionConfigurationRequired:Z

    return-void
.end method


# virtual methods
.method public final call()Lcom/tinder/StateMachine;
    .locals 8

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/Fsm;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_8

    const-string v1, "CreateSession"

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(ILjava/lang/String;)V

    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->HAL_CREATE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mSessionConfigurationRequired:Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mReprocInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    iget-boolean v3, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mIsHighSpeedVideo:Z

    iget-object v4, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mStateListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;

    iget-object v5, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    if-eqz v3, :cond_1

    :try_start_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v3, Landroid/hardware/camera2/params/SessionConfiguration;

    iget-object v6, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mOutputConfigurations:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v3, v1, v6, v7, v4}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mColorSpace:Landroid/graphics/ColorSpace$Named;

    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/params/SessionConfiguration;->setColorSpace(Landroid/graphics/ColorSpace$Named;)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/params/SessionConfiguration;->setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eqz p0, :cond_4

    invoke-virtual {v3, p0}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    :cond_4
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->getSurfaces()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, v2, p0, v4, v5}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->getSurfaces()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0, v4, v5}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->getSurfaces()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0, v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    :goto_1
    new-instance p0, Lcom/tinder/StateMachine;

    const/16 v0, 0x18

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    return-object p0

    :cond_8
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/tinder/StateMachine;

    invoke-direct {v0, p0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public final getSurfaces()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mOutputConfigurations:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CreateCaptureSessionCallable"

    return-object p0
.end method
