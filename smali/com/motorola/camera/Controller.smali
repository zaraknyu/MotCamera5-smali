.class public final Lcom/motorola/camera/Controller;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/EventListener;
.implements Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;
.implements Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;


# static fields
.field public static final CHANGE_BRIGHTNESS_ANGLE:I


# instance fields
.field public mActivityCallback:Lcom/motorola/camera/Camera;

.field public mActivityChanging:Z

.field public final mActivityContext:Lcom/motorola/camera/Camera;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mCalibrationDataDebugUiListener:Landroidx/work/WorkQuery;

.field public final mCameraControlReceiver:Lcom/motorola/camera/CameraControlReceiver;

.field public final mCameraFsm:Landroidx/room/concurrent/FileLock;

.field public final mCameraPaneView:Landroid/view/ViewGroup;

.field public mCanShowDialogs:Z

.field public mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

.field public final mCommandLineReceiver:Lcom/motorola/camera/SecureCamera$1;

.field public mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

.field public mDelayDualPane:Z

.field public mDelayInit:Z

.field public volatile mDisplayCutoutProvider:Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

.field public mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

.field public mFeatureLimiterRunnable:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

.field public mFilterViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

.field public final mHandler:Landroid/os/Handler;

.field public mHeadsetReceiver:Landroidx/room/concurrent/FileLock;

.field public mInitOnResumeState:I

.field public volatile mIsAllowFolding:Z

.field public mIsCapturing:Z

.field public mIsDualPaneScreen:Z

.field public volatile mIsIdle:Z

.field public mIsLandscape:Z

.field public mIsSplitScreen:Z

.field public mIsUiResumed:Z

.field public mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

.field public mLocation:Lcom/motorola/camera/LocationManager;

.field public final mLock:Ljava/lang/Object;

.field public mMcfMlSettingManager:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

.field public mMcfSettingManager:Lcom/motorola/camera/mcfmanagers/McfSettingManager;

.field public mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

.field public final mMultiCameraListener:Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

.field public volatile mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

.field public volatile mPendingIntent:Landroid/content/Intent;

.field public mRegistered:Z

.field public final mRootView:Landroid/view/ViewGroup;

.field public mSceneModeManager:Lcom/motorola/camera/mcfmanagers/SceneModeManager;

.field public final mSensorEventListener:Lcom/motorola/camera/Controller$2;

.field public mShouldHideWhenLocked:Z

.field public mSignatureStyleWaitingForUi:Z

.field public mStorageChangedEventDetector:Lcom/google/zxing/Result;

.field public mUI:Lcom/motorola/camera/ui/UIManager;

.field public mWaitCapture:Ljava/util/concurrent/CountDownLatch;

.field public mWindowInfoAdapter:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public final mWindowInfoListener:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

.field public final mWindowLock:Ljava/lang/Object;

.field public mcfOrientationListener:Lcom/motorola/camera/Controller$McfOrientationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.camera.hide.hinge"

    const/16 v1, 0x46

    invoke-static {v1, v0}, Lcom/motorola/camera/shared/SystemSetting;->getInt(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/motorola/camera/Controller;->CHANGE_BRIGHTNESS_ANGLE:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/Camera;Landroid/view/ViewGroup;Landroidx/room/concurrent/FileLock;Lcom/motorola/camera/Camera;)V
    .locals 7

    const-string v0, "MotoCameraController"

    const-string/jumbo v1, "parseJson dur:"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mRegistered:Z

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mActivityChanging:Z

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mIsLandscape:Z

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    const/4 v4, 0x1

    iput v4, p0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mIsIdle:Z

    iput-boolean v4, p0, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mDelayInit:Z

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mIsDualPaneScreen:Z

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mDelayDualPane:Z

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/motorola/camera/Controller;->mLock:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mIsCapturing:Z

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mStorageChangedEventDetector:Lcom/google/zxing/Result;

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

    new-instance v5, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;-><init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;I)V

    iput-object v5, p0, Lcom/motorola/camera/Controller;->mMultiCameraListener:Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mSignatureStyleWaitingForUi:Z

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/motorola/camera/Controller;->mWindowLock:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    invoke-direct {v5, v6, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    iput-object v5, p0, Lcom/motorola/camera/Controller;->mWindowInfoListener:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    new-instance v5, Lcom/motorola/camera/Controller$2;

    invoke-direct {v5, v6, p0}, Lcom/motorola/camera/Controller$2;-><init>(ILjava/lang/Object;)V

    iput-object v5, p0, Lcom/motorola/camera/Controller;->mSensorEventListener:Lcom/motorola/camera/Controller$2;

    iput-object p3, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {p3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    const p3, 0x7f0a00b6

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/motorola/camera/Controller;->mCameraPaneView:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    iput-object p1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    iget-object p2, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p4, p4}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p3

    sget-object p4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p4, p4, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    invoke-static {p1, p2, v3, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkt;->createLayoutManager(Lcom/motorola/camera/Camera;Lcom/motorola/camera/ui/layoutmanager/LayoutManager;ZZZ)Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    invoke-static {p1}, Lcom/motorola/camera/JsonConfig;->parseJson(Landroid/content/ContextWrapper;)V

    sget-boolean p4, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, p2

    invoke-virtual {p4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "Error: JSON parsing exception "

    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;

    const/4 p4, 0x7

    invoke-direct {p3, p1, p4}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/Camera;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    invoke-virtual {p0, p0}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    new-instance p2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/motorola/camera/SecureCamera$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/SecureCamera$1;-><init>(Lcom/motorola/camera/Controller;)V

    iput-object p1, p0, Lcom/motorola/camera/Controller;->mCommandLineReceiver:Lcom/motorola/camera/SecureCamera$1;

    :cond_1
    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-nez p1, :cond_2

    sget-boolean p1, Lcom/motorola/camera/Util;->AUTO_TEST:Z

    if-eqz p1, :cond_3

    :cond_2
    new-instance p1, Lcom/motorola/camera/CameraControlReceiver;

    invoke-direct {p1}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Controller;->mCameraControlReceiver:Lcom/motorola/camera/CameraControlReceiver;

    :cond_3
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p2, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p2, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p3, p2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p3, p2}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_LIST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    iget-object p4, p3, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p4, p3}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    iget-object p4, p3, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p4, p3}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object p4, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode()Z

    move-result p4

    if-eqz p4, :cond_8

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMeisheFileNameKey()Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p4

    invoke-static {p4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p4

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v0, :cond_7

    if-eqz p0, :cond_5

    const-string p0, "Original"

    iget-object v0, p4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    iget-object p0, p4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/motorola/camera/meishe/MeisheEffects;->mKeepLiveFilter:Ljava/lang/String;

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/motorola/camera/meishe/MeisheEffects;->mKeepLiveFilter:Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMeisheFileNameKey()Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p4

    invoke-static {p4, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sput-object v2, Lcom/motorola/camera/meishe/MeisheEffects;->mKeepLiveFilter:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object p0, p4, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p0, p4}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    goto :goto_1

    :cond_7
    iget-object p0, p4, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p0, p4}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    :cond_8
    :goto_1
    iget-object p0, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_9

    iget-object p0, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v4, :cond_9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_9
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->HDR_WRAPPER:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOTION_CAPTURE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->resetVstabIhcSettings()V

    return-void
