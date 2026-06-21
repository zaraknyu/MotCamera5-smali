.class public final Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# static fields
.field public static final CLEAN_STATES:Landroid/util/ArraySet;

.field public static final DISABLE_STATES:Landroid/util/ArraySet;

.field public static final ENABLE_STATES:Landroid/util/ArraySet;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;

.field public static final LISTENED_VISIBILITY_NOTIFIERS:Ljava/util/List;


# instance fields
.field public aiGroupShotDismissCounter:I

.field public currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

.field public isEnabled:Z

.field public isOtherComponentVisible:Z

.field public final mcfStateAdapter:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$mcfStateAdapter$1;

.field public final multiVisibilitySubject$delegate:Ljava/lang/Object;

.field public final optInClose$delegate:Ljava/lang/Object;

.field public final optInIcon$delegate:Ljava/lang/Object;

.field public final optInOpen$delegate:Ljava/lang/Object;

.field public optInPill:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final optInText$delegate:Ljava/lang/Object;

.field public final otherComponentsVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;

.field public final scanBarCallback:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->DISABLE_STATES:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->ENABLE_STATES:Landroid/util/ArraySet;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->CLEAN_STATES:Landroid/util/ArraySet;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_ACTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SCAN_BAR_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/Notifier$TYPE;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->LISTENED_VISIBILITY_NOTIFIERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInClose$delegate:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInText$delegate:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInIcon$delegate:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInOpen$delegate:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;-><init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->otherComponentsVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->multiVisibilitySubject$delegate:Ljava/lang/Object;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$mcfStateAdapter$1;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$mcfStateAdapter$1;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;Lcom/motorola/camera/ui/UIManager;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->mcfStateAdapter:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$mcfStateAdapter$1;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;-><init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->scanBarCallback:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;

    return-void
.end method

.method public static showMacroToast(Z)V
    .locals 3

    const v0, 0x7f1205e7

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v2, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/16 v0, 0xfa0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    invoke-static {v2, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :cond_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, p0, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void
.end method


# virtual methods
.method public final animateIfVisibilityChanged()V
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->isOptInActiveScene()Z

    move-result v0

    const-string v1, "IS_SELECTED"

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->isEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->isOtherComponentVisible:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->unsupportedInMacroScene()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->showMacroToast(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->OPT_IN_PILL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->OPT_IN_PILL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->unsupportedInMacroScene()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v2}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->showMacroToast(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final hidePill(Lcom/motorola/camera/scenedetection/scene/Scene$Type;)Z
    .locals 2

    const-string/jumbo v0, "sceneType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NIGHT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->NIGHT_SCENE_OPT_IN:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVSupportedByCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVSupported(Ljava/lang/String;Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MACRO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne p0, p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUwSATFallbackSupported()Z

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PORTRAIT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne p0, p1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitMode()Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final inflateViewStub()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    const v1, 0x7f0a03c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_0
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInPill:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->resetSceneOptInSetting()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInClose$delegate:Ljava/lang/Object;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda10;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInOpen$delegate:Ljava/lang/Object;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda10;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final isOptInActiveScene()Z
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getOptType()Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->getSceneOptInKey(Lcom/motorola/camera/scenedetection/scene/Scene;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final registerSubFsmListeners$2(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupported(Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.subfsms.McfStateMachine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->mcfStateAdapter:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$mcfStateAdapter$1;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    return-void
.end method

.method public final rotate(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-eqz p1, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInPill:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->scanBarCallback:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    iget-object v1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->registerSubFsmListeners$2(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->multiVisibilitySubject$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->registerListeners(Z)V

    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object p0

    iget-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->registerSubFsmListeners$2(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->multiVisibilitySubject$delegate:Ljava/lang/Object;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->registerListeners(Z)V

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->aiGroupShotDismissCounter:I

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object p0

    iget-object v1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_1
    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_ACTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string p1, "mEventHandler"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of v0, p1, Lcom/motorola/camera/scenedetection/scene/ActionScene;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "null cannot be cast to non-null type com.motorola.camera.scenedetection.scene.ActionScene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/scenedetection/scene/ActionScene;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/scenedetection/scene/ActionScene;->doAction(Lcom/motorola/camera/EventListener;)V

    return-void

    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->resetSceneOptInSetting()V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->DISABLE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashProcess()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->CLEAN_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->ENABLE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    :goto_0
    return-void

    :cond_8
    :goto_1
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final unsupportedInMacroScene()Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MACRO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final updateViewStub()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->animateIfVisibilityChanged()V

    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
