.class public final Lcom/motorola/camera/fsm/camera/states/GalleryStates;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# static fields
.field public static final GALLERY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->GALLERY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->OPEN:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public static getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object p0

    return-object p0
.end method

.method public static getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 4

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/StateKey;->mKey:[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4
    :goto_1
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_PHOTO:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 5
    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    .line 6
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreNotNullStringRunnable;

    invoke-direct {v3, p1, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreNotNullStringRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 p1, 0x2

    invoke-direct {p0, v0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    .line 12
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {p0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    .line 14
    iput-object p0, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    .line 15
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    return-object p0
.end method


# virtual methods
.method public final configure(Lcom/motorola/camera/CameraKpi;)V
    .locals 12

    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Z)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/4 v4, 0x0

    const/16 v5, 0xd

    invoke-direct {v3, v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(IZ)V

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getCloseAppTransitions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v3, 0x12

    invoke-direct {p0, v3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    iput-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object p0

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v5, "OPEN_GALLERY_CANCEL"

    const/4 v6, 0x1

    invoke-direct {v4, v1, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    iput-object v4, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-interface {p0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->GALLERY_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v8, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v9, "FINISH_APP"

    sget-object v10, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v8, v10, v9, v6, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    iput-object v8, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v9, 0x2

    invoke-direct {v8, v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v8, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v10, 0xe

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v11, "MCF_PROCESSING"

    invoke-direct {v9, v10, v11, v2, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;

    invoke-direct {v2, v6}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;-><init>(Z)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v9, 0x0

    invoke-direct {v2, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v2, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    iput-object v7, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v3, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v2, v1, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    iput-object v2, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v8, 0xe

    invoke-direct {v4, v8}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    iput-object v4, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    iput-object v7, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v4, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v4, v1, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    iput-object v4, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    iput-object v7, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v3, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v3, v1, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    iput-object v3, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public final getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->GALLERY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
