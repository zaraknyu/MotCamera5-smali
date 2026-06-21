.class public final synthetic Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda13;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda13;->$r8$classId:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_2

    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickIDLE:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->resetPreview()V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickerTouchDownX:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickerTouchDownY:F

    new-instance p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v6, v1

    invoke-direct {p2, v2, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p2, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->dispatchSpotColorRoiUpdate(Landroid/graphics/PointF;Z)V

    move-object p2, p1

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    monitor-enter p2

    :try_start_0
    iput-boolean v4, p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->waitColorUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->updateIconsVisibility$2(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SPOT_COLOR_DRAG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_7

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_8

    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickIDLE:Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickerTouchDownX:F

    sub-float/2addr p2, v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickerTouchDownY:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v2, p2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    add-float/2addr p2, v1

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, p2

    invoke-direct {v1, v2, p2, v6, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p1, Landroid/graphics/Rect;

    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p2, p2, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 p2, 0x5

    int-to-float p2, p2

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, v2

    new-instance v2, Landroid/graphics/RectF;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v6, p2

    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v7, p2

    iget v8, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float/2addr v8, p2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    invoke-direct {v2, v6, v7, v8, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p1, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, v3

    sub-float/2addr p1, p2

    iget p2, v1, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    iget p1, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result p2

    :goto_1
    div-float/2addr p2, v3

    sub-float/2addr p1, p2

    goto :goto_2

    :cond_4
    iget p1, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, v3

    add-float/2addr p2, p1

    iget p1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_5

    iget p1, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result p2

    goto :goto_1

    :cond_5
    iget p1, v1, Landroid/graphics/RectF;->left:F

    :goto_2
    iget p2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v3

    sub-float/2addr p2, v6

    iget v6, v1, Landroid/graphics/RectF;->top:F

    cmpl-float p2, p2, v6

    if-lez p2, :cond_6

    iget p2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    :goto_3
    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    goto :goto_4

    :cond_6
    iget p2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v3

    add-float/2addr v6, p2

    iget p2, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float p2, v6, p2

    if-gez p2, :cond_7

    iget p2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    goto :goto_3

    :cond_7
    iget p2, v1, Landroid/graphics/RectF;->top:F

    :goto_4
    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-direct {p1, p2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->dispatchSpotColorRoiUpdate(Landroid/graphics/PointF;Z)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_7

    :cond_8
    :goto_5
    if-nez v2, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v4, :cond_a

    new-instance p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v5, v1

    invoke-direct {p2, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p2, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->dispatchSpotColorRoiUpdate(Landroid/graphics/PointF;Z)V

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    monitor-enter p1

    :try_start_2
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->startHideRingAnimation()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p1

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickIDLE:Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_7

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_a
    :goto_6
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    move v4, v5

    :goto_7
    return v4

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1, p2}, Lcom/motorola/camera/EventListener;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    return v5

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_c

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    move-result v4

    goto :goto_8

    :cond_b
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HIDE_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    :goto_8
    return v4

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1, p2}, Lcom/motorola/camera/EventListener;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    return v5

    :pswitch_3
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1, p2}, Lcom/motorola/camera/EventListener;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    return v5

    :pswitch_4
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelScreenTouchObservableComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_10

    if-eq v2, v4, :cond_e

    if-eq v2, v1, :cond_d

    goto :goto_9

    :cond_d
    invoke-interface {v0, p1, p2}, Lcom/motorola/camera/EventListener;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_9

    :cond_e
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelScreenTouchObservableComponent;->isClosing:Z

    if-eqz v1, :cond_f

    invoke-static {v5}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelScreenTouchObservableComponent;->notifyControlPanelAction(Z)V

    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelScreenTouchObservableComponent;->isClosing:Z

    :cond_f
    invoke-interface {v0, p1, p2}, Lcom/motorola/camera/EventListener;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_9

    :cond_10
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->CLOSE_STATES:Landroid/util/ArraySet;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkn;->isControlPanelOpen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelScreenTouchObservableComponent;->isClosing:Z

    if-eqz v1, :cond_11

    invoke-interface {v0, p1, p2}, Lcom/motorola/camera/EventListener;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_11
    :goto_9
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelScreenTouchObservableComponent;->isClosing:Z

    return p0

    :pswitch_5
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_12

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v6, "IS_SELECTED"

    invoke-virtual {v1, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_12
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_a

    :cond_13
    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result p1

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr p1, v0

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v0

    div-float/2addr v0, v3

    add-float/2addr v0, v1

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_14

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_14

    goto :goto_a

    :cond_14
    move v4, v5

    :goto_a
    return v4

    :pswitch_6
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1, p2}, Lcom/motorola/camera/EventListener;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    return v5

    :pswitch_7
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1, p2}, Lcom/motorola/camera/EventListener;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    return v5

    :pswitch_8
    check-cast p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_15

    const-wide/16 v0, 0x12c

    cmp-long p1, p1, v0

    if-lez p1, :cond_16

    :cond_15
    iput-boolean v5, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    :cond_16
    invoke-virtual {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->showHideDropdown()V

    iput-boolean v4, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    :cond_17
    return v5

    :pswitch_9
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz p1, :cond_18

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_18
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mDownUpDetector:Lcom/motorola/camera/ui/DownUpDetector;

    if-eqz p0, :cond_1d

    iget-object p1, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/DownUpDetector$DownUpListener;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_1b

    if-eq v0, v4, :cond_19

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    goto :goto_b

    :cond_19
    iget-boolean v0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    if-nez v0, :cond_1a

    goto :goto_b

    :cond_1a
    iput-boolean v5, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    invoke-interface {p1, p2}, Lcom/motorola/camera/ui/DownUpDetector$DownUpListener;->onUp(Landroid/view/MotionEvent;)V

    goto :goto_b

    :cond_1b
    iget-boolean v0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    if-ne v4, v0, :cond_1c

    goto :goto_b

    :cond_1c
    iput-boolean v4, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    invoke-interface {p1, p2}, Lcom/motorola/camera/ui/DownUpDetector$DownUpListener;->onDown(Landroid/view/MotionEvent;)V

    :cond_1d
    :goto_b
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
