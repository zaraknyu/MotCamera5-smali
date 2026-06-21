.class public final Lcom/motorola/camera/editor/ui/ScaleImageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mZooming:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mScrollDistance:F

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mDownCameraType:Lcom/motorola/camera/settings/CameraType;

    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_0
    const-string p0, "e2"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :pswitch_1
    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/GestureRecognizer;

    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    iget v1, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, p3, p4}, Lcom/motorola/camera/ui/UIManager;->getVerticalDirection(FF)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    invoke-virtual {p0, p3, p4}, Lcom/motorola/camera/ui/UIManager;->getHorizontalDirection(FF)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v0

    :cond_3
    :goto_1
    const-string p0, "ON_DOWN"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide p3

    invoke-virtual {p2, p0, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "DIRECTION"

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "TYPE"

    invoke-virtual {p2, p0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "ORIGIN"

    new-instance p3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p3, p4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->GESTURE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    const/4 p0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const-string p0, "GestureRecognizer"

    const-string p1, "Rx invalid fling event. Throwing it away!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    :goto_3
    return p0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/editor/ui/ScaleImageView;

    iget p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_7

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->cancelAllAnimator()V

    new-instance p1, Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;

    const/high16 p2, 0x42700000    # 60.0f

    div-float/2addr p3, p2

    div-float/2addr p4, p2

    invoke-direct {p1, p0, p3, p4}, Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;-><init>(Lcom/motorola/camera/editor/ui/ScaleImageView;FF)V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mFlingAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_7
    :goto_4
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void

    :pswitch_0
    if-nez p1, :cond_0

    const-string p0, "GestureRecognizer"

    const-string p1, "Rx invalid long press event. Throwing it away!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/GestureRecognizer;

    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    iget-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mDownEventHandled:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mInLongPress:Z

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v0, "LOCATION"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CAPTURE_TRIGGER"

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/UIManager;->dispatchLongPress(Landroid/os/Bundle;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    iget v3, v0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->$r8$classId:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v1, v0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mUiEventScale:F

    div-float/2addr v2, v1

    div-float v1, p4, v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v0, v0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    move v5, v6

    goto/16 :goto_9

    :cond_0
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_1
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewType:I

    if-ne v3, v5, :cond_2

    move v6, v5

    :cond_2
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->maxRect:Lcom/motorola/camera/SecureDataHelper;

    if-nez v3, :cond_4

    if-eqz v6, :cond_3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v3

    :goto_1
    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->maxRect:Lcom/motorola/camera/SecureDataHelper;

    :cond_4
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIsFoldLandscape:Z

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->maxRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v8}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v7, v8}, Lcom/motorola/camera/SecureDataHelper;->setSize(FF)V

    goto :goto_2

    :cond_5
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->maxRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v8}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v7, v8}, Lcom/motorola/camera/SecureDataHelper;->setSize(FF)V

    :goto_2
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->maxRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v3, v3, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->maxRect:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {v7}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v7, 0x3cf5c28f    # 0.03f

    mul-float/2addr v3, v7

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->maxRect:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {v7, v3, v3}, Lcom/motorola/camera/SecureDataHelper;->inset(FF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->rect:Lcom/motorola/camera/SecureDataHelper;

    if-nez v3, :cond_7

    if-eqz v6, :cond_6

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v3

    goto :goto_3

    :cond_6
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v3

    :goto_3
    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->rect:Lcom/motorola/camera/SecureDataHelper;

    :cond_7
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mIsFoldLandscape:Z

    const v7, 0x3ea8f5c3    # 0.33f

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->rect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v8}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v9}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    invoke-virtual {v3, v8, v9}, Lcom/motorola/camera/SecureDataHelper;->setSize(FF)V

    goto :goto_4

    :cond_8
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->rect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v8}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v9}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    invoke-virtual {v3, v8, v9}, Lcom/motorola/camera/SecureDataHelper;->setSize(FF)V

    :goto_4
    const/4 v3, 0x4

    if-eqz v6, :cond_9

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v7, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    goto :goto_5

    :cond_9
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v7, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    :goto_5
    invoke-virtual {v7, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->maxRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->rect:Lcom/motorola/camera/SecureDataHelper;

    iget v8, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpg-float v9, v8, v4

    const/high16 v10, 0x40000000    # 2.0f

    if-gez v9, :cond_a

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, v2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v10

    add-float/2addr v9, v8

    iget-object v8, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v10

    cmpl-float v8, v9, v8

    if-lez v8, :cond_b

    iget-object v8, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v9, v2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    sub-float/2addr v8, v9

    neg-float v8, v8

    div-float/2addr v8, v10

    iput v8, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    goto :goto_6

    :cond_a
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, v2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v10

    add-float/2addr v9, v8

    iget-object v8, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v10

    cmpl-float v8, v9, v8

    if-lez v8, :cond_b

    iget-object v8, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v9, v2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    iput v8, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    :cond_b
    :goto_6
    iget v8, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    cmpg-float v4, v8, v4

    if-gez v4, :cond_c

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v2}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v8

    div-float/2addr v8, v10

    add-float/2addr v8, v4

    invoke-virtual {v1}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v4

    div-float/2addr v4, v10

    cmpl-float v4, v8, v4

    if-lez v4, :cond_d

    invoke-virtual {v1}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v1

    invoke-virtual {v2}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v10

    iput v1, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    goto :goto_7

    :cond_c
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v2}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v8

    div-float/2addr v8, v10

    add-float/2addr v8, v4

    invoke-virtual {v1}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v4

    div-float/2addr v4, v10

    cmpl-float v4, v8, v4

    if-lez v4, :cond_d

    invoke-virtual {v1}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v1

    invoke-virtual {v2}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v10

    iput v1, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    :cond_d
    :goto_7
    iput-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-eqz v6, :cond_e

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_8

    :cond_e
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    invoke-virtual {v1, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :goto_8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_f

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_f
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_10

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_10
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPDrag:Z

    if-nez v1, :cond_11

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_11
    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPDrag:Z

    goto :goto_9

    :cond_12
    iget-object v0, v0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    monitor-enter v3

    :try_start_0
    iget-object v0, v3, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto/16 :goto_0

    :goto_9
    return v5

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_1
    iget-object v0, v0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    const-string v3, "e2"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomSupported(Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    iput-boolean v5, v0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mZooming:Z

    iget v7, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v1, 0x10e

    if-ne v7, v1, :cond_13

    move v1, v2

    goto :goto_a

    :cond_13
    neg-float v1, v2

    :goto_a
    sub-float v1, v1, p4

    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mScrollDistance:F

    add-float v6, v2, v1

    iput v6, v0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mScrollDistance:F

    iget-boolean v8, v0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mRecording:Z

    iget-object v9, v0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mDownCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    iget-object v11, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-static/range {v6 .. v11}, Lcom/motorola/camera/utility/ZoomHelper;->sendZoomScaleEvent(FIZLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/EventListener;)V

    :cond_14
    return v5

    :pswitch_2
    if-eqz p1, :cond_35

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v5, :cond_15

    goto/16 :goto_1d

    :cond_15
    iget-object v0, v0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/GestureRecognizer;

    iget-object v0, v0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v3, v7

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    new-instance v8, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    const-string v1, "IS_TOUCHED"

    const-string v9, "ORIGIN"

    const-string v10, "ENABLE"

    const-string v11, "ORIENTATION"

    const-string v12, "TYPE"

    const-string v13, "DIRECTION"

    const-string v14, "DELTA_VALUE"

    const-string v15, "VALUE"

    iget-object v4, v0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    move/from16 v17, v6

    iget-boolean v6, v0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    if-eqz v6, :cond_16

    :goto_b
    move/from16 v5, v17

    goto/16 :goto_1e

    :cond_16
    iget v6, v0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    const/4 v2, 0x3

    if-ne v6, v5, :cond_2b

    iget v6, v0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    if-eqz v6, :cond_19

    const/16 v5, 0xb4

    if-ne v6, v5, :cond_17

    goto :goto_c

    :cond_17
    invoke-virtual {v4}, Lcom/motorola/camera/Controller;->isFoldFullScreen()Z

    move-result v5

    if-eqz v5, :cond_18

    iget v5, v0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    sget v6, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayOrientation:I

    if-ne v5, v6, :cond_18

    goto :goto_c

    :cond_18
    move/from16 v5, v17

    goto :goto_d

    :cond_19
    :goto_c
    const/4 v5, 0x1

    :goto_d
    if-nez v5, :cond_1a

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v19

    cmpl-float v6, v6, v19

    if-gtz v6, :cond_1b

    :cond_1a
    if-eqz v5, :cond_1e

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v19

    cmpl-float v6, v6, v19

    if-lez v6, :cond_1e

    :cond_1b
    iput v2, v0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v6, v0, Lcom/motorola/camera/ui/UIManager;->mDragStart:Landroid/graphics/PointF;

    if-eqz v5, :cond_1d

    :cond_1c
    move/from16 v2, p4

    const/16 v16, 0x0

    goto/16 :goto_15

    :cond_1d
    :goto_e
    move/from16 v16, p3

    const/4 v2, 0x0

    goto/16 :goto_15

    :cond_1e
    sget-object v6, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Point;

    sget-object v19, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static/range {v19 .. v19}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v19, 0x43f00000    # 480.0f

    div-float v2, v2, v19

    sget-object v19, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static/range {v19 .. v19}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v19

    move/from16 p2, v2

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    const/high16 v19, 0x42480000    # 50.0f

    mul-float v19, v19, p2

    const/high16 v20, 0x41f00000    # 30.0f

    move/from16 v21, v5

    mul-float v5, p2, v20

    int-to-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    if-nez v21, :cond_1f

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v20

    cmpl-float v5, v5, v20

    if-gtz v5, :cond_20

    :cond_1f
    if-eqz v21, :cond_21

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v20

    cmpl-float v5, v5, v20

    if-lez v5, :cond_21

    :cond_20
    const/4 v5, 0x1

    goto :goto_f

    :cond_21
    move/from16 v5, v17

    :goto_f
    move/from16 p2, v2

    if-eqz v21, :cond_22

    iget v2, v8, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v19

    if-ltz v2, :cond_25

    :cond_22
    iget v2, v8, Landroid/graphics/PointF;->x:F

    move/from16 v20, v2

    iget v2, v6, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float v2, v2, v19

    cmpl-float v2, v20, v2

    if-gtz v2, :cond_25

    if-nez v21, :cond_23

    iget v2, v8, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v2, v19

    if-ltz v2, :cond_25

    :cond_23
    iget v2, v8, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    sub-float v6, v6, v19

    cmpl-float v2, v2, v6

    if-lez v2, :cond_24

    goto :goto_10

    :cond_24
    move/from16 v2, v17

    goto :goto_11

    :cond_25
    :goto_10
    const/4 v2, 0x1

    :goto_11
    if-nez v21, :cond_26

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, p2

    if-gtz v6, :cond_27

    :cond_26
    if-eqz v21, :cond_28

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, p2

    if-lez v6, :cond_28

    :cond_27
    const/4 v6, 0x1

    goto :goto_12

    :cond_28
    move/from16 v6, v17

    :goto_12
    if-eqz v5, :cond_2a

    if-nez v2, :cond_29

    if-eqz v6, :cond_2a

    :cond_29
    const/4 v2, 0x2

    goto :goto_13

    :cond_2a
    const/4 v1, 0x1

    goto :goto_14

    :goto_13
    iput v2, v0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, v0, Lcom/motorola/camera/ui/UIManager;->mDragStart:Landroid/graphics/PointF;

    if-eqz v21, :cond_1c

    goto/16 :goto_e

    :goto_14
    iput-boolean v1, v0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    goto/16 :goto_b

    :cond_2b
    move/from16 v16, p3

    move/from16 v2, p4

    :goto_15
    iget v5, v0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2f

    invoke-virtual {v0, v3, v7}, Lcom/motorola/camera/ui/UIManager;->getVerticalDirection(FF)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v5

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    move/from16 p1, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/UIManager;->mDragStart:Landroid/graphics/PointF;

    move-object/from16 p2, v5

    iget v5, v2, Landroid/graphics/PointF;->x:F

    neg-float v5, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    invoke-virtual {v6, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v2, 0x2

    new-array v5, v2, [F

    aput v3, v5, v17

    const/16 v18, 0x1

    aput v7, v5, v18

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2c

    const/4 v2, 0x1

    goto :goto_16

    :cond_2c
    move/from16 v2, v17

    :goto_16
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_2d

    aget v5, v5, v17

    move/from16 p3, v2

    const/4 v2, 0x1

    goto :goto_17

    :cond_2d
    move/from16 p3, v2

    const/4 v2, 0x1

    aget v5, v5, v2

    :goto_17
    invoke-virtual {v6, v15, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    if-eqz p3, :cond_2e

    move/from16 v5, v16

    goto :goto_18

    :cond_2e
    move/from16 v5, p1

    :goto_18
    invoke-virtual {v6, v14, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v6, v13, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v6, v12, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v5, v0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {v6, v11, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v6, v10, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v6, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_VERTICAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    move-object/from16 p2, v1

    move/from16 v1, v17

    invoke-direct {v2, v5, v6, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_19

    :cond_2f
    move-object/from16 p2, v1

    move/from16 p1, v2

    :goto_19
    iget v1, v0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isGestureNavigateEnabled()Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, v4, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v2

    iget v2, v8, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    if-lt v2, v1, :cond_31

    :cond_30
    const/4 v5, 0x1

    goto/16 :goto_1e

    :cond_31
    invoke-virtual {v0, v3, v7}, Lcom/motorola/camera/ui/UIManager;->getHorizontalDirection(FF)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget-object v4, v0, Lcom/motorola/camera/ui/UIManager;->mDragStart:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    neg-float v5, v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    neg-float v4, v4

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/16 v17, 0x0

    aput v3, v4, v17

    const/16 v18, 0x1

    aput v7, v4, v18

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_32

    const/4 v2, 0x1

    goto :goto_1a

    :cond_32
    const/4 v2, 0x0

    :goto_1a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_33

    const/16 v17, 0x0

    aget v4, v4, v17

    const/4 v5, 0x1

    goto :goto_1b

    :cond_33
    const/4 v5, 0x1

    aget v4, v4, v5

    :goto_1b
    invoke-virtual {v3, v15, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    if-eqz v2, :cond_34

    move/from16 v2, v16

    goto :goto_1c

    :cond_34
    move/from16 v2, p1

    :goto_1c
    invoke-virtual {v3, v14, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v3, v13, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v12, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v1, v0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {v3, v11, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v10, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v9, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v1, p2

    invoke-virtual {v3, v1, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_HORIZONTAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_1e

    :cond_35
    :goto_1d
    const-string v0, "GestureRecognizer"

    const-string v1, "Rx invalid scroll event. Throwing it away!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8

    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "CAPTURE_TRIGGER"

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->DV_BOARD:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p0, "GestureRecognizer"

    const-string p1, "Rx invalid single tap  event. Throwing it away!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/GestureRecognizer;

    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mDownEventHandled:Z

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    :goto_0
    move v0, v5

    goto/16 :goto_2

    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    const-string p1, "ENABLE"

    invoke-static {p1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v1, "LOCATION"

    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "CAPTURE_TRIGGER"

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "ON_UP"

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-boolean v1, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "ON_UP preview"

    invoke-static {v1}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TAP_TO_TAKE_PICTURE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_4
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "TIMER"

    if-eqz v3, :cond_5

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    const-string v3, "ON_DOWN"

    iget-wide v6, p0, Lcom/motorola/camera/ui/UIManager;->mOnDownTimestamp:J

    invoke-virtual {p1, v3, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "IS_SPLIT_SCREEN"

    iget-boolean v6, v1, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    invoke-virtual {p1, v3, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, v1, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {v1, v1}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {p1, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "IS_PHOTO_BOOTH_CAPTURE_TIMES"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "TIMER_CANCEL_UI"

    xor-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1, p1, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto/16 :goto_0

    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
