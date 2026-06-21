.class public final Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# static fields
.field public static final FADE_ANIM_DURATION:J

.field public static final IDLE_MODES:Landroid/util/ArraySet;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;


# instance fields
.field public mAllowState:Z

.field public mAllowUnfoldExit:Z

.field public mBoardRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mBoardSwipeText:Landroid/widget/TextView;

.field public mBoardTextLayout:Landroid/widget/LinearLayout;

.field public mBoardTouch:Landroid/view/View;

.field public mDirectionButton:Landroid/widget/ImageButton;

.field public final mDirectionSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public mDownCameraType:Lcom/motorola/camera/settings/CameraType;

.field public mDownUpDetector:Lcom/motorola/camera/ui/DownUpDetector;

.field public final mDownUpListener:Lcom/motorola/camera/PermissionCallback;

.field public mEnterDualFirstUse:Z

.field public mEnterDvMode:I

.field public mEnterWithDualChosen:Z

.field public mExitButton:Landroid/widget/ImageButton;

.field public mFadeAnimRunning:Z

.field public mFadeAnimation:Landroid/view/ViewPropertyAnimator;

.field public final mFoldingStateListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

.field public mFsmIdle:Z

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public final mGestureListener:Lcom/motorola/camera/editor/ui/ScaleImageView$1;

.field public final mHandler:Landroid/os/Handler;

.field public mIsBoardShow:Z

.field public mIsDvPosture:Z

.field public mRecording:Z

.field public mScrollDistance:F

.field public mTimerCounting:Z

.field public mTutorialShowing:Z

