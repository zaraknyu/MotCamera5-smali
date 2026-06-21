.class public final Lcom/motorola/camera/detector/ScanningEngine;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"


# static fields
.field public static sInstance:Lcom/motorola/camera/detector/ScanningEngine;


# instance fields
.field public mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

.field public final mCallbacks:Ljava/util/Set;

.field public mEngineStatus:I

.field public mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

.field public final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mEngineStatus:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/camera/detector/ScanningEngine;
    .locals 2

    const-class v0, Lcom/motorola/camera/detector/ScanningEngine;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/detector/ScanningEngine;->sInstance:Lcom/motorola/camera/detector/ScanningEngine;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/camera/detector/ScanningEngine;

    invoke-direct {v1}, Lcom/motorola/camera/detector/ScanningEngine;-><init>()V

    sput-object v1, Lcom/motorola/camera/detector/ScanningEngine;->sInstance:Lcom/motorola/camera/detector/ScanningEngine;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/motorola/camera/detector/ScanningEngine;->sInstance:Lcom/motorola/camera/detector/ScanningEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final disposeDetectors()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    iget-object v2, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    :cond_0
    iput v1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mEngineStatus:I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_INIT:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 6

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAlwaysAwareSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mEngineStatus:I

    if-nez p1, :cond_8

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ALWAYS_AWARE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v4, v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeDetectionEnabled:[Z

    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v0

    aget-boolean v0, v4, v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    if-eqz p1, :cond_2

    iput-boolean v2, p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    iget-object v0, p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;I)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    new-instance p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    new-instance v0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/16 v4, 0x17

    invoke-direct {v0, v4, p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v5, v5, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeTimeBetweenScans:[I

    invoke-static {v4}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v4

    aget v4, v5, v4

    sget-object v5, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v5, v5, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeDetectionBackoff:Z

    invoke-direct {p1, v0, v4, v5}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;-><init>(Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;IZ)V

    iput-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->setScanAllowed(Z)V

    iput-object v3, p0, Lcom/motorola/camera/detector/ScanningEngine;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    iput v1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mEngineStatus:I

    return-void

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    if-eqz p1, :cond_8

    iput-boolean v2, p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    iget-object v0, p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iput-object v3, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/detector/ScanningEngine;->disposeDetectors()V

    return-void

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iput-object v3, p0, Lcom/motorola/camera/detector/ScanningEngine;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAlwaysAwareSupported()Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mEngineStatus:I

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v1}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->setScanAllowed(Z)V

    return-void

    :cond_6
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v2}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->setScanAllowed(Z)V

    return-void

    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    return-void

    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/detector/ScanningEngine;->disposeDetectors()V

    return-void
.end method
