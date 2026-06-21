.class public abstract Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "SourceFile"


# static fields
.field public static final ANIMATE_HIDE_STATES:Landroid/util/ArraySet;

.field public static final DISABLE_STATES:Landroid/util/ArraySet;

.field public static final HIDE_STATES:Landroid/util/ArraySet;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;

.field public static final SHOW_STATES:Landroid/util/ArraySet;


# instance fields
.field public buttonControl:Landroid/widget/ImageButton;

.field public initShowToggle:Z

.field public final mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public modeChanged:Z

.field public final notifierListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

.field public final panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public final showDualCaptureLayoutComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final showFaceBeautyComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

.field public final zoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->SHOW_STATES:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->HIDE_STATES:Landroid/util/ArraySet;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

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

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->ANIMATE_HIDE_STATES:Landroid/util/ArraySet;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->DISABLE_STATES:Landroid/util/ArraySet;

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

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

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-direct {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x5

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x7

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->FACE_BEAUTY_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->showFaceBeautyComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;

    const/16 v3, 0x9

    invoke-direct {p2, p0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    invoke-static {v0, v2, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->showDualCaptureLayoutComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->zoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    const/16 p2, 0x11

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->notifierListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    new-instance p1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 p2, 0x14

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static enableTapPreview(Z)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final controlVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->showSliderBar()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->showToggle()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->runAfterToggleButtonUnselected()V

    return-void
.end method

.method public abstract getDrawableIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public getNotifierListener()Lcom/motorola/camera/Notifier$Listener;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->notifierListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    return-object p0
.end method

.method public getPanelTriggeredListener()Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    return-object p0
.end method

.method public getRotatedViews()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public getShowFaceBeautyComponent()Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->showFaceBeautyComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    return-object p0
.end method

.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getZoomTriggeredListener()Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->zoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    return-object p0
.end method

.method public inflateViewStub()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f0a0489

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->setupClickListener$1()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->initShowToggle:Z

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->selectButtonAction(Landroid/widget/ImageButton;Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->setupImageDrawable()V

    return-void
.end method

.method public abstract isCurrentComponentAvailable()Z
.end method

.method public abstract isFeatureInUse()Z
.end method

.method public notifyModeComponent(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->isCurrentComponentAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "IS_SELECTED"

    invoke-static {p0, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public onApplyTint(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0

    return-void
.end method

.method public onFoldScreenPaneChanged(Z)V
    .locals 1

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFoldSplitChanged()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerSettingsChangeListener$5(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->getShowFaceBeautyComponent()Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FACE_BEAUTY_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->getPanelTriggeredListener()Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->getZoomTriggeredListener()Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->showDualCaptureLayoutComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_DUAL_CAPTURE_LAYOUT_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->getNotifierListener()Lcom/motorola/camera/Notifier$Listener;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void

    :cond_1
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->getNotifierListener()Lcom/motorola/camera/Notifier$Listener;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method

.method public reverseColor(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const p1, 0x7f060476

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->isFeatureInUse()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f060475

    goto :goto_0

    :cond_1
    const p1, 0x7f060477

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->onApplyTint(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public runAfterToggleButtonUnselected()V
    .locals 0

    return-void
.end method

.method public selectButtonAction(Landroid/widget/ImageButton;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->controlVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setupClickListener$1()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0, p0}, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setupImageDrawable()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->getDrawableIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const v3, 0x10100a1

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v2, v3, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/DrawableContainer;->setEnterFadeDuration(I)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/DrawableContainer;->setExitFadeDuration(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public showSliderBar()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "getLayoutManager(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070585

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const/4 v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060477

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120587

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->onApplyTint(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    :cond_3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->reverseColor(Z)V

    invoke-static {v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->enableTapPreview(Z)V

    return-void
.end method

.method public showToggle()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->isFeatureInUse()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f060475

    goto :goto_0

    :cond_1
    const v1, 0x7f060477

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->onApplyTint(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public stateChanged(Lcom/google/zxing/Result;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->registerSettingsChangeListener$5(Z)V

    return-void

    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->registerSettingsChangeListener$5(Z)V

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->resetFlags()V

    invoke-static {v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->enableTapPreview(Z)V

    return-void

    :cond_1
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->SHOW_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v5, v6}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v6

    if-ne v5, v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->showFilterVideoSliderBar(Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->notifyModeComponent(Z)V

    :cond_4
    :goto_0
    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    const-string p0, "SETTING"

    invoke-virtual {v1, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "MODE"

    invoke-virtual {v1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_5

    goto :goto_1

    :cond_5
    move v2, v4

    :goto_1
    invoke-static {v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->enableTapPreview(Z)V

    return-void

    :cond_6
    invoke-static {v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->enableTapPreview(Z)V

    return-void

    :cond_7
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->enableTapPreview(Z)V

    return-void

    :cond_8
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->ANIMATE_HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xb

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldHideAllUi(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isTimerCapture(Lcom/google/zxing/Result;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->isCurrentComponentAvailable()Z

    move-result p1

    invoke-virtual {v3, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_f

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_a
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->DISABLE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldHideAllUi(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xc

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    return-void

    :cond_c
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xd

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_d
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    if-eqz v2, :cond_e

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_f

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xe

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_e
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "OPEN_GALLERY_CANCEL"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xf

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_f
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
