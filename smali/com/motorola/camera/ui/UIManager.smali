.class public final Lcom/motorola/camera/ui/UIManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/motorola/camera/EventListener;


# instance fields
.field public final mActivity:Ljava/lang/ref/WeakReference;

.field public mAmbientLux:F

.field public final mCameraPreviewComponent:Ljava/lang/ref/WeakReference;

.field public final mComponents:Ljava/util/ArrayList;

.field public final mController:Lcom/motorola/camera/Controller;

.field public mDelayRotateUI:Z

.field public final mDetector:Lcom/motorola/camera/ui/GestureRecognizer;

.field public mDownCameraType:Lcom/motorola/camera/settings/CameraType;

.field public mDownEventHandled:Z

.field public mDragDirection:I

.field public mDragStart:Landroid/graphics/PointF;

.field public final mHandler:Landroid/os/Handler;

.field public mIgnoreRotationChanges:Z

.field public mInLongPress:Z

.field public final mInitOrientation:I

.field public final mLightSensorEventListener:Lcom/motorola/camera/Controller$2;

.field public mOnDownTimestamp:J

.field public mOrientation:I

.field public final mRootLocationOnWindow:[I

.field public final mRootView:Landroid/view/ViewGroup;

.field public final mRotateUIRunnable:Landroidx/lifecycle/LiveData$1;

.field public mScaling:Z

.field public mTexOrientation:I

.field public mVideoRecording:Z

.field public mViewDownEventHandled:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Controller;Lcom/motorola/camera/Camera;Landroid/view/ViewGroup;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/UIManager;->mInLongPress:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/UIManager;->mIgnoreRotationChanges:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    new-instance v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/UIManager;->mCameraPreviewComponent:Ljava/lang/ref/WeakReference;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/UIManager;->mDownEventHandled:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/UIManager;->mViewDownEventHandled:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/UIManager;->mDelayRotateUI:Z

    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/UIManager;->mRootLocationOnWindow:[I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/UIManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroidx/lifecycle/LiveData$1;

    const/16 v2, 0x1d

    invoke-direct {v0, v2, p0}, Landroidx/lifecycle/LiveData$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/UIManager;->mRotateUIRunnable:Landroidx/lifecycle/LiveData$1;

    new-instance v0, Lcom/motorola/camera/Controller$2;

    const/4 v2, 0x3

    invoke-direct {v0, v2, p0}, Lcom/motorola/camera/Controller$2;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/UIManager;->mLightSensorEventListener:Lcom/motorola/camera/Controller$2;

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->UI_START:Lcom/motorola/camera/CameraKpi$KPI;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_0
    iput-object p3, p0, Lcom/motorola/camera/ui/UIManager;->mRootView:Landroid/view/ViewGroup;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/UIManager;->mActivity:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    new-instance p1, Lcom/motorola/camera/ui/GestureRecognizer;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/ui/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mDetector:Lcom/motorola/camera/ui/GestureRecognizer;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    new-instance p1, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-static {}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->values()[Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    move-result-object p1

    invoke-static {p1, v1, p3, p0}, Lcom/motorola/camera/ui/uicomponents/UIComponentFactory;->getComponents([Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;ILandroid/view/View;Lcom/motorola/camera/ui/UIManager;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    instance-of p3, p2, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/ref/WeakReference;

    move-object v0, p2

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    invoke-direct {p3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/motorola/camera/ui/UIManager;->mCameraPreviewComponent:Ljava/lang/ref/WeakReference;

    :cond_1
    iget-object p3, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {p3, p2}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/motorola/camera/ui/UIManager;->mTexOrientation:I

    iput p1, p0, Lcom/motorola/camera/ui/UIManager;->mInitOrientation:I

    iget-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mCameraPreviewComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    new-instance p2, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/UIManager;I)V

    iput-object p2, p1, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mFirstDrawing:Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_3
    return-void
.end method

.method public static getCameraType(Landroid/view/MotionEvent;)Lcom/motorola/camera/settings/CameraType;
    .locals 7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewType()I

    move-result v0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v4

    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    invoke-direct {v2, v3, v5, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    invoke-virtual {v2, v0, p0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    invoke-virtual {v2, v0, p0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRF()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0
.end method

.method public static mapPointsInViewMatrix(Landroid/view/View;[F)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_0
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v1, p0

    aput v1, p1, v0

    return-void
.end method


# virtual methods
.method public final adjustScreenBrightness(Z)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldSetupBrightnessBump()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/motorola/camera/utility/ColorUtil;->setupBrightnessBump(Landroid/view/Window;Z)V

    return-void

    :cond_1
    const-string p0, "UIManager"

    const-string p1, "adjustScreenBrightness, null activity"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-virtual {p0, p1}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result p0

    return p0
.end method

.method public final dispatchKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mCameraPreviewComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    const/4 p2, 0x3

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTexInitState:I

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onKeyEvent()Z

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final dispatchLongPress(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "LONG_PRESS"

    iget-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mInLongPress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "ENABLE"

    iget-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mInLongPress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "ON_DOWN"

    iget-wide v1, p0, Lcom/motorola/camera/ui/UIManager;->mOnDownTimestamp:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final dispatchUiEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mCameraPreviewComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->onMotionEvent(Landroid/view/MotionEvent;Ljava/util/function/BiFunction;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    move-result-object p0

    return-object p0
.end method

.method public final getHorizontalDirection(FF)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;
    .locals 4

    iget p0, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const/4 v2, 0x0

    if-eqz p0, :cond_6

    const/16 v3, 0x5a

    if-eq p0, v3, :cond_4

    const/16 v3, 0xb4

    if-eq p0, v3, :cond_2

    const/16 p1, 0x10e

    if-eq p0, p1, :cond_0

    sget-object p0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    return-object p0

    :cond_0
    cmpl-float p0, p2, v2

    if-lez p0, :cond_1

    return-object v1

    :cond_1
    return-object v0

    :cond_2
    cmpg-float p0, p1, v2

    if-gez p0, :cond_3

    return-object v1

    :cond_3
    return-object v0

    :cond_4
    cmpg-float p0, p2, v2

    if-gez p0, :cond_5

    return-object v1

    :cond_5
    return-object v0

    :cond_6
    cmpl-float p0, p1, v2

    if-lez p0, :cond_7

    return-object v1

    :cond_7
    return-object v0
.end method

.method public final getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    return-object p0
.end method

.method public final getRootViewSize()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getRootViewSize()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 11

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;->PRO_PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v1 .. v10}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getUiContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getVerticalDirection(FF)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;
    .locals 4

    iget p0, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->DOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UP:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const/4 v2, 0x0

    if-eqz p0, :cond_6

    const/16 v3, 0x5a

    if-eq p0, v3, :cond_4

    const/16 v3, 0xb4

    if-eq p0, v3, :cond_2

    const/16 p2, 0x10e

    if-eq p0, p2, :cond_0

    sget-object p0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    return-object p0

    :cond_0
    cmpl-float p0, p1, v2

    if-lez p0, :cond_1

    return-object v1

    :cond_1
    return-object v0

    :cond_2
    cmpg-float p0, p2, v2

    if-gez p0, :cond_3

    return-object v1

    :cond_3
    return-object v0

    :cond_4
    cmpg-float p0, p1, v2

    if-gez p0, :cond_5

    return-object v1

    :cond_5
    return-object v0

    :cond_6
    cmpl-float p0, p2, v2

    if-lez p0, :cond_7

    return-object v1

    :cond_7
    return-object v0
.end method

.method public final initViewStubComponents(I)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/motorola/camera/ui/UIManager;->mRootView:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    const v0, 0x7f0a041b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const v0, 0x7f0a041c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->values()[Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;

    move-result-object v0

    invoke-static {v0, p1, v2, p0}, Lcom/motorola/camera/ui/uicomponents/UIComponentFactory;->getComponents([Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;ILandroid/view/View;Lcom/motorola/camera/ui/UIManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-ne p1, v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getFeatureComponentProviders()Ljava/util/Map;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/IComponentProvider;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->resume()V

    iget v7, p0, Lcom/motorola/camera/ui/UIManager;->mTexOrientation:I

    iget v8, p0, Lcom/motorola/camera/ui/UIManager;->mInitOrientation:I

    if-eq v8, v7, :cond_4

    invoke-virtual {v2, v7}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->rotate(I)V

    :cond_4
    iget-object v7, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v7, v2}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    goto :goto_2

    :cond_5
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inflate dur:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " initViewStubComponents dur:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " order:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const-string p1, "null"

    goto :goto_3

    :cond_6
    const-string p1, "SetRepeatingComplete"

    goto :goto_3

    :cond_7
    const-string p1, "FirstGlFrameDrawn"

    goto :goto_3

    :cond_8
    const-string p1, "Immediately"

    :goto_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UIManager"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a
    return-void
.end method

.method public final isCliDisplay()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final isFoldDualPaneScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    iget-boolean p0, p0, Lcom/motorola/camera/Controller;->mIsDualPaneScreen:Z

    return p0
.end method

.method public final isFoldFullScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isFoldFullScreen()Z

    move-result p0

    return p0
.end method

.method public final isSplitScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    iget-boolean p0, p0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    return p0
.end method

.method public final onFoldScreenPaneChanged(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    sget v1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    :goto_0
    iget v2, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput v1, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    iget-object v1, p0, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-virtual {v2, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->onFoldScreenPaneChanged(Z)V

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->rotate(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/UIManager;->mCameraPreviewComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mDetector:Lcom/motorola/camera/ui/GestureRecognizer;

    iput p1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mTransFactor:F

    :cond_5
    return-void
.end method

.method public final declared-synchronized onRotationChanged(II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0}, Lcom/motorola/camera/Controller;->isFoldFullScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p2, 0x0

    iput p2, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    sput-boolean p2, Lcom/motorola/camera/utility/ColorUtil;->enable:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-gt v0, v1, :cond_2

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v1, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr p1, p2

    rem-int/lit16 p2, p1, 0x168

    :goto_2
    iput p2, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    iget-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mIgnoreRotationChanges:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mRotateUIRunnable:Landroidx/lifecycle/LiveData$1;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/CameraApp;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mDelayRotateUI:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mRotateUIRunnable:Landroidx/lifecycle/LiveData$1;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p1, v1, v2}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_3

    :cond_5
    iget p1, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/UIManager;->rotateUI(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v2, v6, :cond_1

    iget-object v2, v0, Lcom/motorola/camera/ui/UIManager;->mRootView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    const v7, 0x7f0a00c5

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v8, Landroid/graphics/RectF;

    iget v9, v7, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    iget v11, v7, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-direct {v8, v9, v10, v11, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    move-object v8, v4

    :goto_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    sub-int/2addr v10, v6

    if-eqz v8, :cond_1

    if-ne v9, v10, :cond_1

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v8, v9, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-boolean v2, v0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    if-eqz v2, :cond_1

    const-string v2, "ENABLE"

    invoke-static {v2, v5}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    new-instance v7, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v7, v8, v2, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/ui/UIManager;->mDetector:Lcom/motorola/camera/ui/GestureRecognizer;

    iget-object v0, v2, Lcom/motorola/camera/ui/GestureRecognizer;->mGestureDetector:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/view/GestureDetector;

    iget v0, v2, Lcom/motorola/camera/ui/GestureRecognizer;->mScaleFactor:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v8}, Ljava/lang/Math;->ulp(F)F

    move-result v8

    cmpl-float v0, v0, v8

    const/4 v8, 0x0

    if-lez v0, :cond_2

    :try_start_0
    const-class v0, Landroid/view/MotionEvent;

    const-string/jumbo v9, "scale"

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget v9, v2, Lcom/motorola/camera/ui/GestureRecognizer;->mScaleFactor:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v9, "GestureRecognizer"

    const-string v10, "MotionEvent.scale failed"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    iget v0, v2, Lcom/motorola/camera/ui/GestureRecognizer;->mTransFactor:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v9, v2, Lcom/motorola/camera/ui/GestureRecognizer;->mTransFactor:F

    sub-float/2addr v0, v9

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v1, v0, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v9, 0x2

    if-ne v0, v9, :cond_4

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v10, v2, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    check-cast v10, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v10, v0}, Lcom/motorola/camera/ui/UIManager;->dispatchUiEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    if-eqz v10, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v6, :cond_5

    iget-boolean v0, v2, Lcom/motorola/camera/ui/GestureRecognizer;->firstCancel:Z

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    const/16 v17, 0x0

    const/4 v14, 0x3

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v5, v2, Lcom/motorola/camera/ui/GestureRecognizer;->firstCancel:Z

    goto :goto_2

    :cond_5
    invoke-virtual {v7, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iput-boolean v6, v2, Lcom/motorola/camera/ui/GestureRecognizer;->firstCancel:Z

    :cond_6
    :goto_2
    iget-object v0, v2, Lcom/motorola/camera/ui/GestureRecognizer;->mPinchDetector:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/StreamRequest;

    iget-object v7, v0, Lcom/motorola/camera/StreamRequest;->mMaxSize:Ljava/lang/Object;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast v7, Lcom/motorola/camera/ui/GestureRecognizer;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    and-int/lit16 v11, v11, 0xff

    if-eq v11, v9, :cond_9

    const/4 v4, 0x5

    if-eq v11, v4, :cond_8

    if-eq v11, v3, :cond_7

    goto :goto_3

    :cond_7
    if-ne v10, v9, :cond_b

    iput v8, v0, Lcom/motorola/camera/StreamRequest;->mRatio:F

    iget-object v0, v7, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/UIManager;

    iget-boolean v3, v0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    if-eqz v3, :cond_b

    iget-object v0, v0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->sendZoomScaleEndEvent(Lcom/motorola/camera/EventListener;)V

    goto :goto_3

    :cond_8
    invoke-static {v1}, Lcom/motorola/camera/StreamRequest;->getSpan(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, v0, Lcom/motorola/camera/StreamRequest;->mRatio:F

    goto :goto_3

    :cond_9
    if-lt v10, v9, :cond_b

    invoke-static {v1}, Lcom/motorola/camera/StreamRequest;->getSpan(Landroid/view/MotionEvent;)F

    move-result v3

    iget v0, v0, Lcom/motorola/camera/StreamRequest;->mRatio:F

    sub-float v8, v0, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_b

    iget-object v0, v7, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/UIManager;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v0, v0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-static {v5, v0, v4}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForKnifeSwitchCase(ZLjava/lang/Object;Lcom/motorola/camera/utility/ZoomSegment;)V

    goto :goto_3

    :cond_a
    iput-boolean v6, v0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    iput v6, v0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    iget v9, v0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    iget-boolean v10, v0, Lcom/motorola/camera/ui/UIManager;->mVideoRecording:Z

    iget-object v11, v0, Lcom/motorola/camera/ui/UIManager;->mDownCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1}, Lcom/motorola/camera/ui/UIManager;->getCameraType(Landroid/view/MotionEvent;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v12

    iget-object v13, v0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-static/range {v8 .. v13}, Lcom/motorola/camera/utility/ZoomHelper;->sendZoomScaleEvent(FIZLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/EventListener;)V

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->checkZoomDisabledHints()Z

    :cond_b
    :goto_3
    iget-object v0, v2, Lcom/motorola/camera/ui/GestureRecognizer;->mDownUpDetector:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/DownUpDetector;

    iget-object v2, v0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/DownUpDetector$DownUpListener;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-eqz v3, :cond_e

    if-eq v3, v6, :cond_c

    const/4 v4, 0x3

    if-eq v3, v4, :cond_c

    goto :goto_4

    :cond_c
    iget-boolean v3, v0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    if-nez v3, :cond_d

    goto :goto_4

    :cond_d
    iput-boolean v5, v0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    invoke-interface {v2, v1}, Lcom/motorola/camera/ui/DownUpDetector$DownUpListener;->onUp(Landroid/view/MotionEvent;)V

    goto :goto_4

    :cond_e
    iget-boolean v3, v0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    if-ne v6, v3, :cond_f

    goto :goto_4

    :cond_f
    iput-boolean v6, v0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    invoke-interface {v2, v1}, Lcom/motorola/camera/ui/DownUpDetector$DownUpListener;->onDown(Landroid/view/MotionEvent;)V

    :goto_4
    return v6
.end method

.method public final onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    aput p1, v1, v4

    aput p1, v1, v3

    goto :goto_1

    :cond_0
    new-array v0, v0, [F

    aget v2, v1, v3

    aput v2, v0, v3

    aget v2, v1, v4

    aput v2, v0, v4

    invoke-static {p1, v0}, Lcom/motorola/camera/ui/UIManager;->mapPointsInViewMatrix(Landroid/view/View;[F)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/view/View;

    aget v2, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    aput v2, v0, v3

    aget v2, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    aput v2, v0, v4

    invoke-static {p1, v0}, Lcom/motorola/camera/ui/UIManager;->mapPointsInViewMatrix(Landroid/view/View;[F)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    aget p1, v0, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    aput p1, v1, v3

    aget p1, v0, v4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    aput p1, v1, v4

    :goto_1
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    aget p2, v1, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/UIManager;->mRootLocationOnWindow:[I

    aget v2, v0, v3

    int-to-float v2, v2

    sub-float/2addr p2, v2

    aput p2, v1, v3

    aget v2, v1, v4

    aget v0, v0, v4

    int-to-float v0, v0

    sub-float/2addr v2, v0

    aput v2, v1, v4

    invoke-virtual {p1, p2, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    iput-boolean v4, p0, Lcom/motorola/camera/ui/UIManager;->mViewDownEventHandled:Z

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/UIManager;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    iput-boolean v4, p0, Lcom/motorola/camera/ui/UIManager;->mDownEventHandled:Z

    iput-boolean v3, p0, Lcom/motorola/camera/ui/UIManager;->mViewDownEventHandled:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final playHaptic(I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller;->playHaptic(I)V

    return-void
.end method

.method public final processKeyEvent(Landroid/view/KeyEvent;)V
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_EVENT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "ON_DOWN"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "ON_UP"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-boolean v1, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Shutter Up"

    invoke-static {v1}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimerEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->onCaptureStarted()V

    :cond_1
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    const-string v4, "TIMER"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "CAPTURE_TRIGGER"

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "KEY_CODE"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    const/16 v3, 0x80

    and-int/2addr p1, v3

    const/4 v5, 0x0

    if-ne p1, v3, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v5

    :goto_0
    const-string v3, "LONG_PRESS"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "IS_SPLIT_SCREEN"

    iget-object v3, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    iget-boolean v6, v3, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    invoke-virtual {v0, p1, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, v3, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {p1, p1}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "IS_PHOTO_BOOTH_CAPTURE_TIMES"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "TIMER_CANCEL_UI"

    xor-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v1, v0, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final registerLightSensorListener(Ljava/lang/Boolean;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mLightSensorEventListener:Lcom/motorola/camera/Controller$2;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    invoke-virtual {v0, p0, v1, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    return-void
.end method

.method public final registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    return-void
.end method

.method public final registerStateChangeListener(Ljava/util/Collection;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Ljava/util/Collection;)V

    return-void
.end method

.method public final rotateUI(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/UIManager;->mTexOrientation:I

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->rotate(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    iput v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->orientation:I

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v2, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/UIManager;I)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/UIManager;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_1
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x1b

    if-eqz v1, :cond_2

    sget-object p1, Lcom/motorola/camera/utility/ColdStartHelper;->INSTANCE:Lcom/motorola/camera/utility/ColdStartHelper;

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/UIManager;I)V

    const-wide/16 v1, 0x21

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_e

    iput-boolean v3, p0, Lcom/motorola/camera/ui/UIManager;->mDelayRotateUI:Z

    goto/16 :goto_2

    :cond_3
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/motorola/camera/ui/UIManager;->mIgnoreRotationChanges:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/UIManager;->mAmbientLux:F

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/UIManager;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mIgnoreRotationChanges:Z

    goto/16 :goto_2

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;->PRO_PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "CANCELLED"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "ON_UP"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-boolean p1, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz p1, :cond_7

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    const-string v0, "Shutter Up timer"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->onCaptureStarted()V

    goto :goto_2

    :cond_8
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppInit(Lcom/google/zxing/Result;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mDelayRotateUI:Z

    goto :goto_2

    :cond_9
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mVideoRecording:Z

    goto :goto_2

    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_b
    iput-boolean v3, p0, Lcom/motorola/camera/ui/UIManager;->mVideoRecording:Z

    goto :goto_2

    :cond_c
    :goto_1
    iget-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mIgnoreRotationChanges:Z

    if-eqz p1, :cond_d

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;

    const/4 v4, 0x6

    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/UIManager;I)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_d
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/settings/CaptureIntent;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    invoke-static {p1}, Lcom/motorola/camera/settings/CaptureIntent;->isCTSMode(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v0, "KEY_CODE"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1, p1, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_e
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final unregisterStateChangeListener(Ljava/util/Collection;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Ljava/util/Collection;)V

    return-void
.end method
