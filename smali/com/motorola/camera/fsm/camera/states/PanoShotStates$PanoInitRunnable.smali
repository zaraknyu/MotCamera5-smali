.class public final Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/panorama/PanoListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/PanoShotStates;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PANO_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 2

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v1, 0x7f120107

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 2

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    new-instance p1, Lcom/motorola/camera/panorama/PanoCameraInfo;

    .line 4
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 5
    invoke-static {p3}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object p3

    .line 6
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    .line 7
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p3}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p1, Lcom/motorola/camera/panorama/PanoCameraInfo;->mPreviewSize:Landroid/util/Size;

    .line 8
    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 9
    iput p3, p1, Lcom/motorola/camera/panorama/PanoCameraInfo;->mCameraOrientation:I

    .line 10
    sget p3, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 11
    iput p3, p1, Lcom/motorola/camera/panorama/PanoCameraInfo;->mDeviceOrientation:I

    .line 12
    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    iget p3, p3, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    .line 14
    invoke-static {p3}, Lcom/motorola/camera/shared/OrientationEvent;->getSurfaceRotationDegrees(I)I

    move-result p3

    .line 15
    iput p3, p1, Lcom/motorola/camera/panorama/PanoCameraInfo;->mDisplayRotation:I

    .line 16
    sget-object p3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "FOCAL_LENGTH"

    .line 17
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    .line 18
    invoke-static {p2}, Lcom/motorola/camera/panorama/PanoHelper;->getAov(F)[F

    move-result-object p2

    const/4 p3, 0x0

    .line 19
    aget p3, p2, p3

    const/4 v0, 0x1

    aget p2, p2, v0

    .line 20
    iput p3, p1, Lcom/motorola/camera/panorama/PanoCameraInfo;->mViewAngleH:F

    .line 21
    iput p2, p1, Lcom/motorola/camera/panorama/PanoCameraInfo;->mViewAngleV:F

    .line 22
    sget-object p2, Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    .line 23
    new-instance p3, Lcom/motorola/camera/panorama/PanoInitCallable;

    invoke-direct {p3, p1, p0}, Lcom/motorola/camera/panorama/PanoInitCallable;-><init>(Lcom/motorola/camera/panorama/PanoCameraInfo;Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;)V

    invoke-virtual {p2, p3}, Lcom/motorola/camera/panorama/PanoramaService;->addCallable(Lcom/motorola/camera/panorama/PanoCallable;)V

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 25
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    .line 26
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mCaptureTone:Landroid/media/MediaActionSound;

    .line 27
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->mCaptureTone:Landroid/media/MediaActionSound;

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
