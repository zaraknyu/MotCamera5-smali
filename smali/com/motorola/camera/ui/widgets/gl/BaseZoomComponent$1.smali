.class public final Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mIsDragging:Z

.field public mLongPressed:Z

.field public this$0:Ljava/lang/Object;


# virtual methods
.method public onTouchDown(Lcom/motorola/camera/settings/CameraType;)Z
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isKnifeSwitchAllowedWhileRecording(Z)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mLongPressed:Z

    if-nez v2, :cond_3

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mIsDragging:Z

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomSupported(Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionCaptureOn()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(JZ)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_DOWN:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return p0

    :cond_3
    :goto_1
    return v3
.end method

.method public onTouchUp()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mLongPressed:Z

    if-nez v1, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mIsDragging:Z

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragType:I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(JZ)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_UP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/Notifier;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;I)V

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public toggleSingleTap(Lcom/motorola/camera/utility/ZoomSegment;FLcom/motorola/camera/settings/CameraType;)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;FI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
