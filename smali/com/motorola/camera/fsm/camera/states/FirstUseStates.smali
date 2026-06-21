.class public final Lcom/motorola/camera/fsm/camera/states/FirstUseStates;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# static fields
.field public static final FIRST_USE_CLI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final FIRST_USE_CLI_VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final FIRST_USE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->FIRST_USE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CLI_CAMERA:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_CLI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CLI_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_CLI_VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public static getTutorialTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_CLI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    if-eq p1, v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object p1

    iput-object p0, p1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v1, p1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    iput-object v1, p1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/ArrayList;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object p1

    iput-object p0, p1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_CLI_VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object p0, p1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    iput-object p0, p1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final configure(Lcom/motorola/camera/CameraKpi;)V
    .locals 8

    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

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

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_CLI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    iput-object v4, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashSet;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v4, v1}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->getTutorialTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE_VALUES:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5, v5}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_CLI_VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object p0

    iput-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v6}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v1, v5, v5}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public final getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->FIRST_USE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
