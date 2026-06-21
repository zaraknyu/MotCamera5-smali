.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;
.super Lcom/motorola/camera/fsm/ChangeListener;
.source "SourceFile"


# static fields
.field public static final LISTENED_STATES:Landroid/util/ArraySet;


# instance fields
.field public final coreModule:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

.field public final memoryModule:Landroidx/compose/runtime/Latch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    invoke-direct {v0, p1}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->coreModule:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    new-instance v0, Landroidx/compose/runtime/Latch;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/Latch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->memoryModule:Landroidx/compose/runtime/Latch;

    return-void
.end method


# virtual methods
.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 10

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->memoryModule:Landroidx/compose/runtime/Latch;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->coreModule:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    const/4 v6, 0x0

    if-eqz v1, :cond_6

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x3

    const/4 v7, 0x1

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/motorola/camera/Util;->AUTO_TEST:Z

    if-eqz p1, :cond_5

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    sget-object v8, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v8, :cond_1

    invoke-interface {v8}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object v8

    goto :goto_0

    :cond_1
    move-object v8, v6

    :goto_0
    if-nez v8, :cond_2

    sget-object v8, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    :cond_2
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->aiScene:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v9, v8}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v8, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->candidateScene:Landroidx/lifecycle/MutableLiveData;

    const-string v9, "None"

    invoke-virtual {v8, v9}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v8, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->sceneMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v8

    goto :goto_1

    :cond_3
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v8, Landroid/util/Size;

    :goto_1
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->previewSize:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v8}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object p1, p1, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/device/CameraStateManager;

    iget-object v8, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->statusListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;

    invoke-virtual {p1, v8}, Lcom/motorola/camera/device/CameraStateManager;->addStateListener(Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;)V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->focusStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->envInfoListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->mcfStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->LISTENED_NOTIFIERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/Notifier$TYPE;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->notifiersListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->previewSizeListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda2;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->nvSettingListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda2;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->batteryDrainMonitor:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;

    invoke-direct {v3, p1, v6}, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v6, v6, v3, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    iput-boolean v7, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->isRunning:Z

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MEMORY_STATS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p0

    iput-object p0, v2, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;

    invoke-direct {p1, v2, v6}, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;-><init>(Landroidx/compose/runtime/Latch;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v6, v6, p1, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    iput-boolean v7, v2, Landroidx/compose/runtime/Latch;->_isOpen:Z

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return-void

    :cond_6
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->isRunning:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v7, v6}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    sget-object p1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object p1, p1, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/device/CameraStateManager;

    iget-object v7, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->statusListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;

    invoke-virtual {p1, v7}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->focusStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->envInfoListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->mcfStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->LISTENED_NOTIFIERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/Notifier$TYPE;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->notifiersListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_4

    :cond_8
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->previewSizeListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda2;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->nvSettingListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda2;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->batteryDrainMonitor:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p1, v6}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/MutationInterruptedException;)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->isRunning:Z

    :cond_9
    iget-boolean p0, v2, Landroidx/compose/runtime/Latch;->_isOpen:Z

    if-eqz p0, :cond_a

    iget-object p0, v2, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v6}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/MutationInterruptedException;)V

    iput-boolean v1, v2, Landroidx/compose/runtime/Latch;->_isOpen:Z

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_a
    return-void
.end method