.end method


# virtual methods
.method public final activeRender(Z)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mCameraPreviewComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setActive(Z)V

    :cond_0
    return-void
.end method

.method public final checkFilesGoVersion()V
    .locals 11

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.android.apps.nbu.files"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x68ac

    cmp-long v0, v0, v3

    if-gez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_LAST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x6ddd00

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    add-long/2addr v7, v9

    cmp-long v7, v0, v7

    if-ltz v7, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const/4 v4, 0x3

    if-le v2, v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {v2}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    const v4, 0x7f12011c

    iput v4, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    const v4, 0x7f12014b

    iput v4, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    new-instance v4, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda37;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda37;-><init>(Lcom/motorola/camera/Controller;I)V

    iput-object v4, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x7f120174

    iput p0, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v4, 0x15

    invoke-direct {p0, v4}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p0, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x7f12015b

    iput p0, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method public final checkIntent(Landroid/content/Intent;ZZ)V
    .locals 9

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/settings/CaptureIntent;

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {v3}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/motorola/camera/settings/CaptureIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ON_LAUNCH_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v2}, Lcom/motorola/camera/settings/CaptureIntent;->getOnLaunchAction()Lcom/motorola/camera/launch/OnLaunchAction;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const-string v3, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {v2}, Lcom/motorola/camera/settings/CaptureIntent;->getMatchingMode()I

    move-result p2

    const/16 p3, 0x18

    const/16 v5, 0x12

    const/4 v6, 0x6

    if-eq p2, p3, :cond_0

    if-eq p2, v5, :cond_0

    if-eq p2, v6, :cond_0

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    const/16 p3, 0x29

    if-eq p2, p3, :cond_0

    const/16 p3, 0x27

    if-eq p2, p3, :cond_0

    const/16 p3, 0x33

    if-eq p2, p3, :cond_0

    const/16 p3, 0x26

    if-eq p2, p3, :cond_0

    const/16 p3, 0x35

    if-ne p2, p3, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result p3

    const/16 v7, 0x3e8

    if-eq p3, v7, :cond_2

    if-eq p3, p2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->resetSliderMenuMode()V

    :cond_2
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3, v7}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->getDualCameraModeByMode(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3, v7}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Lcom/motorola/camera/settings/CaptureIntent;->getMatchingCameraFacing(I)I

    move-result p3

    const/4 v7, -0x1

    if-eq p3, v7, :cond_3

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v2}, Lcom/motorola/camera/settings/CaptureIntent;->isQuickDrawLaunch()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq p3, v5, :cond_7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-ne p2, v6, :cond_7

    sget-boolean p2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_GAO_DING_NAME:Z

    if-eqz p2, :cond_7

    invoke-static {v5, v6}, Lcom/motorola/camera/settings/ModeSettingsHelper;->adjustSliderMode(II)V

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {p2, p2}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result p2

    if-nez p2, :cond_7

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    if-eqz p3, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {p2, p2}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_7
    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {p2, p2}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p2

    invoke-static {v2, p2}, Lcom/motorola/camera/settings/SettingsHelper;->shouldUseMacroCameraAndRemoveExtra(Lcom/motorola/camera/settings/CaptureIntent;Z)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p2, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-static {p0, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p2, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->BACK_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p2, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    iget-object p2, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {p2, p2}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p2

    const-string p3, "motorola.camera.intent.extra.USE_ACTION_SHOT"

    invoke-virtual {p1, p3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, p3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    if-eqz v1, :cond_9

    if-nez p2, :cond_9

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOTION_CAPTURE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    iget-object p2, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {p2, p2}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p2

    const-string p3, "motorola.camera.intent.extra.SHOW_SIGNATURE_STYLE"

    invoke-virtual {p1, p3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, p3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    if-eqz v1, :cond_a

    if-nez p2, :cond_a

    iput-boolean v0, p0, Lcom/motorola/camera/Controller;->mSignatureStyleWaitingForUi:Z

    :cond_a
    :goto_1
    const-string p0, "motorola.intent.category.QUICK_LAUNCH"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method public final checkLayoutMatchSplit()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->hasTrait(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    :cond_1
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public final createErrorDialog(Ljava/lang/String;ZIZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    const v2, 0x1030239

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-boolean p1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isProductWhiteLabel()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;-><init>(Lcom/motorola/camera/Controller;I)V

    const p4, 0x7f12013f

    invoke-virtual {v0, p4, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p4, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda31;

    invoke-direct {p4, p0, p2, p3}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda31;-><init>(Lcom/motorola/camera/Controller;ZI)V

    const p0, 0x7f12015b

    invoke-virtual {p1, p0, p4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda31;

    invoke-direct {p1, p0, p2, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda31;-><init>(Lcom/motorola/camera/Controller;ZI)V

    const p0, 0x7f120141

    invoke-virtual {v0, p0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mOnRotationChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-virtual {p0, p1}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result p0

    return p0
.end method

.method public final displayCameraErrorDialog(Z)V
    .locals 11

    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCamerasErrors()Lcom/motorola/camera/utility/Error;

    move-result-object v0

    iget v1, v0, Lcom/motorola/camera/utility/Error;->mSensor:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    int-to-long v4, v1

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    const-wide/16 v8, 0x2

    rem-long/2addr v4, v8

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/high16 v1, 0x1000000

    const/high16 v4, 0x2000000

    const/high16 v5, 0x4000000

    const/4 v6, 0x1

    if-le v3, v6, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Error;->getError()I

    move-result p1

    const v3, 0x7f120154

    goto :goto_6

    :cond_3
    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    array-length v7, v3

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_5

    aget-object v9, v3, v8

    sget-object v10, Lcom/motorola/camera/settings/CameraType;->BACK_SLAVE:Lcom/motorola/camera/settings/CameraType;

    if-ne v9, v10, :cond_4

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    xor-int/2addr v3, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_2
    if-nez v3, :cond_6

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager;->mCameraTypeErrorSet:Landroid/util/ArraySet;

    invoke-static {v3, v6}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    if-nez p1, :cond_7

    const v3, 0x7f120169

    move p1, v5

    goto :goto_6

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontMainCamera()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontWideCamera()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMainCamera()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackWideCamera()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    return-void

    :cond_a
    :goto_4
    const v3, 0x7f12013a

    move p1, v4

    goto :goto_6

    :cond_b
    :goto_5
    const v3, 0x7f12016c

    move p1, v1

    :goto_6
    sget-boolean v6, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isProductWhiteLabel()Z

    move-result v6

    iget-object v7, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    if-eqz v6, :cond_f

    if-eq p1, v1, :cond_e

    if-eq p1, v4, :cond_d

    if-eq p1, v5, :cond_c

    const p1, 0x7f120153

    goto :goto_7

    :cond_c
    const p1, 0x7f120168

    goto :goto_7

    :cond_d
    const p1, 0x7f120139

    goto :goto_7

    :cond_e
    const p1, 0x7f12016b

    :goto_7
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Error;->getError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_f
    if-eq p1, v1, :cond_12

    if-eq p1, v4, :cond_11

    if-eq p1, v5, :cond_10

    const p1, 0x7f120152

    goto :goto_8

    :cond_10
    const p1, 0x7f120167

    goto :goto_8

    :cond_11
    const p1, 0x7f120138

    goto :goto_8

    :cond_12
    const p1, 0x7f12016a

    :goto_8
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Error;->getError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_9
    invoke-virtual {p0, p1, v2, v3, v2}, Lcom/motorola/camera/Controller;->createErrorDialog(Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public final displayExtCameraErrorDialog()V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    const v2, 0x1030239

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120136

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120135

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;-><init>(Lcom/motorola/camera/Controller;I)V

    const p0, 0x7f120141

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final displayIncompatibleApkDialog()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final enableStarSearchingMode(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/LocationManager;->mIsStarSearchingMode:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/LocationManager;->startLocationUpdates(Landroidx/fragment/app/FragmentActivity;)V

    :cond_0
    return-void
.end method

.method public final getCallingPackage$1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCameraErrorMessage()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCamerasErrors()Lcom/motorola/camera/utility/Error;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isProductWhiteLabel()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f12012d

    goto :goto_0

    :cond_0
    const v1, 0x7f12012c

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Error;->getError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mDisplayCutoutProvider:Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/Controller;->mDisplayCutoutProvider:Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->initDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/Controller;->mDisplayCutoutProvider:Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mDisplayCutoutProvider:Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    return-object p0
.end method

.method public final getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    return-object p0
.end method

.method public final getOrientation()Lcom/motorola/camera/shared/OrientationEvent;
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :goto_1
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_GRAVITY_SENSOR_RATE_UI:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_2
    move v4, v0

    goto :goto_3

    :cond_1
    const/4 v0, 0x3

    goto :goto_2

    :goto_3
    new-instance v2, Lcom/motorola/camera/shared/OrientationEvent;

    iget-object v5, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-static {}, Lcom/motorola/camera/Util;->isDesktopModeWithLidClosed()Z

    move-result v6

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v7, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/shared/OrientationEvent;-><init>(IILcom/motorola/camera/Camera;ZZ)V

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_2
    :goto_4
    monitor-exit v1

    goto :goto_6

    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_6
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    return-object p0
.end method

.method public final getRootViewSize()Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 34

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_OPT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_AE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v16, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v17, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v18, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v19, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v20, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v21, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v22, Lcom/motorola/camera/fsm/camera/states/Main;->RESET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v23, Lcom/motorola/camera/fsm/camera/states/Main;->INCOMPATIBLE_APP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v24, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v25, Lcom/motorola/camera/fsm/camera/states/FoldScreenStates;->FOLD_FULL_SCREEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v26, Lcom/motorola/camera/fsm/camera/states/FoldScreenStates;->FOLD_SPLIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v27, Lcom/motorola/camera/fsm/camera/states/FoldScreenStates;->FOLD_DUAL_PANE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v28, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v29, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v30, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v31, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v32, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v33, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v2 .. v33}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getUiContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final handleHighThermalFeatureLimit()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f1205cf

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/16 v3, 0x1388

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    invoke-static {v2, v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mFeatureLimiterRunnable:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    const-wide/16 v1, 0x1388

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final handleIntent(Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/motorola/camera/settings/CaptureIntent;

    iget-object v3, v0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {v3}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/motorola/camera/settings/CaptureIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/motorola/camera/settings/CaptureIntent;->getMatchingMode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/settings/CaptureIntent;->getMatchingCameraFacing(I)I

    move-result v5

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v8

    const-string v9, "motorola.intent.category.QUICK_LAUNCH"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object v9, v0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {v9, v9}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v9

    invoke-static {v2, v9}, Lcom/motorola/camera/settings/SettingsHelper;->shouldUseMacroCameraAndRemoveExtra(Lcom/motorola/camera/settings/CaptureIntent;Z)Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v9, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-static {v6, v9}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v9, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v6, v9}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->BACK_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v9, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v6, v9}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MOTION_CAPTURE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v9}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_0
    move v6, v10

    goto :goto_1

    :cond_0
    iget-object v6, v0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {v6, v6}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v6

    const-string v9, "motorola.camera.intent.extra.USE_ACTION_SHOT"

    invoke-virtual {v1, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    invoke-virtual {v1, v9}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    if-eqz v12, :cond_1

    if-nez v6, :cond_1

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MOTION_CAPTURE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v9}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {v6, v6}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v6

    const-string v9, "motorola.camera.intent.extra.SHOW_SIGNATURE_STYLE"

    invoke-virtual {v1, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    invoke-virtual {v1, v9}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    if-eqz v12, :cond_2

    if-nez v6, :cond_2

    new-instance v6, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/4 v9, 0x4

    invoke-direct {v6, v9}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v3, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    move v6, v11

    :goto_1
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-object v12, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    if-ne v5, v7, :cond_3

    if-ne v4, v8, :cond_3

    invoke-virtual {v2}, Lcom/motorola/camera/settings/CaptureIntent;->isVoiceAssistantCapture()Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v0, "motorola.camera.intent.extra.TRIGGERED_LAUNCH_ACTION"

    invoke-virtual {v1, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "CAPTURE_TRIGGER"

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v9, v0, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

    const/4 v4, 0x3

    iget-object v2, v2, Lcom/motorola/camera/settings/CaptureIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "android.intent.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {v2, v4, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1e

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    const-string v2, "TIMER"

    invoke-virtual {v9, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VOICE_ASSISTANT_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, v9, v11}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v12, v0}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-object/from16 v17, v3

    goto/16 :goto_3

    :cond_3
    const-string v2, "USE_CASE"

    const-string v13, "INTENT_LAUNCH"

    const-string v14, "FACING"

    sget-object v15, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const-string v10, "SWITCH_CASE"

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move/from16 v16, v6

    const-string v6, "MODE_DIRECTION"

    move-object/from16 v17, v3

    const-string v3, "MODE"

    if-eqz v16, :cond_6

    if-ne v5, v7, :cond_5

    if-eq v4, v8, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v9, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v12, v0}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v9, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v9, v6, v11}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v9, v10, v15}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v9, v14, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {v9, v13, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INTENT_EXTRA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v9, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v12, v0}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_3

    :cond_6
    if-eq v5, v7, :cond_7

    if-eq v4, v8, :cond_7

    invoke-virtual {v9, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v9, v6, v11}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v9, v10, v15}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v9, v14, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {v9, v13, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VOICE_ASSISTANT_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v9, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v12, v0}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_3

    :cond_7
    if-eq v4, v8, :cond_8

    invoke-virtual {v9, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v9, v6, v11}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v9, v10, v15}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v9, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v12, v0}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    iget-object v0, v0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {v0, v0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    if-eq v5, v7, :cond_9

    invoke-virtual {v9, v14, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, v9, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v12, v0}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_9
    :goto_3
    const-string v0, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final handlePermissionRequired(Landroid/os/Bundle;)V
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {v0, v0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    const-string/jumbo v3, "perm_request_code"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-boolean v3, v0, Lcom/motorola/camera/PermissionsManager;->mCriticalPermissionsDenied:Z

    if-nez v3, :cond_9

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v3, v3, Lcom/motorola/camera/CameraApp;->mSecure:Z

    const/4 v4, 0x5

    if-eqz v3, :cond_1

    if-ne p1, v4, :cond_9

    :cond_1
    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eq p1, v3, :cond_3

    const/4 v6, 0x4

    if-eq p1, v6, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    new-array v6, v3, [Ljava/lang/String;

    const-string v7, "android.permission.RECORD_AUDIO"

    aput-object v7, v6, v5

    goto :goto_0

    :cond_3
    new-array v6, v3, [Ljava/lang/String;

    const-string v7, "android.permission.CAMERA"

    aput-object v7, v6, v5

    :goto_0
    if-nez v6, :cond_4

    move v9, v5

    goto :goto_2

    :cond_4
    array-length v7, v6

    move v8, v5

    move v9, v8

    :goto_1
    if-ge v8, v7, :cond_5

    aget-object v10, v6, v8

    invoke-virtual {v2, v10}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v9, :cond_6

    goto :goto_3

    :cond_6
    iget-boolean v0, v0, Lcom/motorola/camera/PermissionsManager;->mWaitingUserAction:Z

    if-nez v0, :cond_8

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    iput-boolean v3, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    if-ne p1, v4, :cond_7

    new-instance p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    iput v5, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->backgroundColor:I

    const v0, 0x7f120164

    iput v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f12016d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageHTML:Ljava/lang/String;

    iput-boolean v5, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeOnCancel:Z

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/Camera;I)V

    iput-object v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const v0, 0x7f120134

    iput v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/Camera;I)V

    iput-object v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x7f120132

    iput p0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :cond_7
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/PermissionsManager;->requestPermission(Lcom/motorola/camera/Camera;I)V

    :cond_8
    return-void

    :cond_9
    :goto_3
    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    const/16 v0, 0xc

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final hingeAngleChanged(I)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMART_CLI:Z

    if-nez v3, :cond_1

    const/16 v3, 0x50

    if-le p1, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object v0, v0, Lcom/motorola/camera/cli/content/CliContentManager;->showContentAllowed$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    sget-object v4, Lcom/motorola/camera/cli/content/CliContentManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v4, v4, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    goto :goto_3

    :cond_1
    const/16 v3, 0x5f

    if-gt p1, v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    iget-object v0, v0, Lcom/motorola/camera/cli/content/CliContentManager;->alwaysShowPreview$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    sget-object v4, Lcom/motorola/camera/cli/content/CliContentManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v5, v4, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    sget v3, Lcom/motorola/camera/Controller;->CHANGE_BRIGHTNESS_ANGLE:I

    if-le p1, v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    iget-object v0, v0, Lcom/motorola/camera/cli/content/CliContentManager;->changeBrightness$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    :goto_3
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    invoke-virtual {v0}, Lcom/motorola/camera/cli/content/CliContentManager;->finishPresentationHolder()V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {v0, v0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->ENABLE_SPLIT_SCREEN:Z

    if-eqz v0, :cond_5

    const/16 p1, 0x64

    :cond_5
    const/16 v0, 0x87

    if-ge p1, v0, :cond_6

    invoke-virtual {p0, v2, v1}, Lcom/motorola/camera/Controller;->setLayoutChanged(ZZ)V

    goto :goto_4

    :cond_6
    const/16 v0, 0x91

    if-le p1, v0, :cond_7

    invoke-virtual {p0, v1, v1}, Lcom/motorola/camera/Controller;->setLayoutChanged(ZZ)V

    :cond_7
    :goto_4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartCompositionSupported()Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    const/16 v3, 0xa0

    if-ge p1, v3, :cond_8

    iget-boolean v3, v0, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-nez v3, :cond_8

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->updateCompositionValue(ZZ)V

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->setLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Z)V

    return-void

    :cond_8
    const/16 v3, 0xb4

    if-ne p1, v3, :cond_9

    iget-boolean p1, v0, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    invoke-static {p0, p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->setLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0, v3}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->updateCompositionValue(ZZ)V

    :cond_9
    return-void
.end method

.method public final initDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;
    .locals 15

    const-string/jumbo v0, "width"

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/transition/Transition$1;

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroidx/transition/Transition$1;-><init>(I)V

    return-object p0

    :cond_0
    :try_start_0
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisplayCutoutsCoordinates:Lorg/json/JSONArray;

    invoke-static {}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getMainDisplayRealSize()Landroid/graphics/Point;

    move-result-object v1

    if-eqz p0, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string/jumbo v7, "y"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v4, Landroid/graphics/PointF;

    double-to-float v5, v5

    double-to-float v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    iget v11, v1, Landroid/graphics/Point;->x:I

    int-to-double v11, v11

    cmpl-double v11, v11, v9

    if-nez v11, :cond_2

    new-instance v4, Landroid/graphics/PointF;

    double-to-float v5, v5

    double-to-float v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v11, "height"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-double v13, v4

    mul-double/2addr v5, v13

    div-double/2addr v5, v9

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-double v9, v4

    mul-double/2addr v7, v9

    div-double/2addr v7, v11

    new-instance v4, Landroid/graphics/PointF;

    double-to-float v5, v5

    double-to-float v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Lkotlin/jvm/internal/SpreadBuilder;

    invoke-direct {p0, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "MotoCameraController"

    const-string v1, "Improperly formatted cutout display values array"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    new-instance p0, Landroidx/transition/Transition$1;

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroidx/transition/Transition$1;-><init>(I)V

    return-object p0
.end method

.method public final isCliDisplay()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final isFoldDualPaneScreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/Controller;->mIsDualPaneScreen:Z

    return p0
.end method

.method public final isFoldFullScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mCameraPaneView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/Controller;->mIsDualPaneScreen:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isSplitScreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    return p0
.end method

.method public final onBackInvoked()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TOGGLE_DISPLAY_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "IS_SELECTED"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_TUTORIAL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-virtual {v1, v0}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public final onRotationChanged(II)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller;->swapMic(I)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget p1, p1, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    invoke-static {p1}, Lcom/motorola/camera/shared/OrientationEvent;->getSurfaceRotationDegrees(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    :cond_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-static {p1}, Lcom/motorola/camera/shared/Util;->hasNaturalOrientationFeature(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {v2, v2}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/motorola/camera/Util;->isCLIState(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_2
    sget-boolean v1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    :cond_3
    move v1, p2

    :goto_1
    if-nez p1, :cond_4

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {p1, p1}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_4
    iget-boolean p1, p0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/motorola/camera/Util;->isDesktopModeWithLidClosed()Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v0

    goto :goto_2

    :cond_5
    move p1, p2

    :goto_2
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/motorola/camera/Util;->isCLIState(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_7

    if-nez v1, :cond_7

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move v0, p2

    :cond_7
    :goto_3
    invoke-virtual {v2, v0}, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->switchSensor(Z)V

    :cond_8
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ORIENTATION_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-virtual {p0, p1}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final playHaptic(I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method public final registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent;->mOnRotationChangeListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final registerHingeAngleListeners(Ljava/lang/Boolean;)V
    .locals 6

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mWindowInfoListener:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mSensorEventListener:Lcom/motorola/camera/Controller$2;

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    invoke-virtual {v0, v4, v1, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v1, Landroidx/window/layout/WindowInfoTracker;->Companion:Landroidx/window/layout/WindowInfoTracker$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-static {v1}, Landroidx/window/layout/WindowInfoTracker$Companion;->getOrCreate(Landroid/content/Context;)Landroidx/window/layout/FoldingFeature$State;

    move-result-object v4

    invoke-direct {v0, v4}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Landroidx/window/layout/FoldingFeature$State;)V

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mWindowInfoAdapter:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    const-string v4, "executor"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v4, Landroidx/room/concurrent/FileLock;

    iget-object v0, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v0, Landroidx/window/layout/FoldingFeature$State;

    invoke-virtual {v0, v1}, Landroidx/window/layout/FoldingFeature$State;->windowLayoutInfo(Landroid/app/Activity;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v1, v4, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    const-string v5, "flow"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v4, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p0

    new-instance v5, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;

    invoke-direct {v5, v0, v3, v2}, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v2, v2, v5, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p0

    invoke-interface {v1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_2
    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mWindowInfoAdapter:Landroidx/sqlite/db/SimpleSQLiteQuery;

    if-eqz p0, :cond_4

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroidx/room/concurrent/FileLock;

    iget-object p1, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p1, Ljava/util/LinkedHashMap;

    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/Job;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_4
    :goto_4
    return-void
.end method

.method public final registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    iget-object v0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/Fsm;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 4
    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final registerStateChangeListener(Ljava/util/Collection;)V
    .locals 1

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/StateChangeListener;

    .line 6
    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final saveNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.extra.IS_CLI_DISPLAY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->clearSessionSettings(ZZ)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;ZZ)V

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final setLayoutChanged(ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    iget-object v0, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/Fsm;

    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    iput-boolean p1, p0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    iget-boolean p2, p0, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {v1, v1}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v1

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    invoke-static {p2, v0, p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkt;->createLayoutManager(Lcom/motorola/camera/Camera;Lcom/motorola/camera/ui/layoutmanager/LayoutManager;ZZZ)Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TRIPOD_LAYOUT_CHANGED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, p2}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mCameraPaneView:Landroid/view/ViewGroup;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    sput-boolean p2, Lcom/motorola/camera/utility/ColorUtil;->enable:Z

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    iget-object p1, p1, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->onFoldSplitChanged()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    iget-object p1, p1, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->onConfigurationChanged(Z)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/motorola/camera/Util;->isDesktopModeWithLidClosed()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/motorola/camera/Util;->isCLIState(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    iget-boolean p0, p0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    invoke-virtual {p1, p0}, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->switchSensor(Z)V

    :cond_4
    return-void
.end method

.method public final setScreenParameters(Z)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {v2, v2}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v2

    invoke-static {v0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {v4, v4}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/motorola/camera/CameraApp;->setScreenParameters(Landroid/graphics/Point;Landroid/graphics/Point;IZ)V

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mCameraPaneView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget v2, v2, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    invoke-static {v2}, Lcom/motorola/camera/shared/OrientationEvent;->getSurfaceRotationDegrees(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->updateDisplayCutout(Landroid/content/Context;I)V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->onConfigurationChanged(Z)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final shouldHaveSecureMediaIds()Z
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".cli_continuity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/reflect/MotorolaSettingsSecure;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    if-eqz v0, :cond_1

    iget v1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/Controller;->mActivityChanging:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    :cond_0
    invoke-virtual {v0, p1}, Lcom/motorola/camera/Camera;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    :cond_1
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 12

    const-string v0, "errorMessage:"

    const-string/jumbo v1, "sensor error, error code: "

    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getCameraErrorMessage()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f12012e

    invoke-virtual {p0, p1, v5, v0, v4}, Lcom/motorola/camera/Controller;->createErrorDialog(Ljava/lang/String;ZIZ)V

    const-string p1, "MotoCameraController"

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getCameraErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_0
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_7

    :cond_1
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_5

    :cond_2
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v3

    const/4 v6, 0x2

    if-eqz v3, :cond_5

    iput-boolean v4, p0, Lcom/motorola/camera/Controller;->mIsIdle:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    if-eq p1, v6, :cond_3

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFamilyMode(I)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    iput-boolean v4, p0, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    goto/16 :goto_9

    :cond_5
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object p1, Lcom/motorola/camera/utility/ColdStartHelper;->INSTANCE:Lcom/motorola/camera/utility/ColdStartHelper;

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    :cond_6
    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x5

    if-eqz v3, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {v0, v7}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    :cond_7
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iput-boolean v5, p0, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IS_CLI_DISPLAY"

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {v1, v1}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->cachePhotosInfoFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz p1, :cond_8

    goto/16 :goto_9

    :cond_8
    new-instance p1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    sput-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->cachePhotosInfoFuture:Ljava/util/concurrent/CompletableFuture;

    goto/16 :goto_9

    :cond_9
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v8}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    invoke-static {v4}, Lcom/motorola/camera/service/JmsServiceInterface;->sendJobProcessingPaused(Z)V

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v7}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mMultiCameraListener:Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sput-object v9, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->cachePhotosInfoFuture:Ljava/util/concurrent/CompletableFuture;

    goto/16 :goto_9

    :cond_a
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v7}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_33

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_OPT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v8}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_33

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v8}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_33

    invoke-virtual {p1, v7}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_33

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v7}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto/16 :goto_4

    :cond_b
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v7}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    :cond_c
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v7}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x7

    if-eqz v7, :cond_d

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    iput-object v9, p0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller;->saveNewIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {v0, v8}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    :cond_d
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_AE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v7}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v8}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    :cond_e
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v7}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iput-boolean v5, p0, Lcom/motorola/camera/Controller;->mIsCapturing:Z

    goto/16 :goto_9

    :cond_f
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v7}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mWaitCapture:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_9

    :cond_10
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v7}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/Controller;->mWaitCapture:Ljava/util/concurrent/CountDownLatch;

    goto/16 :goto_9

    :cond_11
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LP_CONTINUOUS_SINGLE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v7}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x8

    if-eqz v7, :cond_12

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v8}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    :cond_12
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v7}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x3

    if-eqz v10, :cond_15

    iput-boolean v4, p0, Lcom/motorola/camera/Controller;->mIsCapturing:Z

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mMultiCameraListener:Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    iget v0, p0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    if-ne v0, v11, :cond_13

    iput v5, p0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "LOADING_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_13
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object p1

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY_MANUAL_CLI:Z

    if-nez v0, :cond_14

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CURRENT_PHYSICAL_CAMERA_ID:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->initData(Lcom/motorola/camera/fsm/camera/UseCase;Ljava/lang/String;Z)V

    :cond_14
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CACHE_VERSION_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-10004724-9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_15
    invoke-virtual {p1, v7}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-boolean p1, p0, Lcom/motorola/camera/Controller;->mSignatureStyleWaitingForUi:Z

    if-eqz p1, :cond_3c

    iput-boolean v4, p0, Lcom/motorola/camera/Controller;->mSignatureStyleWaitingForUi:Z

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {v0, v8}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    :cond_16
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v7}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    iput-boolean v5, p0, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    goto/16 :goto_9

    :cond_17
    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iput-boolean v5, p0, Lcom/motorola/camera/Controller;->mIsIdle:Z

    iput-boolean v4, p0, Lcom/motorola/camera/Controller;->mIsCapturing:Z

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isDesktopMode()Z

    move-result p1

    if-nez p1, :cond_18

    iput-boolean v5, p0, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->checkLayoutMatchSplit()V

    :cond_18
    iput v5, p0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    iget-boolean p1, p0, Lcom/motorola/camera/Controller;->mActivityChanging:Z

    if-eqz p1, :cond_19

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object p1

    iget-boolean p1, p1, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    if-nez p1, :cond_1a

    :cond_19
    iput-boolean v5, p0, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    :cond_1a
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    if-eqz p1, :cond_1b

    new-instance p1, Lcom/motorola/camera/settings/CaptureIntent;

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getCallingPackage$1()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/settings/CaptureIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/motorola/camera/settings/CaptureIntent;->isGoogleAssistantLaunch()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    iput-object v9, p0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    invoke-direct {v1, v6, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1b
    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->checkFilesGoVersion()V

    goto/16 :goto_9

    :cond_1c
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto/16 :goto_3

    :cond_1d
    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getNumberOfCameras()I

    move-result p1

    if-lez p1, :cond_3c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasAllPhysicalCameras()Z

    move-result p1

    if-nez p1, :cond_3c

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3c

    const-string p1, "MotoCameraController"

    const-string/jumbo v0, "stateChanged: sensor missing, getNumberOfCameras: %d"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getNumberOfCameras()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/motorola/camera/Controller;->displayCameraErrorDialog(Z)V

    goto/16 :goto_9

    :cond_1e
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v2, "IS_EXTERNAL_CAMERA"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->displayExtCameraErrorDialog()V

    goto/16 :goto_9

    :cond_1f
    invoke-virtual {p0, v5}, Lcom/motorola/camera/Controller;->displayCameraErrorDialog(Z)V

    sget-boolean v0, Lcom/motorola/camera/Util;->USER_BUILD:Z

    if-eqz v0, :cond_3c

    const-string v0, "MotoCameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCamerasErrors()Lcom/motorola/camera/utility/Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/utility/Error;->getError()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto/16 :goto_9

    :cond_20
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto/16 :goto_1

    :cond_21
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isJapanCarrier()Z

    move-result p1

    if-eqz p1, :cond_3c

    sget p1, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    if-lt p1, v11, :cond_22

    move v4, v5

    :cond_22
    if-eqz v4, :cond_3c

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->handleHighThermalFeatureLimit()V

    goto/16 :goto_9

    :cond_23
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CACHE_VERSION_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-10004724-9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_3c

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_GET_FACE_BEAUTY_DATA:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_GET_FACE_BEAUTY_DATA_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FIRST_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_24
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Main;->RESET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "FINISH_APP"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string v1, "error_message"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    if-eqz v2, :cond_25

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const p1, 0x7f120129

    invoke-virtual {p0, v1, v5, p1, v5}, Lcom/motorola/camera/Controller;->createErrorDialog(Ljava/lang/String;ZIZ)V

    goto :goto_0

    :cond_25
    const-string v2, "RECREATE_ACTIVITY"

    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_26

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object p1

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda15;

    invoke-direct {v3, v2, v4}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda15;-><init>(Lcom/motorola/camera/Camera;I)V

    invoke-virtual {p1, v3}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_26
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {p1}, Lcom/motorola/camera/ActivityBase;->finish()V

    :goto_0
    const-string p1, "MotoCameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_27
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->INCOMPATIBLE_APP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->displayIncompatibleApkDialog()V

    goto/16 :goto_9

    :cond_28
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/FoldScreenStates;->FOLD_FULL_SCREEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, v5}, Lcom/motorola/camera/Controller;->updateFoldScreen(Z)V

    goto/16 :goto_9

    :cond_29
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/FoldScreenStates;->FOLD_DUAL_PANE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0, v4}, Lcom/motorola/camera/Controller;->updateFoldScreen(Z)V

    goto/16 :goto_9

    :cond_2a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/FoldScreenStates;->FOLD_SPLIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iput-boolean v5, p0, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mIsLandscape:Z

    if-nez v0, :cond_2b

    monitor-exit p0

    return-void

    :cond_2b
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IS_TRIPOD_PREVIEW_SWITCH"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2c

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->TRIPOD_PREVIEW_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v6}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    :cond_2c
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v11}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    :cond_2d
    :goto_1
    iput-boolean v5, p0, Lcom/motorola/camera/Controller;->mActivityChanging:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    if-eqz v0, :cond_2e

    iput-boolean v4, p0, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    goto :goto_2

    :cond_2e
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2f
    iput v6, p0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    :cond_30
    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->isKeyguardLocked()Z

    move-result v0

    xor-int/2addr v0, v5

    iput-boolean v0, p0, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    :goto_2
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {v4}, Lcom/motorola/camera/service/JmsServiceInterface;->sendJobProcessingPaused(Z)V

    goto/16 :goto_9

    :cond_31
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "OPEN_GALLERY_CANCEL"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-static {v5}, Lcom/motorola/camera/service/JmsServiceInterface;->sendJobProcessingPaused(Z)V

    goto/16 :goto_9

    :cond_32
    :goto_3
    iput-boolean v5, p0, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    :cond_33
    :goto_4
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller;->handlePermissionRequired(Landroid/os/Bundle;)V

    goto/16 :goto_9

    :cond_34
    :goto_5
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error_retry"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SHOULD_EXIT"

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "REVIEW_PLAY"

    invoke-virtual {p1, v1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_35

    monitor-exit p0

    return-void

    :cond_35
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    const-string v1, "ACTIVITY_RESULT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_36

    iget v0, v0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mResult:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_6

    :cond_36
    iget v0, v0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mResult:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_37
    :goto_6
    invoke-virtual {p1}, Lcom/motorola/camera/ActivityBase;->finish()V

    goto :goto_9

    :cond_38
    :goto_7
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error_retry"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "SHOULD_EXIT"

    invoke-virtual {v0, v3, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    const-string v4, "ACTIVITY_RESULT"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;

    if-eqz v0, :cond_3a

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_39

    iget v0, v0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mResult:I

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_8

    :cond_39
    iget v0, v0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mResult:I

    invoke-virtual {v3, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_3a
    :goto_8
    invoke-virtual {v3}, Lcom/motorola/camera/ActivityBase;->finish()V

    :cond_3b
    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {v0}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->ERROR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_3c
    :goto_9
    monitor-exit p0

    return-void

    :goto_a
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final swapMic(I)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mic_rotation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public final unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/StateChangeListener;->getStatesToListenFor()Ljava/util/Collection;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    iget-object v1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/Fsm;

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 6
    new-instance v2, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/16 v3, 0xc

    invoke-direct {v2, p0, p1, v0, v3}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final unregisterStateChangeListener(Ljava/util/Collection;)V
    .locals 1

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/StateChangeListener;

    .line 8
    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateFoldScreen(Z)V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/camera/utility/ColorUtil;->enable:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/Controller;->mIsDualPaneScreen:Z

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;-><init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;ZII)V

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final windowHasFocus()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hasFocus()V

    goto :goto_0

    :cond_0
    return-void
.end method
