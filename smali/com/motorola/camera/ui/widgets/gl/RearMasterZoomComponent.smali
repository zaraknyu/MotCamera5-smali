.class public final Lcom/motorola/camera/ui/widgets/gl/RearMasterZoomComponent;
.super Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;
.source "SourceFile"


# virtual methods
.method public final getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLandscapeLayout()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsFoldLandscape:Z

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v0

    :goto_1
    sget v3, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->ZOOM_SLIDER_BG:F

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    neg-float v3, v3

    :goto_2
    add-float/2addr v0, v3

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsFoldLandscape:Z

    if-eqz p0, :cond_4

    const/high16 p0, -0x40800000    # -1.0f

    mul-float/2addr v0, p0

    :cond_4
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0, v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p0
.end method

.method public final getCameraType()Lcom/motorola/camera/settings/CameraType;
    .locals 0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_0

    :goto_1
    new-instance v1, Landroid/graphics/PointF;

    sget v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->ZOOM_SLIDER_BG:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    mul-float/2addr v2, p0

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "RearMasterZoomComponent"

    return-object p0
.end method

.method public final handleFrameTexture()Z
    .locals 0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized onDraw([F[F[F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->onDraw([F[F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public final onPreDraw([F[F[F)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->onPreDraw([F[F[F)Z

    move-result p1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

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

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_8

    const/16 v0, 0x28

    if-eq p1, v0, :cond_7

    const/16 v0, 0x29

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4c

    const/4 v3, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4d

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    const-class p1, Lcom/motorola/camera/ui/widgets/gl/RearMasterZoomComponent;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-wide/16 v3, 0x190

    const/4 v5, 0x0

    move-object v1, p0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateUpdateLayout(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;IJZ)V

    return-void

    :pswitch_1
    move-object v0, p0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    return-void

    :cond_1
    move-object v0, p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    if-eq p2, p0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/RearMasterZoomComponent;->visibleToggleTexture()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_2
    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mPeerToggleUnreleased:Z

    return-void

    :cond_3
    move-object v0, p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    if-eq p2, p0, :cond_4

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_4
    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mPeerToggleUnreleased:Z

    return-void

    :cond_5
    move-object v0, p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/RearMasterZoomComponent;->resetTextureState()V

    return-void

    :cond_7
    move-object v0, p0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    return-void

    :cond_8
    move-object v0, p0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/os/Bundle;

    const-string p0, "DUAL_CAPTURE_AUDIO_LENS_SWITCH_MODE_CHANGE"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Latch;->setupZoomModelForAudioLensSwitch(Lcom/motorola/camera/settings/CameraType;)V

    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object p2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->updateToggleState(Landroidx/compose/runtime/Latch;)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->resetActiveSegment()V

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/Latch;->getSegmentByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/Latch;->getZoomMaxX(Lcom/motorola/camera/utility/ZoomSegment;)F

    move-result p2

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomRatio(ILcom/motorola/camera/settings/CameraType;Z)V

    :cond_a
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final registerSubFsmListeners$4(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final resetTextureState()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/RearMasterZoomComponent;->visibleToggleTexture()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->enableToggleTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "CAMERA_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/CameraType;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mActiveCameraType:Lcom/motorola/camera/settings/CameraType;

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mActiveCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enteringZoomState(Lcom/google/zxing/Result;)V

    return-void

    :cond_3
    if-nez v0, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    const-string p1, "TYPE"

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    :goto_2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragType:I

    if-ne p1, v2, :cond_7

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    return-void

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->enableToggleTexture()V

    return-void

    :cond_6
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->stateChanged(Lcom/google/zxing/Result;)V

    :cond_7
    return-void
.end method

.method public final visibleToggleTexture()Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->isZoomButtonEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->isZoomButtonEnable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
