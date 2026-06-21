.class public final Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;
.super Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
.source "SourceFile"


# static fields
.field public static final LISTENED_STATES:Landroid/util/ArraySet;


# instance fields
.field public final applyPreviewDoneListener:Lcom/motorola/camera/Notifier$Listener;

.field public final autoCaptureSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

.field public autoCaptureUpdateJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final canShowBoundaryHint$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public checkSavedSessionJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public hasFocus:Z

.field public final isAutoCapture$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isCapturing$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isStorageFull$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isToastVisible$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final previewRect$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final scanSessionCallbacks:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;

.field public final shouldLoad:Z

.field public final showResumeSavedSessionDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final toastListener:Lcom/motorola/camera/Notifier$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/UIManager;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;-><init>(Lcom/motorola/camera/EventListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAdobeScanSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->shouldLoad:Z

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->isCapturing$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->isStorageFull$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->previewRect$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->showResumeSavedSessionDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->isAutoCapture$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->canShowBoundaryHint$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->isToastVisible$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;I)V

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->applyPreviewDoneListener:Lcom/motorola/camera/Notifier$Listener;

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;)V

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->autoCaptureSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    new-instance p1, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;

    new-instance v0, Lc/a$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lc/a$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;I)V

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->scanSessionCallbacks:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;I)V

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->toastListener:Lcom/motorola/camera/Notifier$Listener;

    return-void
.end method


