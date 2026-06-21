.class public final Lcom/motorola/camera/fsm/camera/states/Main;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# static fields
.field public static final CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final CLOSE_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final INCOMPATIBLE_APP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final RESET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->RESET:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->RESET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CLOSE_WAIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->EXIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->INACTIVITY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->INCOMPATIBLE_APP_KEY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->INCOMPATIBLE_APP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method


# virtual methods
.method public final configure(Lcom/motorola/camera/CameraKpi;)V
    .locals 18

    move-object/from16 v0, p1

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->RESET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;-><init>(Z)V

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v5, 0x13

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;-><init>(Z)V

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v8, 0x2

    invoke-direct {v7, v5, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    iput-object v7, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v8, 0x17

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    iput-object v7, v3, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashSet;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v7

    iput-object v6, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_OPT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v8, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v10, 0xf

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v10, 0x11

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;I)V

    iput-object v9, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v9, 0x16

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    iput-object v8, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v7

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->UI_GL_FIRST_DRAW_COMPONENT_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v8, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-boolean v4, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v11, "LOADING_FIRST_FRAME_COMPLETE"

    invoke-direct {v9, v10, v11, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    iput-object v9, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v7

    iput-object v6, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/Main;->INCOMPATIBLE_APP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v9, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/16 v13, 0x10

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    iput-object v12, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v7

    iput-object v6, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v12, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v14, 0x2

    const/4 v15, 0x2

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    iput-object v13, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v14, 0x14

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    iput-object v13, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v7

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v13, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-boolean v4, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;

    new-instance v14, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v15, 0xb

    invoke-direct {v14, v15}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;-><init>(Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;)V

    iput-object v13, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v7

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_CAMERA_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v13, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-boolean v4, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v14, 0x13

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    iput-object v13, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v14, 0x15

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    iput-object v13, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v7

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ON_DESTROY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v13, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-boolean v4, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v4, "ON_DESTROY"

    invoke-direct {v14, v15, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    iput-object v14, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v5, 0x13

    invoke-direct {v14, v5}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    iput-object v14, v7, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA_TOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v12, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;

    const/4 v14, 0x0

    invoke-direct {v7, v14}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;-><init>(I)V

    iput-object v7, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    invoke-static {v5, v3, v1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/16 v14, 0x1c

    move-object/from16 v16, v9

    const/4 v9, 0x0

    invoke-direct {v7, v14, v9}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;-><init>()V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v14, 0x0

    invoke-direct {v7, v14, v9}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;

    invoke-direct {v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;-><init>(Z)V

    iput-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v9, 0x1d

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v9, 0x18

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v2, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v9, "OPEN_AFTER_CLOSE"

    const/4 v14, 0x0

    invoke-direct {v2, v15, v9, v14, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    iput-object v2, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    move-object/from16 v17, v3

    const/16 v3, 0x1b

    const/4 v0, 0x1

    invoke-direct {v14, v3, v0}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(IZ)V

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashSet;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    iput-object v7, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v12, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$ReInitRunnable;

    const/4 v5, 0x2

    const/4 v7, 0x2

    invoke-direct {v3, v7, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(II)V

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v14, 0x0

    invoke-direct {v5, v15, v9, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v5, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    iput-object v6, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-boolean v14, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v5, 0x1

    invoke-direct {v3, v15, v9, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    iput-object v13, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-boolean v14, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v3, v15, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v0

    iput-object v8, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-boolean v14, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v3, v10, v11, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    iput-object v3, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    move-object/from16 v3, p1

    invoke-static {v0, v2, v1, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    move-object/from16 v2, v17

    iput-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$HideMenuSwitchMode;-><init>(Z)V

    iput-object v5, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashSet;

    invoke-static {v1, v5, v0, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAutoTransitionState:Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v2, v5, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v5, Ljava/util/LinkedHashSet;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    iput-object v13, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    const/4 v14, 0x0

    iput-boolean v14, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v8, 0x1

    invoke-direct {v7, v15, v4, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    iput-object v7, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    invoke-static {v2, v5, v0, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/profileinstaller/DeviceProfileWriter;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-boolean v8, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAutoTransitionState:Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    iput-object v6, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    iput-object v1, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashSet;

    invoke-static {v2, v1, v0, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v1, v16

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    iput-boolean v8, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAutoTransitionState:Z

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/CameraKpi;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public final getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->RESET:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
