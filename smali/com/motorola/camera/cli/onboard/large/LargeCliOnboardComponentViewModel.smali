.class public final Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;
.super Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;


# static fields
.field public static final LISTENED_STATES:Landroid/util/ArraySet;


# instance fields
.field public final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public onboardList:Ljava/util/List;

.field public pagerState:Landroidx/compose/foundation/pager/DefaultPagerState;

.field public final shouldLoad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_CLI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_CLI_VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/UIManager;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;-><init>(Lcom/motorola/camera/EventListener;)V

    iget-object p1, p1, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    iget-object p1, p1, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    const-string v0, "getLayoutManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->hasCliCutout(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->shouldLoad:Z

    sget-object p1, Landroidx/compose/ui/platform/AndroidUiDispatcher;->Main$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-static {}, Landroidx/compose/ui/platform/InvertMatrixKt;->getMain()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->onboardList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final finishOnboarding$1()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGestureVideoSupportedModes()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/EventListener;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->setVisible(Z)V

    return-void
.end method

.method public final getPagerState()Landroidx/compose/foundation/pager/PagerState;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->pagerState:Landroidx/compose/foundation/pager/DefaultPagerState;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "pagerState"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getShouldLoad()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->shouldLoad:Z

    return p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final showOnboard(Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "onboardList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->onboardList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/EventListener;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_CLI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "getUiContext(...)"

    const-string v4, "getLayoutManager(...)"

    if-eqz v2, :cond_0

    new-instance p1, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p1, v1}, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;-><init>(Z)V

    iput-object p0, p1, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->callback:Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->onCreate(Landroid/content/Context;)V

    return-void

    :cond_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_CLI_VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance p1, Lcom/motorola/camera/cli/onboard/CliOnboardVideoViewMode;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p1, v1}, Lcom/motorola/camera/cli/onboard/CliOnboardVideoViewMode;-><init>(Z)V

    iput-object p0, p1, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->callback:Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/motorola/camera/cli/onboard/CliOnboardVideoViewMode;->onCreate(Landroid/content/Context;)V

    return-void

    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->FIRST_USE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "BACK_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel$pagerNavigateBackward$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel$pagerNavigateBackward$1;-><init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponentViewModel;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v0, v0, p1, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_3
    return-void
.end method
