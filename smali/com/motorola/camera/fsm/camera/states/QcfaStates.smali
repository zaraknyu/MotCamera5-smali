.class public final Lcom/motorola/camera/fsm/camera/states/QcfaStates;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# static fields
.field public static final SS_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_QCFA_CAPTURE_JPEG:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_QCFA_CREATE_REPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_WAIT_FOR_PROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# instance fields
.field public final mParentState:Lcom/motorola/camera/fsm/camera/CameraState;

.field public mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CLOSE_CAPTURE_SESSION:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SINGLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v2, v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_SURFACES:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v2, v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CREATE_CAPTURE_SESSION:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v2, v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CREATE_STREAMING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v2, v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SET_REPEATING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v2, v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_PROCESS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v2, v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_WAIT_FOR_PROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->QCFA_CREATE_REPROCESS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v2, v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_QCFA_CREATE_REPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->QCFA_CAPTURE_JPEG:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v2, v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_QCFA_CAPTURE_JPEG:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/CameraState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->mParentState:Lcom/motorola/camera/fsm/camera/CameraState;

    return-void
.end method


# virtual methods
.method public final configure(Lcom/motorola/camera/CameraKpi;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->mParentState:Lcom/motorola/camera/fsm/camera/CameraState;

    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/QcfaStates;I)V

    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;-><init>(I)V

    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v5, Ljava/util/LinkedHashSet;

    invoke-static {v5, v8, v2, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v8, 0x7

    invoke-direct {v5, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-direct {v5, v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(IZ)V

    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v8, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v7, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/4 v8, 0x0

    const/16 v9, 0xc

    invoke-direct {v7, v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(IZ)V

    iput-object v7, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    const/16 v9, 0x10

    invoke-direct {v7, v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;-><init>(IZ)V

    iput-object v7, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v5, Ljava/util/LinkedHashSet;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {v9, v11, v10}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(IZ)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v11, 0x5

    invoke-direct {v9, v11, v10}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(IZ)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v9, v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v9, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SURFACES_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v8, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v9, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v7

    iput-object v8, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v8, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    invoke-static {v7, v5, v2, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    iput-object v8, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;-><init>()V

    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v10, v12, v11}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(IZ)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v12, 0x5

    invoke-direct {v10, v12, v11}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(IZ)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x7

    const/4 v12, 0x1

    invoke-direct {v10, v12, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v10, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_CAMERA_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v10, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v11, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v5, Ljava/util/LinkedHashSet;

    invoke-interface {v5, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v11

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v15, 0x0

    invoke-direct {v14, v12, v15}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(IZ)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v14, 0x0

    const/4 v15, 0x5

    invoke-direct {v12, v15, v14}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(IZ)V

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v14, 0x7

    invoke-direct {v12, v6, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v12, v11, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    iput-object v7, v11, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v12, v11, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v11

    iput-object v7, v11, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v9, v11, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    invoke-static {v11, v5, v2, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    iput-object v9, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;-><init>(I)V

    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v11, 0x0

    const/4 v13, 0x1

    invoke-direct {v9, v13, v11}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(IZ)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;

    const/4 v13, 0x5

    invoke-direct {v9, v13, v11}, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;-><init>(IZ)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v9, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v9, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v8, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v5, Ljava/util/LinkedHashSet;

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v8

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v11, 0x7

    const/4 v13, 0x1

    invoke-direct {v9, v13, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    iput-object v9, v8, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    iput-object v7, v8, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v10, v8, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v8

    iput-object v7, v8, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v12, v8, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v8

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_CREATE_REPROC_REQUEST:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v9, v8, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_QCFA_CREATE_REPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v9, v8, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    invoke-static {v8, v5, v2, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    iput-object v9, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaReprocCaptureRequestRunnable;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v9, 0x9

    const/4 v13, 0x1

    invoke-direct {v8, v9, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v8, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_CREATE_REPROC_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v8, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_QCFA_CAPTURE_JPEG:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v9, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v5, Ljava/util/LinkedHashSet;

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v10

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v13, 0x9

    invoke-direct {v11, v13, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v11, v10, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    iput-object v8, v10, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_WAIT_FOR_PROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v8, v10, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v10

    iput-object v7, v10, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v12, v10, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    invoke-static {v10, v5, v2, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    iput-object v8, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v7, 0x9

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_REMOSAIC_PROCESS_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v9, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v5, Ljava/util/LinkedHashSet;

    invoke-static {v5, v7, v2, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    iput-object v9, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;-><init>(I)V

    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;

    const/4 v9, 0x3

    invoke-direct {v7, v6, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;-><init>(II)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/16 v9, 0x8

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;

    const/4 v9, 0x1

    invoke-direct {v7, v0, v9}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/QcfaStates;I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;

    const/4 v7, 0x6

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$SaveShutterRunnable;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_SHOT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-static {v0, v3, v2, v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    iput-object v12, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-object v4, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v4, 0x7

    const/4 v13, 0x1

    invoke-direct {v3, v13, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    iput-object v3, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v8, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashSet;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v4

    iput-object v3, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_GOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    sget-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v8, "QCFA_SHOT"

    invoke-direct {v5, v7, v8, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v5, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public final getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SINGLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
