.class public final Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# static fields
.field public static final SCENE_ACTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SCENE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SCENE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->UPDATE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->ACTION:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_ACTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public static final getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;
    .locals 10

    const-string/jumbo v0, "state"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/4 v5, 0x0

    const/16 v6, 0x18

    invoke-direct {v4, v6, v5}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(IZ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v4, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/StateKey;->mKey:[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v9, "HISTORY_STATE"

    invoke-direct {v4, v8, v9, v5, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v4, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_ACTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v4, 0xd

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    invoke-direct {v3, v8, v9, p0, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    iput-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object p0

    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-boolean v6, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/4 v3, 0x0

    const/16 v4, 0x17

    invoke-direct {v1, v4, v3}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(IZ)V

    iput-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object p0

    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-boolean v6, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    iput-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final configure(Lcom/motorola/camera/CameraKpi;)V
    .locals 8

    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-direct {v1, v3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(IZ)V

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getCloseAppTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashSet;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAutoTransitionState:Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_ACTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v5, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v7, 0xd

    invoke-direct {v6, v7, v2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v6, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    iput-object v4, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v6, 0xf

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    iput-object v4, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v2, v1, v0, p1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashSet;

    iput-object v5, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v2, 0xf

    invoke-direct {p0, v2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    iput-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getMonoSwitchEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object p0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_ACTION_EXIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object p0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/16 v4, 0x9

    invoke-direct {v2, v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public final getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SCENE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
