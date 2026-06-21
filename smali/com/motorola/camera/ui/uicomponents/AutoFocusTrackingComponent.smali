.class public final Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine$TouchTrackFocusListener;


# instance fields
.field public mAllowShow:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final mPreviewDoneListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public final mPreviewToScreenMat:Landroid/graphics/Matrix;

.field public final mTimeoutCancelRunnable:Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;

.field public mTracking:Z

.field public mTrackingRoiView:Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;

.field public mZoomComponent:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewToScreenMat:Landroid/graphics/Matrix;

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTimeoutCancelRunnable:Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda3;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda3;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    const/16 p2, 0x14

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewDoneListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 4

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    const v2, 0x7f0a0088

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTrackingRoiView:Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a036d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v1

    :cond_1
    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.BaseZoomComponent"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mZoomComponent:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTrackingRoiView:Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;

    if-eqz v0, :cond_2

    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda9;

    invoke-direct {v4, v3, v2, p0}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/graphics/PointF;Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v1, v2, v5}, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Point;

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    return-void
.end method

.method public final refreshMatrix()V
    .locals 6

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {v0}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->getDisplayOrientation(Ljava/lang/String;Z)I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewToScreenMat:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    iget v3, v0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, v0, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {p0, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/high16 v3, 0x42b40000    # 90.0f

    cmpg-float v3, v2, v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v3, 0x43870000    # 270.0f

    cmpg-float v2, v2, v3

    if-nez v2, :cond_3

    :goto_0
    new-instance v2, Lkotlin/Pair;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    div-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance v2, Lkotlin/Pair;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    div-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, v2, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v2, v2, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 7

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mAllowShow:Z

    goto/16 :goto_1

    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewDoneListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result v1

    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->refreshMatrix()V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v4, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mAllowShow:Z

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :cond_5
    :goto_1
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTracking:Z

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const-string v0, "ANALYTICS_AUTO_FOCUS_TRACKING"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
