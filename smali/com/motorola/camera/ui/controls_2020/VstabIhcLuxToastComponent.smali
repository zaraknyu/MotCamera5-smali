.class public final Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "SourceFile"


# static fields
.field public static final HIDE_STATES:Landroid/util/ArraySet;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;


# instance fields
.field public controlPanelShowing:Z

.field public final controlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final envListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

.field public final hideToastRunnable:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda4;

.field public luxLowerThanThreshold:Z

.field public thresholdLux:I

.field public videoIdleState:Z

.field public vstabIhcLuxToast:Landroid/widget/TextView;

.field public vstabSettingIsIhc:Z

.field public final vstabSettingListener:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

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

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->HIDE_STATES:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x5

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->controlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->envListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    new-instance p1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->vstabSettingListener:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda4;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->hideToastRunnable:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda4;

    return-void
.end method


# virtual methods
.method public final couldShowToast()Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->controlPanelShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->luxLowerThanThreshold:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->vstabSettingIsIhc:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->videoIdleState:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getRotatedViews()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->vstabIhcLuxToast:Landroid/widget/TextView;

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

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a051c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->vstabIhcLuxToast:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->vstabSettingIsIhc:Z

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->VSTAB_IHC_LOW_LIGHT_LUX:Lcom/motorola/camera/AppFeatures$Feature;

    const/16 v2, 0x2328

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->thresholdLux:I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->vstabSettingListener:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method

.method public final onConfigurationChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    :cond_0
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 7

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->controlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->envListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda4;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->vstabSettingIsIhc:Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->tryToggleToast(Lkotlin/jvm/functions/Function0;)V

    :goto_0
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->vstabSettingIsIhc:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    return-void

    :cond_3
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->tryToggleToast(Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->tryToggleToast(Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_5
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v1, "MODE"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v3, :cond_9

    :goto_2
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->tryToggleToast(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    return-void

    :cond_8
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->vstabSettingListener:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->tryToggleToast(Lkotlin/jvm/functions/Function0;)V

    :cond_9
    return-void
.end method

.method public final tryToggleToast(Lkotlin/jvm/functions/Function0;)V
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->couldShowToast()Z

    move-result v0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->couldShowToast()Z

    move-result p1

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->hideToastRunnable:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda4;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_3

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda4;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