.field public mZooming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->IDLE_MODES:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->FADE_ANIM_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x6

    invoke-direct {p1, v0, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mDirectionSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mEnterDvMode:I

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/UIManager;->getUiContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/motorola/camera/editor/ui/ScaleImageView$1;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/editor/ui/ScaleImageView$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mGestureListener:Lcom/motorola/camera/editor/ui/ScaleImageView$1;

    new-instance p1, Lcom/motorola/camera/PermissionCallback;

    const/16 p2, 0xc

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/PermissionCallback;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mDownUpListener:Lcom/motorola/camera/PermissionCallback;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mFoldingStateListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    return-void
.end method


# virtual methods
.method public final animateFade(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mIsBoardShow:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mFadeAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mFadeAnimRunning:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mFadeAnimRunning:Z

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mBoardRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-wide v2, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->FADE_ANIM_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mBoardSwipeText:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomSupported(Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    sget-wide v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->ANIM_DURATION:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mFadeAnimation:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final checkPosture(Z)V
    .locals 6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDvEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDvPostureAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mIsDvPosture:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mAllowState:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mFsmIdle:Z

    if-nez v2, :cond_4

    :cond_3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mIsDvPosture:Z

    return-void

    :cond_4
    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mIsDvPosture:Z

    if-eq v2, v1, :cond_a

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mIsDvPosture:Z

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->animateFade(Z)V

    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->DV_POSTURE_CHANGE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    const v2, 0x7f0b0025

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mEnterDvMode:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x7

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->dispatchDvChange()V

    :goto_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DV_AUTO_RECORD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mRecording:Z

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->updateDirectionButton(Z)V

    return-void

    :cond_6
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mAllowUnfoldExit:Z

    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mEnterDvMode:I

    if-nez v1, :cond_7

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    const/16 v4, 0x8

    invoke-direct {v1, p0, v4}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->dispatchDvExit()V

    :cond_8
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mRecording:Z

    if-nez v0, :cond_a

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mTimerCounting:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mTutorialShowing:Z

    if-nez p1, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->restoreDualForVideo()V

    :cond_a
    :goto_3
    return-void
.end method

.method public final dispatchDvChange()V
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mFsmIdle:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->openDualPreview()V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SRC_MODE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "MODE_DIRECTION"

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ORIGIN_CAMERA_TYPE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DV_POSTURE_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final dispatchDvExit()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mEnterDvMode:I

    const-string v3, "SRC_MODE"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "MODE_DIRECTION"

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "MODE"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ORIGIN_CAMERA_TYPE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DV_EXIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    const v1, 0x7f0a04e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mBoardRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const v1, 0x7f0a04e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mBoardTouch:Landroid/view/View;

    const v1, 0x7f0a04ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mBoardTextLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a04e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v1, 0x7f0a04e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mBoardSwipeText:Landroid/widget/TextView;

    const v1, 0x7f0a04ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mExitButton:Landroid/widget/ImageButton;

    const v1, 0x7f0a04e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mDirectionButton:Landroid/widget/ImageButton;

    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mGestureListener:Lcom/motorola/camera/editor/ui/ScaleImageView$1;

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/motorola/camera/ui/DownUpDetector;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mDownUpListener:Lcom/motorola/camera/PermissionCallback;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v3}, Lcom/motorola/camera/ui/DownUpDetector;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mDownUpDetector:Lcom/motorola/camera/ui/DownUpDetector;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mBoardTouch:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda13;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mExitButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda14;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda14;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mDirectionButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda14;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda14;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mBoardTextLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mDirectionButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    :cond_5
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->updateDirectionButton(Z)V

    return-void
.end method

.method public final openDualPreview()V
    .locals 8

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->isDisableExternalDisplayVideoSize()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_EXTERNAL_DISPLAY_IN_VIDEO_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v6, "getValue(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mEnterDualFirstUse:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_2

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v3, v7

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v6

    :goto_1
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mEnterWithDualChosen:Z

    sget-object v3, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v3, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    iget-object v3, v3, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_5

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    :cond_5
    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    invoke-virtual {v5, v1, v6}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v3, v6}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v6}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_PREVIEW_ENABLE:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_6
    :goto_3
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mEnterDualFirstUse:Z

    if-eqz p0, :cond_7

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final restoreDualForVideo()V
    .locals 7

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mEnterDualFirstUse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_EXTERNAL_DISPLAY_IN_VIDEO_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mEnterDualFirstUse:Z

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    iget-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mEnterWithDualChosen:Z

    if-eqz v5, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v6

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    invoke-static {v6, p0, v1, v5}, Lcom/motorola/camera/settings/SettingsManager;->setupDualScreenMode(IZZZ)V

    iget-object p0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    :goto_2
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_PREVIEW_ENABLE:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public final rotate(I)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-ne p1, v0, :cond_0

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return-void

    :cond_0
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mBoardTextLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mDirectionButton:Landroid/widget/ImageButton;

    filled-new-array {p1, v0}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->updateLandscapeViewRotation(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->checkPosture(Z)V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 6

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDvEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->IDLE_MODES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mDirectionSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mFsmIdle:Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v3}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mFsmIdle:Z

    return-void

    :cond_2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mAllowUnfoldExit:Z

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mTimerCounting:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mAllowUnfoldExit:Z

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mTimerCounting:Z

    return-void

    :cond_4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mAllowUnfoldExit:Z

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mTutorialShowing:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xb

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mTutorialShowing:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xc

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xd

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mRecording:Z

    if-nez p1, :cond_b

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mRecording:Z

    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-eqz p1, :cond_8

    iget-object p1, p1, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_8

    const-string v1, "ANALYTICS_VIDEO_DV_POSTURE"

    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mIsDvPosture:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mIsDvPosture:Z

    if-eqz p1, :cond_b

    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-eqz p1, :cond_b

    iget-object p1, p1, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_b

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_RECTANGLE22V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-ne v0, v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v4, 0x2

    :cond_a
    :goto_0
    const-string v0, "ANALYTICS_VIDEO_DV_ALIGNMENT"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_b
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xe

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_c
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mRecording:Z

    if-eqz p1, :cond_14

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mRecording:Z

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mIsDvPosture:Z

    if-nez p1, :cond_14

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->restoreDualForVideo()V

    return-void

    :cond_d
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mAllowState:Z

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mAllowUnfoldExit:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xf

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_e
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x10

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_f
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_14

    const-string v0, "SRC_MODE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_14

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mIsBoardShow:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDvAllowedSupportedEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->openDualPreview()V

    return-void

    :cond_10
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x11

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_11
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_12
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mFoldingStateListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    if-eqz v0, :cond_13

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mAllowState:Z

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mIsBoardShow:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v3}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->FOLDING_STATE_CHANGE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void

    :cond_13
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_14

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->FOLDING_STATE_CHANGE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :cond_14
    :goto_1
    return-void
.end method

.method public final updateDirectionButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mDirectionButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    const/4 v1, 0x4

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mTimerCounting:Z

    if-nez p1, :cond_4

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mIsDvPosture:Z

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object p1, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_RECTANGLE9V16:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-eq p1, p0, :cond_3

    sget-object p1, Lcom/motorola/camera/PreviewSize$AspectRatio;->DV_RECTANGLE9V22:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-ne p1, p0, :cond_2

    goto :goto_1

    :cond_2
    const p0, 0x7f08038f

    goto :goto_2

    :cond_3
    :goto_1
    const p0, 0x7f08038e

    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_4
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
