.class public final Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;
.super Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$OnVisibilityChangeListener;


# static fields
.field public static final HIDE_STATES:Landroid/util/ArraySet;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;

.field public static final SHOW_STATES:Landroid/util/ArraySet;


# instance fields
.field public isOnFsmVisibleState:Z

.field public final isPreviewSwitched$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isVisible$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public isZoomVisible:Z

.field public final shouldLoad:Z

.field public final zoomVisibilityHandler:Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->HIDE_STATES:Landroid/util/ArraySet;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->SHOW_STATES:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/UIManager;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;-><init>(Lcom/motorola/camera/EventListener;)V

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->shouldLoad:Z

    iget-object p1, p1, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    iget-object p1, p1, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    const-string v0, "getLayoutManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->isVisible$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->isPreviewSwitched$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;-><init>(Ljava/util/List;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->zoomVisibilityHandler:Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    new-instance v0, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->TRIPOD_PREVIEW_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getShouldLoad()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->shouldLoad:Z

    return p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->isVisible$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final onVisibilityChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->isZoomVisible:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->updateVisibility()V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->isVisible$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->zoomVisibilityHandler:Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->registerListeners(Z)V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->isOnFsmVisibleState:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->updateVisibility()V

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->SHOW_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->registerListeners(Z)V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->isOnFsmVisibleState:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->updateVisibility()V

    :cond_1
    return-void
.end method

.method public final updateVisibility()V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->isOnFsmVisibleState:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->isZoomVisible:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPreviewSwitchSupportedOnCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_fold/tripod/TripodPreviewSwitchComponentViewModel;->setVisible(Z)V

    return-void
.end method