# virtual methods
.method public final checkInitialState()V
    .locals 7

    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->isInitialized()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result v0

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->showResumeSavedSessionDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->isAutoCapture$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sput-wide v5, La/l;->autoCaptureDetectionTime:J

    :cond_0
    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v0

    iget-object v0, v0, Lh/C;->d:Lh/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "callbacks"

    iget-object v6, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->scanSessionCallbacks:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v0, Lh/d;->b:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;

    iput-object v2, v0, Lh/d;->f:[Landroid/graphics/PointF;

    iget-object v5, v0, Lh/d;->j:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    iget-object v4, v0, Lh/d;->i:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v5, Le/o0;->d:Le/o0;

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, v0, Lh/d;->c:La/i;

    iget-object v4, v0, La/i;->a:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;

    if-nez v4, :cond_1

    invoke-virtual {v0}, La/i;->b()V

    :cond_1
    iget-object v4, v0, La/i;->a:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->setEnableBetaFeatures(Z)V

    :cond_2
    iget-boolean v4, v0, La/i;->d:Z

    if-eqz v4, :cond_3

    iput-boolean v3, v0, La/i;->d:Z

    iget-object v4, v0, La/i;->a:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->resetLiveBoundary()V

    :cond_3
    const-wide/16 v4, 0x0

    iput-wide v4, v0, La/i;->b:J

    iput v3, v0, La/i;->c:I

    iput-boolean v1, v0, La/i;->d:Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v0

    iget-object v0, v0, Lh/C;->d:Lh/d;

    iput-object v2, v0, Lh/d;->f:[Landroid/graphics/PointF;

    iget-object v5, v0, Lh/d;->j:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    iget-object v4, v0, Lh/d;->c:La/i;

    iget-boolean v5, v4, La/i;->d:Z

    iput-boolean v3, v4, La/i;->d:Z

    iget-object v3, v4, La/i;->a:Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim;->resetLiveBoundary()V

    :cond_5
    iget-object v3, v0, Lh/d;->a:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;

    iput-object v3, v0, Lh/d;->b:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;

    :cond_6
    :goto_0
    sget-object v0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-static {v0, v2}, Lcom/motorola/camera/storage/StorageUtils;->isFreeBytesSufficientWithFallback(Lcom/motorola/camera/ShotType;Landroidx/media3/exoplayer/WakeLockManager;)Z

    move-result v0

    xor-int/2addr v0, v1

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->isStorageFull$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getShouldLoad()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->shouldLoad:Z

    return p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final setCanShowBoundaryHint(Z)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->canShowBoundaryHint$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final startAdobeEditorActivity()V
    .locals 3

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$startAdobeEditorActivity$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$startAdobeEditorActivity$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 13

    iget-object v9, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->toastListener:Lcom/motorola/camera/Notifier$Listener;

    iget-object v10, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->autoCaptureSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->applyPreviewDoneListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->setVisible(Z)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->updateCapturingState(Z)V

    return-void

    :cond_0
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v4}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->updateCapturingState(Z)V

    return-void

    :cond_1
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAdobeScanMode()Z

    move-result v0

    const/4 v3, 0x3

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v7, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v1}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getUiContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->clearSessionOnInit:Z

    if-eqz v0, :cond_4

    invoke-static {v5}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->clearScanSession(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getSavedSessionState()Lh/q;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v7, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->fileManager:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    iget-object v1, v1, Lh/q;->c:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->hasAllExpectedTempImages(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->deleteTemporaryDir()V

    :cond_3
    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->scanSDKManager:Lh/s;

    invoke-static {v1, v0}, La/l;->initialize$default(Lcom/adobe/scan/sdk/ScanSDK;Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Lh/s;->createScanSession(Lh/q;)Lh/C;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->scanSession:Lh/C;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lh/k;->a:Lh/k;

    sput-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->scanDocumentDetector:Lh/k;

    sget-object v0, Lh/l;->a:Lh/l;

    sput-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->imageUtils:Lh/l;

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->checkSavedSessionJob:Lkotlinx/coroutines/StandaloneCoroutine;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->isActive()Z

    move-result v0

    if-ne v0, v5, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$checkForSavedSession$1;

    invoke-direct {v1, p0, v6}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$checkForSavedSession$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v6, v6, v1, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->checkSavedSessionJob:Lkotlinx/coroutines/StandaloneCoroutine;

    :goto_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    const-string v1, "getPreviewRect(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->previewRect$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->checkInitialState()V

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->ADOBE_AUTO_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->isAutoCapture$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->updateCapturingState(Z)V

    sget-object v12, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->fileManager:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    iget-object v0, v12, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->saveListener:Lcom/motorola/camera/saving/SaveListener;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    iget-object v0, v12, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->captureListener:Lcom/motorola/camera/saving/ImageCaptureManager$AdobeScanCaptureListener;

    const-class v1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v1

    :try_start_0
    sget-object v3, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iput-object v0, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mAdobeScanCaptureListener:Lcom/motorola/camera/saving/ImageCaptureManager$AdobeScanCaptureListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    new-instance v0, Lf/A;

    const-class v3, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    const-string v4, "startAdobeEditorActivity"

    const-string v5, "startAdobeEditorActivity()V"

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lf/A;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, v12, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->onCaptureAvailable:Lkotlin/jvm/functions/Function0;

    invoke-static {v11, v10}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v9}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->HIDE_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v9}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-wide v0, La/l;->retakeTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v4, La/l;->retakeTime:J

    sub-long/2addr v0, v4

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/CameraKpi$KPI;->ADOBE_SCAN_RETAKE_TO_SCAN_MODE_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)V

    :cond_6
    sget-wide v0, La/l;->addPageTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, La/l;->addPageTime:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->ADOBE_SCAN_ADD_PAGE_TO_SCAN_MODE_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    invoke-virtual {p0, v4}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->setVisible(Z)V

    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->fileManager:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->saveListener:Lcom/motorola/camera/saving/SaveListener;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    const-class v1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v1

    :try_start_2
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iput-object v6, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mAdobeScanCaptureListener:Lcom/motorola/camera/saving/ImageCaptureManager$AdobeScanCaptureListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ADOBE_AUTO_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v10}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v9}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->HIDE_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v9}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->hasOngoingScanSession()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$saveScanSessionState$1;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v6, v6, v1, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_8
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAdobeScanMode()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v5}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->updateCapturingState(Z)V

    return-void

    :cond_9
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v4}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->setVisible(Z)V

    return-void

    :cond_a
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v4}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->setVisible(Z)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->updateCapturingState(Z)V

    return-void

    :cond_b
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAdobeScanMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->setVisible(Z)V

    :cond_c
    return-void
.end method

.method public final updateCapturingState(Z)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAdobeScanMode()Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->isCapturing$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->isStorageFull$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sput-wide p0, La/l;->loadCapturePreviewTime:J

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER_PENDING:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
