.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "SourceFile"


# static fields
.field public static final CLOSE_STATES:Landroid/util/ArraySet;

.field public static final HIDE_STATES:Landroid/util/ArraySet;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;


# instance fields
.field public controlPanelOpen:Z

.field public interceptUpdate:Z

.field public itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

.field public final mActivePhysicalCameraIdListener:Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

.field public final mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mPhysicalCameraId:Ljava/lang/String;

.field public final mSettingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public needControlPanelUpdate:Z

.field public final panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public rotation:F

.field public shouldKeepHidden:Z


# direct methods
.method public static $r8$lambda$O38ZRVKhwg4CfW9lWdin7mRxfPQ(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->controlPanelOpen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    :cond_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->CLOSE_STATES:Landroid/util/ArraySet;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->HIDE_STATES:Landroid/util/ArraySet;

    new-instance v4, Lcom/motorola/camera/PermissionCallback;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/motorola/camera/PermissionCallback;-><init>(I)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/PermissionCallback;->add(Ljava/util/Collection;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4, v3}, Lcom/motorola/camera/PermissionCallback;->add(Ljava/util/Collection;)V

    invoke-virtual {v4, v1}, Lcom/motorola/camera/PermissionCallback;->add(Ljava/util/Collection;)V

    invoke-virtual {v4, v2}, Lcom/motorola/camera/PermissionCallback;->add(Ljava/util/Collection;)V

    iget-object v0, v4, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArraySet;

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const-string p1, "0"

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->mPhysicalCameraId:Ljava/lang/String;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;-><init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->mActivePhysicalCameraIdListener:Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

    new-instance p1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->mSettingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static getFloat(Landroidx/recyclerview/widget/RecyclerView;I)F
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final animateVisibility(Landroidx/recyclerview/widget/RecyclerView;ZLkotlin/text/Regex$$ExternalSyntheticLambda0;)V
    .locals 17

    move-object/from16 v0, p1

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    move-object/from16 v1, p0

    iget-boolean v1, v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->shouldKeepHidden:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v5, 0x1

    aput v4, v2, v5

    new-array v6, v1, [F

    aput v4, v6, v3

    aput v4, v6, v5

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v7

    const/high16 v8, 0x42b40000    # 90.0f

    cmpg-float v8, v7, v8

    const/high16 v9, 0x40000000    # 2.0f

    const v10, 0x7f0700c4

    if-nez v8, :cond_1

    invoke-static {v0, v10}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->getFloat(Landroidx/recyclerview/widget/RecyclerView;I)F

    move-result v4

    neg-float v4, v4

    aput v4, v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    :goto_0
    sub-int/2addr v4, v7

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    goto :goto_1

    :cond_1
    const/high16 v8, 0x43340000    # 180.0f

    cmpg-float v8, v7, v8

    const v11, 0x7f0700c5

    if-nez v8, :cond_2

    invoke-static {v0, v11}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->getFloat(Landroidx/recyclerview/widget/RecyclerView;I)F

    move-result v7

    aput v7, v6, v3

    goto :goto_1

    :cond_2
    const/high16 v8, 0x43870000    # 270.0f

    cmpg-float v7, v7, v8

    if-nez v7, :cond_3

    invoke-static {v0, v10}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->getFloat(Landroidx/recyclerview/widget/RecyclerView;I)F

    move-result v4

    aput v4, v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    goto :goto_0

    :cond_3
    invoke-static {v0, v11}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->getFloat(Landroidx/recyclerview/widget/RecyclerView;I)F

    move-result v7

    neg-float v7, v7

    aput v7, v6, v3

    :goto_1
    if-nez p2, :cond_4

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->reverse([F)V

    invoke-static {v6}, Lkotlin/collections/ArraysKt;->reverse([F)V

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->reverse([F)V

    :cond_4
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    aget v10, v2, v3

    aget v12, v2, v5

    aget v14, v6, v3

    const/4 v15, 0x1

    aget v16, v6, v5

    const/4 v9, 0x1

    const/4 v11, 0x1

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    aget v6, v1, v3

    aget v1, v1, v5

    invoke-direct {v2, v6, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v7, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v7, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v7, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    const v2, 0x7f0700b5

    invoke-static {v0, v2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->getFloat(Landroidx/recyclerview/widget/RecyclerView;I)F

    move-result v2

    invoke-direct {v1, v7, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    if-eqz p2, :cond_6

    invoke-virtual {v0, v5}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v2

    if-ne v2, v5, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$animateVisibility$1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$animateVisibility$2;

    move-object/from16 v3, p3

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$animateVisibility$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->scheduleLayoutAnimation()V

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_7
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getRotatedViews()Ljava/util/List;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final hide()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->ignoreClicks:Z

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    new-instance v1, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0, v0}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->animateVisibility(Landroidx/recyclerview/widget/RecyclerView;ZLkotlin/text/Regex$$ExternalSyntheticLambda0;)V

    return-void

    :cond_2
    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void
.end method

.method public final onConfigurationChanged(Z)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    const-string v0, "getLayoutManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final registerListeners(Lcom/google/zxing/Result;Z)V
    .locals 2

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->mActivePhysicalCameraIdListener:Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void
.end method

.method public final rotate(I)V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    :cond_0
    instance-of v0, v4, Lcom/motorola/camera/ui/controls_2020/controlpanel/MultiLineFlexboxLayoutManager;

    if-eqz v0, :cond_12

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/controlpanel/MultiLineFlexboxLayoutManager;

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    int-to-float v0, v0

    rsub-int v1, p1, 0x168

    int-to-float v1, v1

    sub-float/2addr v1, v0

    cmpg-float v5, v1, v5

    const/high16 v6, 0x43b40000    # 360.0f

    if-gez v5, :cond_1

    add-float/2addr v1, v6

    :cond_1
    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    sub-float/2addr v1, v6

    :cond_2
    add-float/2addr v0, v1

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->setRotation(F)V

    iput p1, v4, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->uiOrientation:I

    goto/16 :goto_8

    :cond_3
    const/16 v1, 0x5a

    const/high16 v6, 0x43870000    # 270.0f

    const/high16 v7, 0x42b40000    # 90.0f

    if-eq p1, v1, :cond_5

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_6

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_4

    move v3, v5

    goto :goto_0

    :cond_4
    move v3, v7

    goto :goto_0

    :cond_5
    move v3, v6

    :cond_6
    :goto_0
    iput v3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->rotation:F

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v3

    iget v8, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->rotation:F

    cmpg-float v3, v3, v8

    if-nez v3, :cond_7

    goto/16 :goto_8

    :cond_7
    invoke-virtual {v1, v8}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v9, :cond_8

    move-object v4, v8

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v8

    cmpg-float v7, v8, v7

    if-nez v7, :cond_9

    goto :goto_1

    :cond_9
    cmpg-float v6, v8, v6

    if-nez v6, :cond_a

    :goto_1
    const/4 v6, 0x1

    goto :goto_2

    :cond_a
    move v6, v2

    :goto_2
    const v7, 0x7f0700ba

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v8, v7

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v7

    const v9, 0x7f0700b7

    if-nez v7, :cond_c

    if-eqz v6, :cond_b

    goto :goto_4

    :cond_b
    const v7, 0x7f0700c3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    :goto_3
    float-to-int v7, v7

    goto :goto_5

    :cond_c
    :goto_4
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    goto :goto_3

    :goto_5
    if-eqz v4, :cond_d

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v4, v2, v7, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_d
    if-eqz v4, :cond_f

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_6

    :cond_e
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_6
    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    :cond_f
    if-eqz v6, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-le v0, v8, :cond_10

    if-eqz v4, :cond_11

    iput v8, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    goto :goto_7

    :cond_10
    if-nez v6, :cond_11

    if-eqz v4, :cond_11

    const/4 v0, -0x2

    iput v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    :cond_11
    :goto_7
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/16 v3, 0x14

    invoke-direct {v0, v3, v1, p0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_12
    :goto_8
    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    return-void
.end method

.method public final show()V
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->shouldKeepHidden:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->controlPanelOpen:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->rotation:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->needControlPanelUpdate:Z

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->interceptUpdate:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->needControlPanelUpdate:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->updateRecyclerViewAsync()V

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->animateVisibility(Landroidx/recyclerview/widget/RecyclerView;ZLkotlin/text/Regex$$ExternalSyntheticLambda0;)V

    goto :goto_0

    :cond_3
    new-instance v2, Landroidx/appcompat/widget/SearchView$4;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Landroidx/appcompat/widget/SearchView$4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda13;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    if-eqz p0, :cond_5

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->ignoreClicks:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->mSettingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->mActivePhysicalCameraIdListener:Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void

    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->shouldKeepHidden:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    if-eqz v0, :cond_1

    iput-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->ignoreClicks:Z

    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->registerListeners(Lcom/google/zxing/Result;Z)V

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->interceptUpdate:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_12

    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->needControlPanelUpdate:Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "IS_SELECTED"

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :cond_4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_3

    :cond_5
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_2

    :cond_6
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->CLOSE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    if-eqz v1, :cond_8

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "ANALYTICS_CONTROL_PANEL_TAPS"

    iget v1, v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->controlPanelInteractions:I

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_8
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;Lcom/google/zxing/Result;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    if-eqz p0, :cond_12

    iput v4, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->controlPanelInteractions:I

    return-void

    :cond_a
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;Lcom/google/zxing/Result;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_12

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_12

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->shouldKeepHidden:Z

    return-void

    :cond_d
    :goto_0
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "getBundle(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CAPTURE_AUTO_CAPTURE_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_1

    :cond_f
    move v3, v4

    :goto_1
    new-instance p1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/4 v0, 0x7

    invoke-direct {p1, v3, p0, v0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(ZLjava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_10
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    if-eqz p0, :cond_12

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->ignoreClicks:Z

    return-void

    :cond_11
    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    if-eqz p0, :cond_12

    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->ignoreClicks:Z

    :cond_12
    return-void
.end method

.method public final updateRecyclerViewAsync()V
    .locals 6

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    const-string v0, "mEventHandler"

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getControlPanelSettings(Lcom/motorola/camera/EventListener;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    const-string v4, "get(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;-><init>(Lcom/motorola/camera/settings/Setting;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    const-string v2, "getCurrentCameraType(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v4, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    :cond_3
    :goto_1
    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/16 v2, 0x13

    invoke-direct {v0, v2, p0, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateViewStub()V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a010d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-boolean v4, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    if-eq v3, v4, :cond_0

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    iput v1, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    :cond_0
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$initRecyclerView$1$1;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$initRecyclerView$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    const-string v3, "mEventHandler"

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v3, p0, v5}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;I)V

    new-instance v5, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/16 v6, 0xa

    invoke-direct {v5, v6, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v4, v3, v5}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;-><init>(Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->interceptUpdate:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->needControlPanelUpdate:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->updateRecyclerViewAsync()V

    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
