.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;
.super Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
.source "SourceFile"


# static fields
.field public static final CLOSE_STATES:Landroid/util/ArraySet;

.field public static final LISTENED_SETTINGS:Ljava/util/List;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;


# instance fields
.field public final clickEnabled$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public controlPanelInteractions:I

.field public final controlPanelItemExpanded$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final controlPanelItems$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final executor:Ljava/util/concurrent/ExecutorService;

.field public final isControlPanel$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public isTrackingSettings:Z

.field public itemExpanded:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

.field public final lastOpenedKey$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public final shouldLoad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->CLOSE_STATES:Landroid/util/ArraySet;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->LISTENED_SETTINGS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/UIManager;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;-><init>(Lcom/motorola/camera/EventListener;)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->shouldLoad:Z

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->controlPanelItems$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->controlPanelItemExpanded$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->isControlPanel$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->clickEnabled$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->lastOpenedKey$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 v0, 0x9

    invoke-direct {p1, v0, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    new-instance p1, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v0, 0x1b

    invoke-direct {p1, v0}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v0, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_COMPOSE_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final checkVisibility(Ljava/lang/String;Z)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkn;->isControlPanelOpen()Z

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result v1

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_COMPOSE_EXPANDED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->setVisible(Z)V

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->lastOpenedKey$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->updateControlPanelItems()V

    return-void

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->setVisible(Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->setControlPanelItemExpanded(Z)V

    :cond_2
    return-void
.end method

.method public final getControlPanelItems()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->controlPanelItems$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getShouldLoad()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->shouldLoad:Z

    return p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final onClickSetting(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;Ljava/lang/Integer;)V
    .locals 4

    const-string/jumbo v0, "setting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->controlPanelValues:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->controlPanelValues:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    rem-int p2, v0, p2

    :goto_0
    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->controlPanelValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SETTINGS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/EventListener;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SETTINGS_LIST_OPENED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v1, v2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->clickEnabled$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->controlPanelInteractions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->controlPanelInteractions:I

    iget-object v2, v0, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    sget-object v3, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_RESTART:Lcom/motorola/camera/settings/Setting$UpdateType;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_REOPEN:Lcom/motorola/camera/settings/Setting$UpdateType;

    if-ne v2, v3, :cond_4

    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "PREVIOUS_VALUE"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SETTING"

    iget-object v3, v0, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MODE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SETTING_UPDATE_TYPE"

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lcom/motorola/camera/settings/SettingsManager;->updateTenBitModeSwitchCase(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/EventListener;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CONTROL_PANEL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v2, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p1, p2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->updateControlPanelItems()V

    return-void

    :cond_5
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

.method public final setControlPanelItemExpanded(Z)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->controlPanelItemExpanded$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->isTrackingSettings:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    goto :goto_1

    :cond_0
    :try_start_1
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->LISTENED_SETTINGS:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_COMPOSE_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->isTrackingSettings:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->updateControlPanelItems()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->clickEnabled$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->clickEnabled$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_3
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->CLOSE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    monitor-enter p0

    :try_start_3
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->LISTENED_SETTINGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_COMPOSE_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->isTrackingSettings:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ANALYTICS_CONTROL_PANEL_TAPS"

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->controlPanelInteractions:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->controlPanelInteractions:I

    return-void

    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_5
    return-void
.end method

.method public final updateControlPanelItems()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->isControlPanel$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "get(...)"

    const/16 v2, 0xa

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/EventListener;

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getControlPanelSettings(Lcom/motorola/camera/EventListener;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;-><init>(Lcom/motorola/camera/settings/Setting;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v0, v3}, [Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v0, v3}, [Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v3}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;-><init>(Lcom/motorola/camera/settings/Setting;)V

    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->expanded:Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move-object v3, v0

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->controlPanelItems$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
