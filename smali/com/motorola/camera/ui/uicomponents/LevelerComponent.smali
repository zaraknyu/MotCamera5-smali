.class public final Lcom/motorola/camera/ui/uicomponents/LevelerComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# instance fields
.field public final applyPreviewChangeListener:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$4;

.field public mFoldGapOrientation:I

.field public final mHelpTooltipHideListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mIsCamAlignedSensor:Z

.field public mIsDisplayRotation:Z

.field public mLevelOrientation:I

.field public final mLevelerOrientation:Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;

.field public mLevelerRotationIndex:I

.field public final mLevelerRotationPool:[I

.field public mLevelerRotationSize:I

.field public mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

.field public final mOrientationPool:[I

.field public final mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mPlanar:Z

.field public mPoolIndex:I

.field public mPoolSize:I

.field public mRealPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mShouldKeepHidden:Z

.field public mShouldShow:Z

.field public mStateHidden:Z


# direct methods
.method public static -$$Nest$mgetFilterOrientation(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;I)I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:[I

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mPoolIndex:I

    add-int/lit16 p1, p1, -0xb4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    aput p1, v0, v1

    iget p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mPoolIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mPoolIndex:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-lt p1, v2, :cond_0

    iput v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mPoolIndex:I

    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mPoolSize:I

    if-ge p1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mPoolSize:I

    :cond_1
    move p1, v1

    :goto_0
    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mPoolSize:I

    if-ge v1, v2, :cond_2

    aget v2, v0, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    div-int/2addr p1, v2

    return p1
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mPlanar:Z

    const/16 p2, 0xa

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerRotationPool:[I

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerRotationIndex:I

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerRotationSize:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:[I

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mPoolIndex:I

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mPoolSize:I

    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mShouldKeepHidden:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mStateHidden:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mIsDisplayRotation:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mIsCamAlignedSensor:Z

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mFoldGapOrientation:I

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda2;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 p2, 0x15

    invoke-direct {p1, p2}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance p2, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->HELP_TOOLTIP_LEVELER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mHelpTooltipHideListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$4;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$4;-><init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->applyPreviewChangeListener:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$4;

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;

    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;-><init>(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerOrientation:Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->setCamAlignedSensor()V

    return-void
.end method

.method public static isEnteringSupportedMode(Lcom/google/zxing/Result;)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p0, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;->PRO_PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p0, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p0, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p0, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p0, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p0, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p0, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0x10

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 19

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v16, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v17, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v18, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v2 .. v18}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final hideLeveler()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final inflateViewStub()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->initPreviewSize()V

    new-instance v0, Lcom/motorola/camera/ui/widgets/LevelerView;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mRealPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/LevelerView;-><init>(Lcom/motorola/camera/PreviewSize;Landroid/view/View;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/16 v2, 0x13

    invoke-direct {v1, v0, v2, p0}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mShouldShow:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->showLeveler()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final initPreviewSize()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isFoldDualPaneScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mRealPreviewSize:Lcom/motorola/camera/PreviewSize;

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mRealPreviewSize:Lcom/motorola/camera/PreviewSize;

    return-void
.end method

.method public final onConfigurationChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->setCamAlignedSensor()V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->rotate(I)V

    return-void

    :cond_0
    sget p1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->rotate(I)V

    return-void
.end method

.method public final onFoldScreenOrientationChanged(IIIZ)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->onConfigurationChanged(Z)V

    iput p3, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mFoldGapOrientation:I

    return-void
.end method

.method public final rotate(I)V
    .locals 2

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    new-instance v0, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/16 v1, 0x13

    invoke-direct {v0, p1, v1, p0}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setCamAlignedSensor()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerOrientation:Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->switchSensor(Z)V

    iget-object v0, v0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    const-string v2, "mSensor"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {v0}, Lcom/motorola/camera/shared/Util;->isCamAlignedSensor(Landroid/hardware/Sensor;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mIsCamAlignedSensor:Z

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget v0, v0, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mIsDisplayRotation:Z

    return-void
.end method

.method public final showLeveler()V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mShouldKeepHidden:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_8

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mHelpTooltipHideListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->HELP_TOOLTIP_LEVELER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->applyPreviewChangeListener:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    goto/16 :goto_2

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mHelpTooltipHideListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->HELP_TOOLTIP_LEVELER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->hideLeveler()V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mShouldKeepHidden:Z

    goto/16 :goto_2

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    iput-boolean v3, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mStateHidden:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->hideLeveler()V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v3, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mStateHidden:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->hideLeveler()V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->applyPreviewChangeListener:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_2

    :cond_7
    :goto_0
    iput-boolean v3, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mStateHidden:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->hideLeveler()V

    goto :goto_2

    :cond_8
    :goto_1
    iput-boolean v2, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mStateHidden:Z

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->isEnteringSupportedMode(Lcom/google/zxing/Result;)Z

    move-result p1

    if-eqz p1, :cond_9

    iput-boolean v3, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mShouldShow:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->showLeveler()V

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    :cond_a
    iput-boolean v2, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mShouldShow:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->hideLeveler()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
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

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
