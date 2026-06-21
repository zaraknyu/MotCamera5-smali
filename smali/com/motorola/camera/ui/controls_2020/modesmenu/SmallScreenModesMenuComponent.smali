.class public final Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "SourceFile"


# static fields
.field public static final CLOSE_STATES:Landroid/util/ArraySet;

.field public static final DISABLE_STATES:Landroid/util/ArraySet;

.field public static final ENABLE_STATES:Landroid/util/ArraySet;

.field public static final HIDE_STATES:Landroid/util/ArraySet;

.field public static final INFLATION_STATES:Landroid/util/ArraySet;

.field public static final MODES_ORDERING:Ljava/util/List;

.field public static final STATES_TO_LISTEN:Landroid/util/ArraySet;

.field public static final VISIBLE_STATES:Landroid/util/ArraySet;


# instance fields
.field public isControlPanelOpen:Z

.field public isSliderBarSelected:Z

.field public isVideoRecording:Z

.field public modeChangeTriggered:Z

.field public final modePill$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final modePillArea$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final modeSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public final modeSettings$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final modesAdapter:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;

.field public final modesCloseButton$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final modesRecycler$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final modesRecyclerFrame$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public shouldKeepHidden:Z

.field public final showModeComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->INFLATION_STATES:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->CLOSE_STATES:Landroid/util/ArraySet;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->DISABLE_STATES:Landroid/util/ArraySet;

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v8}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v9}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v6, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->ENABLE_STATES:Landroid/util/ArraySet;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    filled-new-array {v8}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->HIDE_STATES:Landroid/util/ArraySet;

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    filled-new-array {v9}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->VISIBLE_STATES:Landroid/util/ArraySet;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->STATES_TO_LISTEN:Landroid/util/ArraySet;

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->MODES_ORDERING:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modePill$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modePillArea$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesRecyclerFrame$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesCloseButton$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesRecycler$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modeSettings$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 v0, 0x11

    invoke-direct {p1, v0, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modeSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v2

    invoke-static {v1, v2, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->showModeComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;

    invoke-direct {p1}, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;-><init>()V

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/lang/Object;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesAdapter:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result p2

    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final animateHide()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->animateHideModePill()V

    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void
.end method

.method public final animateHideModePill()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModePill()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda16;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda16;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final animateMenu(Z)V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1

    const v2, 0x7f0b001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v4, v0, v3

    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModePill()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v6, "getLayoutManager(...)"

    iget-object v7, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    instance-of v6, v3, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuRecycler;

    if-eqz v6, :cond_5

    move-object v6, v3

    check-cast v6, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuRecycler;

    xor-int/lit8 v8, p1, 0x1

    invoke-virtual {v6, v8}, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuRecycler;->setHiding(Z)V

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    invoke-static {v3, v6, v8, v5, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    new-instance v6, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;

    invoke-direct {v6, p1, p0}, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;-><init>(ZLcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;)V

    invoke-virtual {v3, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HIDE_MODE_UI_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v7, v3}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_6
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesRecyclerFrame$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v6, 0x0

    if-eqz v3, :cond_8

    if-eqz p1, :cond_7

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    invoke-static {v3, v7, v8, v5, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    :cond_8
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesCloseButton$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-static {v3, v7, v0, v5, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->setMenuUIVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->setUIClickable(Z)V

    :cond_a
    :goto_2
    return-void
.end method

.method public final animateShow()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->canShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modeChangeTriggered:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->updateModePillText()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->setUIClickable(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->animateShowModePill()V

    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    return-void
.end method

.method public final animateShowModePill()V
    .locals 5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModePill()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->cancelAnimation()V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b001c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda16;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda16;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-string/jumbo v0, "setDuration(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final canShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->shouldKeepHidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->isVideoRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->isSliderBarSelected:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->isControlPanelOpen:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getModePill()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modePill$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final getModeSettings()Lcom/motorola/camera/settings/Setting;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modeSettings$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/settings/Setting;

    return-object p0
.end method

.method public final getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesRecycler$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public final getRotatedViews()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->STATES_TO_LISTEN:Landroid/util/ArraySet;

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-string v0, "getStatesToListenFor(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onConfigurationChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->updateModePillMaxWidth()V

    return-void
.end method

.method public final remove()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->isSliderBarSelected:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->shouldKeepHidden:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->isControlPanelOpen:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->isVideoRecording:Z

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->setMenuUIVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModePill()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModeSettings()Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modeSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->showModeComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void
.end method

.method public final rotate(I)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->updateModePillMaxWidth()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModePill()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    int-to-float v0, v0

    rsub-int v1, p1, 0x168

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    const/high16 v3, 0x43b40000    # 360.0f

    if-gez v2, :cond_3

    add-float/2addr v1, v3

    :cond_3
    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    sub-float/2addr v1, v3

    :cond_4
    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    instance-of v1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    if-eqz v1, :cond_6

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->setRotation(F)V

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->uiOrientation:I

    return-void

    :cond_6
    instance-of p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;

    if-eqz p1, :cond_7

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;->rotation:F

    :cond_7
    return-void
.end method

.method public final setMenuUIVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesRecyclerFrame$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesCloseButton$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final setUIClickable(Z)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final show()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->canShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modeChangeTriggered:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->updateModePillText()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->setUIClickable(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModePill()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->INFLATION_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModeSettings()Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modeSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->showModeComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->CLOSE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldHideAllUi(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->shouldKeepHidden:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->isVideoRecording:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->shouldKeepHidden:Z

    return-void

    :cond_5
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->setUIClickable(Z)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->shouldKeepHidden:Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->isVideoRecording:Z

    :cond_7
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->DISABLE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->ENABLE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_a
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->VISIBLE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->isVideoRecording:Z

    :cond_c
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->shouldKeepHidden:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->canShow()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->setUIClickable(Z)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;

    const/16 v0, 0x9

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->shouldKeepHidden:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_e
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->shouldKeepHidden:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_f
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-virtual {p1}, Lcom/motorola/camera/settings/CaptureIntent;->isMirrorMode()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method public final updateModePillMaxWidth()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v1, "getLayoutManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070393

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v0

    const/16 v4, 0xb4

    if-eqz v0, :cond_1

    if-eq v1, v4, :cond_2

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x7f070182

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070069

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v4, 0x7f070068

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modePillArea$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMaxWidth(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModePill()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final updateModePillText()V
    .locals 5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModeSettings()Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModeSettings()Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getString(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModePill()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f03000a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const-string v2, "getStringArray(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "get(...)"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string p0, ""

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x8

    aget-object p0, p0, v0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    aget-object p0, p0, v3

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x3

    aget-object p0, p0, v0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x4

    aget-object p0, p0, v0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    const/4 v0, 0x6

    aget-object p0, p0, v0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_7
    const/4 v0, 0x5

    aget-object p0, p0, v0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_8
    const/16 v0, 0x9

    aget-object p0, p0, v0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_9
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_a
    const/4 v0, 0x7

    aget-object p0, p0, v0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_b
    const/16 v0, 0xa

    aget-object p0, p0, v0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12053f

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7f12045b
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
