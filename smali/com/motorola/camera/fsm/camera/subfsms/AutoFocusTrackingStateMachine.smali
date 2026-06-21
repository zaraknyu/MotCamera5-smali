.class public final Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine;
.super Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
.source "SourceFile"


# virtual methods
.method public final onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_RESULT_ROI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine$TouchTrackFocusListener;

    check-cast p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    iget-object v0, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTimeoutCancelRunnable:Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;

    iget-object v1, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    array-length v3, p1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    aget v3, p1, v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v3, :cond_2

    aget v3, p1, v6

    if-nez v3, :cond_2

    aget v3, p1, v5

    if-nez v3, :cond_2

    aget v3, p1, v4

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTrackingRoiView:Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v3}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v3}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTracking:Z

    if-nez v3, :cond_3

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    iput-boolean v6, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTracking:Z

    aget v0, p1, v2

    int-to-float v0, v0

    aget v1, p1, v6

    int-to-float v1, v1

    aget v2, p1, v5

    int-to-float v2, v2

    aget v3, p1, v4

    int-to-float v3, v3

    iget-object v4, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v4, :cond_5

    iget v5, v4, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v5, v5

    cmpl-float v6, v2, v5

    if-lez v6, :cond_4

    move v2, v5

    :cond_4
    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    cmpl-float v5, v3, v4

    if-lez v5, :cond_5

    move v3, v4

    :cond_5
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewToScreenMat:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_6
    :goto_1
    iget-boolean v3, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTracking:Z

    if-eqz v3, :cond_7

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    iput-boolean v2, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTracking:Z

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;I)V

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method public final onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final resetState()V
    .locals 0

    return-void
.end method
