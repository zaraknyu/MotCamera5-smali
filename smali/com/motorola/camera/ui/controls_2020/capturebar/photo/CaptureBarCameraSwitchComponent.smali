.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "SourceFile"


# static fields
.field public static final DISABLE_STATES:Landroid/util/ArraySet;

.field public static final ENABLE_STATES:Landroid/util/ArraySet;

.field public static final HIDE_STATES:Landroid/util/ArraySet;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;

.field public static final SHOW_STATES:Landroid/util/ArraySet;


# instance fields
.field public cameraSwitch:Landroid/widget/ImageButton;

.field public switchAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->SHOW_STATES:Landroid/util/ArraySet;

    new-instance v2, Lcom/motorola/camera/PermissionCallback;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/motorola/camera/PermissionCallback;-><init>(I)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionCallback;->add(Ljava/util/Collection;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v2, v2, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast v2, Landroid/util/ArraySet;

    const-string v3, "build(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->HIDE_STATES:Landroid/util/ArraySet;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->DISABLE_STATES:Landroid/util/ArraySet;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->ENABLE_STATES:Landroid/util/ArraySet;

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final getRotatedViews()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->cameraSwitch:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final init$1()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a00bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->cameraSwitch:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda13;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->cameraSwitch:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    new-instance v1, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;

    const/16 v2, 0x11

    invoke-direct {v1, v2, p0}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->show()V

    return-void
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->cameraSwitch:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void
.end method

.method public final show()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getModeSupportFacing(IZ)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->switchAllowed:Z

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v4, v3, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->switchAllowed:Z

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->switchAllowed:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v2, v1

    :cond_4
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->switchAllowed:Z

    :cond_5
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->switchAllowed:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->remove()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->cameraSwitch:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->cameraSwitch:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12053e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12053d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12053c

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->SHOW_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldShowAllUi(Lcom/google/zxing/Result;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "OPEN_GALLERY_CANCEL"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->DISABLE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->ENABLE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1, p0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v1, v2, v3}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldHideAllUi(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isTimerCapture(Lcom/google/zxing/Result;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_a
    return-void

    :cond_b
    :goto_0
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
