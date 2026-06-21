.class public abstract Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;
.super Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;
.source "SourceFile"


# instance fields
.field public mActiveCameraType:Lcom/motorola/camera/settings/CameraType;

.field public mExistFromZoom:Z

.field public mExitFromPrelockFocus:Z

.field public mPeerToggleUnreleased:Z

.field public mSplitMode:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->navBarBackground:I

    invoke-direct {p2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    return-void
.end method


# virtual methods
.method public final enableToggleTexture()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    return-void
.end method

.method public final exitingZoomState()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->getHideDelay()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(JZ)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;I)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->getHideDelay()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;I)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->getHideDelay()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragType:I

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExistFromZoom:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumping:Z

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragType:I

    return-void
.end method

.method public final getBackSwitchBundle(Lcom/motorola/camera/settings/CameraType;ZLcom/motorola/camera/settings/CameraType;F)Landroid/os/Bundle;
    .locals 0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p4, "CAMERA_TYPE"

    invoke-virtual {p0, p4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "ORIGIN_CAMERA_TYPE"

    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "IS_MANUAL_JUMP"

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "SWITCH_CASE"

    sget-object p2, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->DUAL_CAPTURE_ZOOM:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DUAL_CAPTURE_CAMERA_TYPE_IS_MASTER"

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureRearMasterCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-object p0
.end method

.method public final getDragBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "CAMERA_TYPE"

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "VALUE"

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mScrollOffset:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->getUnitSegWidth()I

    move-result v1

    const-string v3, "ZOOM_SEG_UNIT"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "VIDEO_RECORDING"

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "ENABLE"

    invoke-virtual {v0, p0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "SAME_ID"

    invoke-virtual {v0, p0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final hideZoomTextures()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mActiveCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->hideZoomTextures(Z)V

    return-void
.end method

.method public final isVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomBarVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

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

.method public final isZoomButtonEnable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sget v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    mul-float/2addr v1, p0

    cmpl-float p0, v0, v1

    if-ltz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized loadTextures()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExistFromZoom:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mPeerToggleUnreleased:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExitFromPrelockFocus:Z

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->loadTextures()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->registerListener$6(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onSATFallback(ZZ)V
    .locals 0

    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mSplitMode:Z

    if-eq p2, p1, :cond_1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mSplitMode:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomRatio(ILcom/motorola/camera/settings/CameraType;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->updateLayout$1()V

    :cond_1
    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onZoomCompleted()V
    .locals 0

    return-void
.end method

.method public final onZoomStateChange(FLcom/motorola/camera/settings/CameraType;)V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomRatio(ILcom/motorola/camera/settings/CameraType;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final registerListener$6(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_PREVIEW_SWAP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG_END:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_DOWN:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_UP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void

    :cond_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_PREVIEW_SWAP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG_END:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_DOWN:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_UP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method

.method public final setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v6

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v7, v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v7}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v7

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v7, v8, v6}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/google/zxing/Result;

    move-result-object v7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v7, v7, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    div-float/2addr v7, v6

    goto :goto_0

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    sget-object v8, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v6

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v6, v9

    float-to-int v6, v6

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    sget-object v11, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v10

    mul-float/2addr v10, v9

    float-to-int v10, v10

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    sget-object v13, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/Latch;->getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getMaxUiRatio()I

    move-result v14

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v15}, Landroidx/compose/runtime/Latch;->getActiveUnLimitedZoomEntityMap()Ljava/util/HashMap;

    move-result-object v15

    move/from16 v16, v9

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v17

    const/4 v4, 0x1

    const/4 v2, -0x1

    if-eqz v17, :cond_f

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eq v3, v4, :cond_7

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    sget-object v5, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v15, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    if-ne v3, v1, :cond_3

    sget-boolean v1, Landroidx/compose/runtime/Latch;->mVirtualTeleEnabled:Z

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v15, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    move v12, v2

    :cond_5
    invoke-virtual {v15, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_6
    move v6, v2

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/Latch;->getSegmentByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent$1;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v4, :cond_6

    const/4 v5, 0x2

    if-eq v1, v5, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_8

    const/4 v3, 0x4

    if-eq v1, v3, :cond_8

    goto :goto_3

    :cond_8
    move v6, v2

    move v10, v6

    :cond_9
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mArcZoomBarSegments:[F

    if-eqz v3, :cond_e

    array-length v5, v3

    if-le v5, v4, :cond_e

    if-eq v6, v2, :cond_a

    goto :goto_4

    :cond_a
    if-eq v10, v2, :cond_b

    move v6, v10

    goto :goto_4

    :cond_b
    move v6, v12

    :goto_4
    array-length v2, v3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_e

    aget v5, v3, v4

    mul-float v5, v5, v16

    float-to-int v5, v5

    if-lt v5, v6, :cond_c

    if-ge v5, v14, :cond_c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    if-lt v5, v14, :cond_d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_e
    :goto_7
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentRatios(Ljava/util/ArrayList;)V

    return-void

    :cond_f
    if-ne v9, v4, :cond_13

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent$1;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v4, :cond_12

    const/4 v3, 0x3

    if-eq v1, v3, :cond_11

    const/4 v3, 0x5

    if-eq v1, v3, :cond_10

    goto :goto_8

    :cond_10
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v1, v6, v2, v2, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentRatios(IIII)V

    goto :goto_8

    :cond_11
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v1, v2, v2, v12, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentRatios(IIII)V

    goto :goto_8

    :cond_12
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v1, v2, v10, v2, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentRatios(IIII)V

    :goto_8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    new-instance v2, Landroid/util/Range;

    const/16 v3, 0x27

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    filled-new-array {v2}, [Landroid/util/Range;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentWidth([Landroid/util/Range;ZF)V

    goto/16 :goto_a

    :cond_13
    const/4 v4, 0x2

    if-ne v9, v4, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v1, v6, v10, v2, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentRatios(IIII)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v2

    const/16 v4, 0x9

    invoke-static {v1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v5, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v5, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v5, v3, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    filled-new-array {v4, v5}, [Landroid/util/Range;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentWidth([Landroid/util/Range;ZF)V

    goto/16 :goto_a

    :cond_14
    invoke-virtual {v15, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v3, v2, v10, v12, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentRatios(IIII)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v2

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    invoke-static {v1}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomXByBlendingCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v1

    invoke-static {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v1

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    new-instance v6, Landroid/util/Range;

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v5, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v5, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v5, v2, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    filled-new-array {v6, v5}, [Landroid/util/Range;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v3, v1, v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentWidth([Landroid/util/Range;ZF)V

    goto/16 :goto_a

    :cond_15
    invoke-virtual {v15, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v4, v6, v2, v12, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentRatios(IIII)V

    goto :goto_9

    :cond_16
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v4, v6, v10, v2, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentRatios(IIII)V

    :goto_9
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v4, v4, v6

    const/16 v6, 0x9

    invoke-static {v2, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v2

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v4, v4, v8

    invoke-static {v1}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomXByBlendingCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v1

    invoke-static {v4, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v1

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    new-instance v8, Landroid/util/Range;

    invoke-direct {v8, v5, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v5, Landroid/util/Range;

    add-int/2addr v1, v6

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v5, v3, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    filled-new-array {v8, v5}, [Landroid/util/Range;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v4, v1, v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentWidth([Landroid/util/Range;ZF)V

    goto/16 :goto_a

    :cond_17
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v1, v6, v10, v12, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentRatios(IIII)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v2

    const/16 v4, 0x9

    invoke-static {v1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v5, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v5, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v5, v3, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    filled-new-array {v4, v5}, [Landroid/util/Range;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentWidth([Landroid/util/Range;ZF)V

    goto :goto_a

    :cond_18
    const/4 v2, 0x3

    if-ne v9, v2, :cond_19

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v2, v6, v10, v12, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentRatios(IIII)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v4, v4, v6

    const/16 v6, 0x9

    invoke-static {v2, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v2

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v4, v4, v6

    invoke-static {v1}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomXByBlendingCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v1

    invoke-static {v4, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v1

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    new-instance v6, Landroid/util/Range;

    invoke-direct {v6, v5, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v5, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v5, v3, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v3, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    filled-new-array {v6, v5, v3}, [Landroid/util/Range;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v4, v1, v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setSegmentWidth([Landroid/util/Range;ZF)V

    :cond_19
    :goto_a
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setZoomCompStyle(Z)V

    return-void
.end method

.method public final setupZoomTextures()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enableZoomTexture(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isBackCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->updateLayout$1()V

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->resetTextureState()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final showLabelMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public stateChanged(Lcom/google/zxing/Result;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->visibleToggleTexture()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->exitingZoomState()V

    return-void

    :cond_1
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v6

    if-ne v2, v6, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v1, v2, v6}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    :cond_4
    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExistFromZoom:Z

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mPeerToggleUnreleased:Z

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExitFromPrelockFocus:Z

    return-void

    :cond_5
    :goto_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_6

    move-object v3, v7

    goto :goto_1

    :cond_6
    const-string v3, "USE_CASE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/UseCase;

    :goto_1
    if-eqz v2, :cond_7

    const-string v4, "IS_MANUAL_JUMP"

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    move v5, v8

    :cond_7
    if-nez v2, :cond_8

    move-object v4, v7

    goto :goto_2

    :cond_8
    const-string v4, "ORIGIN_CAMERA_TYPE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/settings/CameraType;

    :goto_2
    if-nez v2, :cond_9

    move-object v8, v7

    goto :goto_3

    :cond_9
    const-string v8, "CAMERA_TYPE"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/settings/CameraType;

    :goto_3
    if-nez v2, :cond_a

    goto :goto_4

    :cond_a
    const-string v7, "ZOOM_SEGMENT"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/motorola/camera/utility/ZoomSegment;

    :goto_4
    if-eqz v7, :cond_b

    iput-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    :cond_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v3, v0, :cond_28

    if-nez v5, :cond_28

    invoke-static {v1, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingMaxRealZoomX()F

    move-result v0

    div-float/2addr v6, v0

    invoke-static {v6, v1}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    return-void

    :cond_c
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v0, :cond_28

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v4, v0, :cond_28

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingWideMaxRealZoomX()F

    move-result v0

    div-float/2addr v6, v0

    invoke-static {v6, v1}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    return-void

    :cond_d
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v9

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mHideToggleListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    if-eqz v9, :cond_f

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v8, v10, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    const/4 v6, 0x3

    invoke-virtual {v1, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->updateLayoutSize(Z)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->updatePostTranslation(Z)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSliderPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    :cond_e
    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumping:Z

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void

    :cond_f
    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x4

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_6

    :cond_10
    invoke-virtual {v0, v3, v8}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->registerSubFsmListeners$4(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    new-array v1, v9, [F

    fill-array-data v1, :array_0

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    array-length v3, v1

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    array-length v2, v1

    sub-int/2addr v2, v8

    aput v6, v1, v2

    :cond_12
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/Latch;->setupZoomModelForAudioLensSwitch(Lcom/motorola/camera/settings/CameraType;)V

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateToggleTextureBgStyle()V

    :cond_13
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->updateToggleState(Landroidx/compose/runtime/Latch;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->resetActiveSegment()V

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/Latch;->getSegmentByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/Latch;->getZoomMaxX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomRatio(ILcom/motorola/camera/settings/CameraType;Z)V

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mEnableHaptic:Z

    return-void

    :cond_14
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_15

    const-string v2, "PRELOCK_FOCUS_EXIT"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v5, v8

    :cond_15
    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExitFromPrelockFocus:Z

    return-void

    :cond_16
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v6

    const-wide/16 v11, 0x0

    if-eqz v6, :cond_1a

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExitFromPrelockFocus:Z

    if-eqz v1, :cond_17

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExitFromPrelockFocus:Z

    return-void

    :cond_17
    iput-boolean v8, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExistFromZoom:Z

    if-nez v1, :cond_19

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mPeerToggleUnreleased:Z

    if-nez v1, :cond_19

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0, v11, v12, v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(JZ)V

    :cond_18
    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    goto :goto_5

    :cond_19
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->enableToggleTexture()V

    :goto_5
    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExistFromZoom:Z

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mPeerToggleUnreleased:Z

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPendingCameraType:Lcom/motorola/camera/settings/CameraType;

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->sendBackSwitchEvent(Lcom/motorola/camera/settings/CameraType;ZLcom/motorola/camera/settings/CameraType;F)V

    iput-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPendingCameraType:Lcom/motorola/camera/settings/CameraType;

    return-void

    :cond_1a
    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iput-boolean v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    return-void

    :cond_1b
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v6}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2d

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v13}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2d

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v14}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c

    goto/16 :goto_a

    :cond_1c
    sget-object v15, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v15}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1d

    invoke-virtual {v4, v9, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    return-void

    :cond_1d
    invoke-virtual {v1, v15}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v9

    const-class v15, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;

    if-eqz v9, :cond_1e

    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateUpdateLayoutForRecording(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;I)V

    return-void

    :cond_1e
    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2a

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v1, v6}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v1, v6}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v1, v14}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v1, v14}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v1, v13}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v1, v13}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto/16 :goto_8

    :cond_1f
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v5, v10, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    invoke-virtual {v0, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->registerSubFsmListeners$4(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->resetFlags()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v8, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    const/16 v1, 0x64

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExistFromZoom:Z

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExitFromPrelockFocus:Z

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    iput-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void

    :cond_20
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    goto/16 :goto_7

    :cond_21
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v6}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_28

    const-string v2, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    return-void

    :cond_22
    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    return-void

    :cond_23
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "VIDEO_START_FAILURE"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_6

    :cond_24
    iput-boolean v8, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/Latch;->setVideoRecording(Z)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    invoke-virtual {v0, v2, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->updateZoomSlider(ILcom/motorola/camera/settings/CameraType;Z)V

    return-void

    :cond_25
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enableZoomToggle(Z)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/Latch;->setVideoRecording(Z)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->resetActiveSegment()V

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    invoke-virtual {v0, v2, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->updateZoomSlider(ILcom/motorola/camera/settings/CameraType;Z)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0, v11, v12, v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(JZ)V

    :cond_26
    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateUpdateLayoutForRecording(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;I)V

    return-void

    :cond_27
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enableZoomToggle(Z)V

    :cond_28
    :goto_6
    return-void

    :cond_29
    :goto_7
    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    return-void

    :cond_2a
    :goto_8
    iput-boolean v8, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExistFromZoom:Z

    if-nez v1, :cond_2c

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mPeerToggleUnreleased:Z

    if-nez v1, :cond_2c

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0, v11, v12, v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(JZ)V

    :cond_2b
    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    goto :goto_9

    :cond_2c
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->enableToggleTexture()V

    :goto_9
    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mPeerToggleUnreleased:Z

    return-void

    :cond_2d
    :goto_a
    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method

.method public final declared-synchronized unloadTextures()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExistFromZoom:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExitFromPrelockFocus:Z

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->registerListener$6(Z)V

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->unloadTextures()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final updateLayout$1()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSliderPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    return-void
.end method

.method public final updateZoomSlider(ILcom/motorola/camera/settings/CameraType;Z)V
    .locals 7

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->checkHapticFeedback(ILcom/motorola/camera/settings/CameraType;Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {v0}, Landroidx/compose/runtime/Latch;->getActiveUnLimitedZoomEntityMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_8

    if-eqz p3, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result p3

    if-eqz p3, :cond_8

    int-to-float p3, p1

    div-float/2addr p3, v1

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne p2, v0, :cond_0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v5, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    cmpg-float v4, p3, v4

    if-gez v4, :cond_0

    sget-object p3, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {p0, p2, p3, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleJump(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    goto/16 :goto_1

    :cond_0
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v5, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    cmpl-float v4, p3, v4

    if-gez v4, :cond_2

    :cond_1
    sget-object v4, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne p2, v4, :cond_7

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v6, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    cmpg-float v5, p3, v5

    if-gez v5, :cond_7

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    cmpg-float p3, p3, v0

    if-gez p3, :cond_4

    sget-object p3, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne p2, p3, :cond_4

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/Latch;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/Latch;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result p3

    if-eqz p3, :cond_5

    move-object v4, v0

    :cond_5
    move-object v0, v4

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    :goto_0
    invoke-virtual {p0, p2, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleJump(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    goto :goto_1

    :cond_7
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_8

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {p3, v4}, Landroidx/compose/runtime/Latch;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p0, p2, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleJump(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    :cond_8
    :goto_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    int-to-float p3, p1

    div-float/2addr p3, v1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumping:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v2, v3

    :cond_a
    invoke-virtual {p2, p3, v2}, Landroidx/compose/runtime/Latch;->updateZoomX(FZ)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomValueX$1(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setValue(ILjava/lang/String;)V

    return-void
.end method
