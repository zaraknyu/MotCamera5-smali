.class public final Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# static fields
.field public static final PHOTO_MODES:Ljava/util/List;

.field public static final SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final WS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final WS_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final WS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final WS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final WS_STOPPING_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final WS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final WS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# instance fields
.field public final mImageIdArray:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WIDE_SELFIE_SHOT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_MEMORY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CONFIGURE_CAPTURE_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->LOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->UNLOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SET_REPEATING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->STOPPING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_STOPPING_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SAVING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->PHOTO_MODES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->mImageIdArray:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final configure(Lcom/motorola/camera/CameraKpi;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Z)V

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/4 v7, 0x0

    const/16 v8, 0xd

    invoke-direct {v6, v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(IZ)V

    iput-object v6, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashSet;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getCloseAppTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object v2, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;

    sget-object v7, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v8, 0x6

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v6

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v8, v6, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v9, v6, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v12, "IS_CLI_DISPLAY"

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    iput-object v10, v6, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashSet;

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v10

    iput-object v8, v10, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v8, v10, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v14, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v14, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-interface {v6, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->PHOTO_MODES:Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v10, v14, v15, v15}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object v2, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;

    invoke-direct {v6, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;-><init>(Z)V

    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v6

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v9, v6, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v8, v6, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x0

    invoke-direct {v10, v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v10, v6, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashSet;

    invoke-static {v6, v10, v3, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v3

    iput-object v8, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object v2, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v6, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v6, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashSet;

    invoke-static {v6, v8, v3, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v3

    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object v2, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;-><init>(I)V

    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v6, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v6, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashSet;

    invoke-static {v6, v8, v3, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v3

    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object v2, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;-><init>(II)V

    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v6, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$WideSelfieCaptureRunnable;

    invoke-direct {v7, v0}, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$WideSelfieCaptureRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;)V

    iput-object v7, v6, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashSet;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v7

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PANO_PROGRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v8, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v10, 0x2

    invoke-direct {v8, v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v8, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_STOPPING_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v8, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v7, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v10, 0x4

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    iput-object v8, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v8, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v7, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;-><init>(I)V

    iput-object v8, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v10, 0x4

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    iput-object v8, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_STOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v8, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v7, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    iput-object v8, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v8, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v7, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v10, 0x5

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    iput-object v8, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v10, 0x4

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    iput-object v8, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v8, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v10, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v5, 0x7

    invoke-direct {v15, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v15, 0x3

    invoke-direct {v5, v15, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v5, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v4, v6, v3, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v3

    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object v2, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;

    const/4 v5, 0x1

    invoke-direct {v4, v13, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;-><init>(II)V

    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v5, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    iput-object v6, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedHashSet;

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v6

    iput-object v8, v6, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v6, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v10, 0x7

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v10, 0x3

    invoke-direct {v8, v10, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v8, v6, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v6, v4, v3, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v3

    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object v2, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoSaveRunnable;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoSaveRunnable;-><init>(I)V

    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(ILjava/lang/Object;)V

    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v11, v12, v13, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    iput-object v4, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAVING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v5, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    invoke-static {v4, v14, v6, v6}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v4, v14, v6, v6}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    iput-object v5, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;-><init>(Z)V

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    invoke-static {v9, v14, v6, v6}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashSet;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public final getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WIDE_SELFIE_SHOT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
