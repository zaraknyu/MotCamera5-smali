.class public Lcom/motorola/camera/Camera;
.super Lcom/motorola/camera/ActivityBase;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.implements Lcom/motorola/camera/CtaPermissionHelper$Listener;


# static fields
.field public static final mCameraButtonIntentFilter:Landroid/content/IntentFilter;

.field public static mExtraFreeDurationMs:I

.field public static mExtraFreeMemSizeKb:I

.field public static mLowMemKillSize:J

.field public static mSetExtraFreeRepeatedly:Z


# instance fields
.field public final launchManager:Lcom/motorola/camera/launch/LaunchManager;

.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mActivityForegroundReceiver:Lcom/motorola/camera/Camera$1;

.field public mAutoFinish:Z

.field public mCTAOpenInCreate:Z

.field public mCTAPermissionAllowed:Z

.field public mCTARecreate:Z

.field public mController:Lcom/motorola/camera/Controller;

.field public mDoLaunch:Z

.field public final mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

.field public final mHandler:Landroid/os/Handler;

.field public mIsCliDisplay:Ljava/lang/Boolean;

.field public mIsColdStart:Z

.field public mKeepSessionSettingOnExit:Z

.field public mMemKillerExecutor:Ljava/util/concurrent/ExecutorService;

.field public mMismatchActivity:Z

.field public mMismatchActivityLaunched:Z

.field public mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

.field public mOrientation:I

.field public final mScreenOffReceiver:Lcom/motorola/camera/Camera$1;

.field public final mSetExtraFreeKBytesRunnable:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "motorola.camera.intent.action.START"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/motorola/camera/Camera;->mLowMemKillSize:J

    const/4 v0, 0x0

    sput v0, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    sput v0, Lcom/motorola/camera/Camera;->mExtraFreeDurationMs:I

    sput-boolean v0, Lcom/motorola/camera/Camera;->mSetExtraFreeRepeatedly:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/motorola/camera/ActivityBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mMismatchActivity:Z

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mMismatchActivityLaunched:Z

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionAllowed:Z

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTARecreate:Z

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mAutoFinish:Z

    new-instance v0, Lcom/motorola/camera/launch/LaunchManager;

    invoke-direct {v0}, Lcom/motorola/camera/launch/LaunchManager;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    new-instance v0, Lcom/motorola/camera/Camera$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/Camera$1;-><init>(Lcom/motorola/camera/Camera;I)V

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mActivityForegroundReceiver:Lcom/motorola/camera/Camera$1;

    new-instance v0, Lcom/motorola/camera/Camera$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/Camera$1;-><init>(Lcom/motorola/camera/Camera;I)V

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mScreenOffReceiver:Lcom/motorola/camera/Camera$1;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/Camera;I)V

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mSetExtraFreeKBytesRunnable:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;

    return-void
.end method

.method public static aiColorToneInstrumentation(Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;->getModuleList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;

    invoke-virtual {v1}, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;->getColorToneValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ANALYTICS_AI_COLOR_TONE_FOOD_COORDINATES"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;->getModuleList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;

    invoke-virtual {v1}, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;->getColorToneValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ANALYTICS_AI_COLOR_TONE_PORTRAIT_COORDINATES"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;->getModuleList()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;

    invoke-virtual {p0}, Lcom/motorola/camera/colortone/AIPersonalColorToneModule;->getColorToneValues()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ANALYTICS_AI_COLOR_TONE_LANDSCAPE_COORDINATES"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logOneOffEvent(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final adjustLayoutToRealScreenSize()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v0

    const v1, 0x7f0a02a3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_3

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->isWindowInDesktopMode(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42400000    # 48.0f

    mul-float/2addr p0, v3

    float-to-int p0, p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public final clearMediaData()V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/Util;->getIntentSource(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->isSecureKeyGuardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    const-string v0, "flip_changed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sget-object p0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    if-nez p0, :cond_1

    new-instance p0, Lcom/motorola/camera/SecureDataHelper;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/camera/SecureDataHelper;-><init>(I)V

    sput-object p0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    :cond_1
    sget-object p0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedList;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_3
    :goto_0
    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    if-nez p0, :cond_4

    new-instance p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    invoke-direct {p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;-><init>()V

    sput-object p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    :cond_4
    sget-object p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->sInstance:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mMediaDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeDataManager;->mCurrentDateModified:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    return-void
.end method

.method public final getBaseContextOverrideConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;
    .locals 3

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->getDefaultDpiAndScreenSizeOverrideConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 p0, 0x2

    iput p0, v0, Landroid/content/res/Configuration;->screenLayout:I

    const/4 p0, 0x0

    iput p0, v0, Landroid/content/res/Configuration;->densityDpi:I

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    sget p1, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->sDefaultDensityValue:I

    iput p1, v0, Landroid/content/res/Configuration;->densityDpi:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v1, p0

    div-int/2addr v1, p1

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_1
    return-object v0
.end method

.method public final isCliDisplay(Landroid/content/Context;)Z
    .locals 2

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mIsCliDisplay:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/ActivityBase;->getDisplayId(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/Camera;->mIsCliDisplay:Ljava/lang/Boolean;

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mIsCliDisplay:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public final killApps()V
    .locals 11

    invoke-static {}, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->getDefault()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->VM_REQUEST_SWAPPINESS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v2}, Lcom/motorola/camera/shared/DeviceProperties;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0xa

    :cond_0
    sget-object v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->VM_REQUEST_DURATION_MS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v4}, Lcom/motorola/camera/shared/DeviceProperties;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v4

    if-ne v4, v3, :cond_1

    const/16 v4, 0xdac

    :cond_1
    sget-boolean v3, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    const-string v5, "MotoCamera"

    if-eqz v3, :cond_2

    const-string/jumbo v6, "vmRequestSwappiness = "

    invoke-static {v6, v2, v5}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    const-string/jumbo v3, "vmRequestDurationMs = "

    invoke-static {v3, v4, v5}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    iget-object v3, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    check-cast v3, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_4

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    sget v2, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    const v3, 0xc350

    const/4 v6, 0x1

    if-lt v2, v3, :cond_5

    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->SET_EXTRA_FREE_REPEATEDLY:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/motorola/camera/Camera;->mExtraFreeDurationMs:I

    sget v3, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/fsm/Fsm;->setExtraFreeKBytes(II)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldSetExtraFreeRepeatedly()Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/motorola/camera/Camera;->mExtraFreeDurationMs:I

    if-lez v2, :cond_5

    invoke-virtual {p0, v6, v6}, Lcom/motorola/camera/Camera;->setExtraFreeKBytesRepeatedly(ZZ)V

    :cond_5
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sget-wide v7, Lcom/motorola/camera/Camera;->mLowMemKillSize:J

    sub-long/2addr v3, v7

    iget-wide v7, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    cmp-long p0, v3, v7

    if-gez p0, :cond_6

    sub-long/2addr v7, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v7, v3

    long-to-int p0, v7

    move v3, p0

    move p0, v6

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    move v3, p0

    :goto_0
    sget-boolean v4, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "checkForMemoryPressure: availMem="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " threshold="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " pressure expected="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " requestToFreeUp (kb) ="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v7, "COLD"

    invoke-virtual {v4, v7}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "RAMPSREXP"

    if-eqz v7, :cond_8

    invoke-virtual {v4, v8}, Landroidx/sqlite/db/SimpleSQLiteQuery;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v4, v8, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putBoolean(Ljava/lang/String;Z)V

    iget-wide v7, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v9, 0x100000

    div-long/2addr v7, v9

    long-to-int v7, v7

    const-string v8, "RAMAVL"

    invoke-virtual {v4, v7, v8}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    iget-wide v7, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    div-long/2addr v7, v9

    long-to-int v2, v7

    const-string v7, "RAMTHRS"

    invoke-virtual {v4, v2, v7}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    :goto_1
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-boolean p0, v2, Lcom/motorola/camera/CameraApp;->mIsMemPressureExpected:Z

    if-lez v3, :cond_c

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "com.android.systemui:screenshot"

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_9

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :cond_9
    iget-object p0, v0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    if-eqz p0, :cond_a

    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    :cond_a
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_b

    const-string/jumbo p0, "use killAllBackgroundProcesses instead"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object p0, v0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    if-eqz p0, :cond_c

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_c
    :goto_2
    return-void
.end method

.method public final launchGoogleLens()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->lensApi:Lcom/motorola/camera/utility/lens/LensApi;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/motorola/camera/utility/lens/LensApi;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/utility/lens/LensApi;->GOOGLE_LENS_DATA:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->restartStateMachineAndInitOnResume()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f1201f5

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v2, 0x4

    iput v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v1, p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public final launchMicrosoftCopilot()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->INSTANCE:Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;

    :try_start_0
    sget-object v0, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->copilotAccessor$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/utility/ailens/AiLensAccessor;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.microsoft.appmanager"

    const-string v2, "com.microsoft.appmanager.acintegration.ux.StartUpActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.microsoft.ACTION_COPILOT_LAUNCH_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->restartStateMachineAndInitOnResume()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final onAccessibilityStateChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_TALKBACK:Lcom/motorola/camera/Notifier$TYPE;

    iget-object p0, p0, Lcom/motorola/camera/Notifier;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;I)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p3, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p3, :cond_d

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->GALLERY_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p3, p3, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-virtual {p3, v1}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_3

    :cond_0
    if-nez p1, :cond_2

    if-nez p3, :cond_1

    goto/16 :goto_5

    :cond_1
    :try_start_0
    const-string v1, "jsonResult"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;

    invoke-virtual {v1, p3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;

    invoke-virtual {p3}, Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;->isModuleListValid()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p3}, Lcom/motorola/camera/Camera;->aiColorToneInstrumentation(Lcom/motorola/camera/colortone/AIPersonalColorToneAnalyticsInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    const-string p3, "MotoCamera"

    const-string v1, "onActivityResult: error parsing result"

    invoke-static {p3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    const-string v2, "LOCATION"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/motorola/camera/Camera;->updateLocationSetting(Z)V

    goto/16 :goto_3

    :cond_3
    const/4 p3, 0x4

    if-ne p1, p3, :cond_4

    if-ne p2, v1, :cond_d

    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    goto/16 :goto_3

    :cond_4
    const/16 v2, 0xc

    if-ne p1, v2, :cond_5

    iget-object p3, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p3, :cond_d

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PHOTOS_STABILIZE_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p3, p3, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-virtual {p3, v1}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_3

    :cond_5
    const/4 v2, 0x7

    if-ne p1, v2, :cond_c

    sget-object v2, Lcom/motorola/camera/utility/lens/LensApiHelper;->lensApi:Lcom/motorola/camera/utility/lens/LensApi;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/motorola/camera/utility/lens/LensApi$Companion$LaunchResult;->Companion:Lcom/google/mlkit/common/internal/zzc;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/utility/lens/LensApi$Companion$LaunchResult;->values()[Lcom/motorola/camera/utility/lens/LensApi$Companion$LaunchResult;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_6
    :goto_0
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/utility/lens/LensApi$Companion$LaunchResult;

    iget v5, v4, Lcom/motorola/camera/utility/lens/LensApi$Companion$LaunchResult;->value:I

    if-ne v5, p2, :cond_6

    move-object v3, v4

    goto :goto_0

    :cond_7
    if-nez v3, :cond_8

    sget-object v3, Lcom/motorola/camera/utility/lens/LensApi$Companion$LaunchResult;->RESULT_UNKNOWN_ERROR:Lcom/motorola/camera/utility/lens/LensApi$Companion$LaunchResult;

    :cond_8
    sget-object v2, Lcom/motorola/camera/utility/lens/LensApi$Companion$LaunchResult;->RESULT_OK:Lcom/motorola/camera/utility/lens/LensApi$Companion$LaunchResult;

    if-eq v3, v2, :cond_9

    goto :goto_1

    :cond_9
    move v1, v0

    :goto_1
    if-eqz v1, :cond_b

    sget-object v2, Lcom/motorola/camera/utility/lens/LensApi;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error launching Lens "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    move v1, v0

    :cond_b
    :goto_2
    if-eqz v1, :cond_d

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v4, 0x7f1201f5

    invoke-direct {v3, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput p3, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-virtual {v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    sget-object p3, Lcom/motorola/camera/utility/lens/LensApiHelper;->INSTANCE:Lcom/motorola/camera/utility/lens/LensApiHelper;

    invoke-virtual {p3}, Lcom/motorola/camera/utility/lens/LensApiHelper;->reset()V

    invoke-virtual {p3}, Lcom/motorola/camera/utility/lens/LensApiHelper;->initialize()V

    goto :goto_3

    :cond_c
    const/4 p3, 0x5

    if-ne p1, p3, :cond_d

    iget-object p3, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p3, :cond_d

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p3, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    iget-object v2, v2, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/Fsm;

    iget-object v2, v2, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p3, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    :goto_3
    const/16 p3, 0x15

    invoke-static {p3}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object p3

    aget p1, p3, p1

    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput p1, p3, Lcom/motorola/camera/CameraApp;->mActivityRequestCode:I

    iput p2, p3, Lcom/motorola/camera/CameraApp;->mActivityResultCode:I

    iget-object p3, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p3, :cond_e

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ACTIVITY_RESULT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p3, p3, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-virtual {p3, v1}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p3

    if-eqz p3, :cond_10

    const/16 p3, 0xa

    if-ne p1, p3, :cond_10

    const/4 p1, -0x1

    if-ne p2, p1, :cond_f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_4

    :cond_f
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    :cond_10
    :goto_5
    return-void
.end method

.method public final onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/motorola/camera/arch/view/BaseFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/motorola/camera/arch/view/BaseFragment;

    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iput-object p0, p1, Lcom/motorola/camera/arch/view/BaseFragment;->eventListener:Lcom/motorola/camera/EventListener;

    :cond_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_0

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

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/CaptureIntent;->isCTSMode(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionAllowed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->showCtaInitialDialog()V

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/motorola/camera/Camera;->mOrientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v1, :cond_4

    iput v0, p0, Lcom/motorola/camera/Camera;->mOrientation:I

    iget-object p1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/motorola/camera/Controller;->isFoldFullScreen()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iget-boolean v0, p1, Lcom/motorola/camera/Controller;->mIsDualPaneScreen:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    invoke-virtual {p1}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/shared/OrientationEvent;->dispatchOnRotationChanged$1()V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iget p0, p0, Lcom/motorola/camera/Camera;->mOrientation:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iput-boolean v2, p1, Lcom/motorola/camera/Controller;->mIsLandscape:Z

    invoke-virtual {p1, v3}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    invoke-virtual {p1}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/shared/OrientationEvent;->updateDisplayOrientation()V

    iget-object p0, p1, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    new-instance v0, Lcom/motorola/camera/Controller$1;

    invoke-direct {v0, v3, p1}, Lcom/motorola/camera/Controller$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_4
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    sget-object v1, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v4, v4, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v4, :cond_6

    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_5

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    iget p1, v0, Landroid/graphics/Point;->y:I

    int-to-double v0, p1

    cmpl-double p1, v4, v0

    if-eqz p1, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->adjustLayoutToRealScreenSize()V

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v2}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    :cond_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SET_CONTENT_VIEW:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->ON_CREATE:Lcom/motorola/camera/CameraKpi$KPI;

    const-string v4, "MotoCamera"

    sget-boolean v5, Lcom/motorola/camera/Util;->AUTO_TEST:Z

    if-eqz v5, :cond_0

    const-string v5, "AUTO_TEST is enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v5, "startupToResume"

    const/4 v6, 0x5

    invoke-static {v6, v5}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(ILjava/lang/String;)V

    const-string v5, "openglShow"

    const/16 v7, 0x8

    invoke-static {v7, v5}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(ILjava/lang/String;)V

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const/high16 v8, 0x4000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-boolean v5, v0, Lcom/motorola/camera/Camera;->mAutoFinish:Z

    const/4 v9, 0x0

    if-eqz v5, :cond_1

    iput-boolean v9, v0, Lcom/motorola/camera/Camera;->mAutoFinish:Z

    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "startActivity not support."

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/motorola/camera/ActivityBase;->finish()V

    return-void

    :cond_1
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/settings/CaptureIntent;->isCTSMode(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->CTA_PERMISSION_CLICK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v10, v4, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v10, v4}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-boolean v10, v0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    if-nez v10, :cond_2

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    iget-object v4, v4, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v5, v0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    invoke-virtual {v0}, Lcom/motorola/camera/Camera;->showCtaInitialDialog()V

    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v0, v0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->updateMainDisplaySize(Landroid/content/ContextWrapper;)V

    invoke-static {v4, v5}, Lcom/motorola/camera/utility/ColdStartHelper;->onCreate(ZZ)V

    invoke-static {}, Lcom/google/android/gms/tasks/zzr;->getInstance()Lcom/google/android/gms/tasks/zzr;

    move-result-object v12

    new-instance v13, Ljava/lang/Thread;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;

    const/4 v15, 0x0

    invoke-direct {v14, v12, v15}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/gms/tasks/zzr;I)V

    const-string v12, "ShaderCache"

    invoke-direct {v13, v14, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    iput-boolean v5, v0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    const-string v12, "com.motorola.camera5"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    sget-object v12, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v13, 0x7f120131

    invoke-virtual {v12, v13, v9}, Lcom/motorola/camera/CameraApp;->showToast(II)V

    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ActivityBase;->finish()V

    return-void

    :cond_3
    sget-object v12, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v13, Lcom/motorola/camera/AppFeatures$Feature;->POP_UP_FRONT_CAMERA:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v12, v12, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v12, Ljava/util/EnumSet;

    invoke-virtual {v12, v13}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ActivityBase;->finish()V

    return-void

    :cond_4
    sget-object v12, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v12}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v12

    sget-object v13, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v14, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v15, Lcom/motorola/camera/CameraKpi$KPI;->FSM_IDLE:Lcom/motorola/camera/CameraKpi$KPI;

    filled-new-array {v13, v14, v15}, [Lcom/motorola/camera/CameraKpi$KPI;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v14, v9

    :goto_0
    const/4 v15, 0x3

    if-ge v14, v15, :cond_5

    aget-object v15, v13, v14

    iget-object v5, v12, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x1

    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    sget-boolean v5, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v5, :cond_6

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v9}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v9

    sget-object v12, Lcom/motorola/camera/CameraKpi$KPI;->START_TO_HAL_OPEN:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v13, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v14, Lcom/motorola/camera/CameraKpi$KPI;->UI_SHOW:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v15, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_RECEIVER:Lcom/motorola/camera/CameraKpi$KPI;

    filled-new-array {v3, v12, v13, v14, v15}, [Lcom/motorola/camera/CameraKpi$KPI;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v6, :cond_6

    aget-object v14, v12, v13

    iget-object v15, v9, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v15, Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v15, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x5

    goto :goto_1

    :cond_6
    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v6, 0x9

    invoke-virtual {v0, v6}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/Window;->addFlags(I)V

    const/high16 v7, 0x8000000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    const/16 v7, 0x200

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    const/high16 v7, 0x200000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-static {v0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v8

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v0, v4}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v10

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-virtual {v0, v0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v11

    invoke-virtual {v9, v10, v8, v7, v11}, Lcom/motorola/camera/CameraApp;->setScreenParameters(Landroid/graphics/Point;Landroid/graphics/Point;IZ)V

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v8, v7, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v8

    const/4 v9, 0x0

    :try_start_0
    iput-boolean v9, v7, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v8, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v8, v7}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;)V

    new-instance v9, Landroidx/room/concurrent/FileLock;

    invoke-direct {v9, v8, v7}, Landroidx/room/concurrent/FileLock;-><init>(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;)V

    if-eqz v5, :cond_7

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v7}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_7
    const v7, 0x7f0d0025

    invoke-virtual {v0, v7}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    if-eqz v5, :cond_8

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v7}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_8
    new-instance v2, Lcom/motorola/camera/Controller;

    const v7, 0x7f0a02a3

    invoke-virtual {v0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-direct {v2, v0, v7, v9, v0}, Lcom/motorola/camera/Controller;-><init>(Lcom/motorola/camera/Camera;Landroid/view/ViewGroup;Landroidx/room/concurrent/FileLock;Lcom/motorola/camera/Camera;)V

    iput-object v2, v0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0}, Lcom/motorola/camera/Camera;->adjustLayoutToRealScreenSize()V

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v7, "COLD"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putBoolean(Ljava/lang/String;Z)V

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/motorola/camera/QuickLaunchShortcutHelper;->editQuickLaunchShortcuts(Z)V

    invoke-static {v6}, Lcom/motorola/camera/Util;->setupWindow(Landroid/view/Window;)V

    iget-object v2, v0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v2}, Lcom/motorola/camera/Controller;->isFoldFullScreen()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_9
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v2

    const-string v6, "blanc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x23

    if-le v2, v6, :cond_a

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v6, 0x1002

    invoke-virtual {v2, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_a
    invoke-virtual {v0}, Lcom/motorola/camera/Camera;->clearMediaData()V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v9, 0x0

    invoke-virtual {v2, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v6, v0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v7, 0x0

    if-eqz v6, :cond_e

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v8, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {v6, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v6, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "Original"

    if-eqz v4, :cond_b

    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v4, :cond_b

    const/4 v9, 0x0

    goto :goto_2

    :cond_b
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    :goto_2
    if-eqz v9, :cond_c

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_PHOTO_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v16, 0x1

    xor-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v4, v8}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4, v9}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_VIDEO_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/motorola/camera/settings/SettingsHelper;->setMeisheVideoFilterValues(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_3

    :cond_c
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_PHOTO_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v1, v4}, Lcom/motorola/camera/settings/SettingsHelper;->setMeisheVideoFilterValues(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v9, 0x0

    invoke-static {v1, v7, v9}, Lcom/motorola/camera/settings/SettingsManager;->setLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    goto :goto_4

    :cond_d
    const/4 v9, 0x0

    :goto_4
    iget-object v1, v0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v8, 0x1

    invoke-virtual {v1, v6, v8, v9}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;ZZ)V

    iput-boolean v2, v0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    :cond_e
    invoke-virtual {v0, v0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_f

    :try_start_1
    invoke-static {v0}, Lmotorola/core_services/cli/CLIManager;->getInstance(Landroid/content/Context;)Lmotorola/core_services/cli/CLIManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lmotorola/core_services/cli/CLIManager;->hasFeature(I)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    const-string v1, "CLIManager"

    const-string v2, "CLIManager doesn\'t implement hasFeature"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    if-eqz v9, :cond_f

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_f
    invoke-virtual {v0, v0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowOnLockScreen(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    const-string v1, "com.motorola.internal.CAMERA_START"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.motorola.faceunlock.FACE_UNLOCK"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/Camera;->mMemKillerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;

    const/4 v4, 0x3

    invoke-direct {v2, v0, v4}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/Camera;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    if-eqz v5, :cond_10

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_10
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final onCtaDialogClick()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/motorola/camera/CtaPrivacyActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x15

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/Camera;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void
.end method

.method public final onCtaDialogNegativeButtonClick(I)V
    .locals 1

    const/16 v0, -0x65

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/Camera;->mCTAPermissionAllowed:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    :cond_0
    return-void
.end method

.method public final onCtaDialogPositiveButtonClick(I)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionAllowed:Z

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CTA_PERMISSION_CLICK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    const/16 v0, -0x66

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CTA_ALL_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CTA_ADVANCE_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CTA_BASIC_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    iget-object p1, p0, Lcom/motorola/camera/Camera;->mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/Camera;->mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iput-object v2, p0, Lcom/motorola/camera/Camera;->mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    iput-boolean v1, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    :cond_0
    iput-boolean v1, p0, Lcom/motorola/camera/Camera;->mCTARecreate:Z

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    const/4 v5, 0x6

    invoke-direct {v4, v0, v5}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ON_DESTROY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v3}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    monitor-enter v0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mStopped:Z

    iget-object v3, v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mInstrumentReportDBHelper:Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mScreenOffReceiver:Lcom/motorola/camera/Camera$1;

    invoke-static {p0, v0}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    const-string v0, "com.motorola.internal.CAMERA_STOP"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "com.motorola.faceunlock.FACE_UNLOCK"

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    iput-object v2, v0, Lcom/motorola/camera/launch/LaunchManager;->callback:Lcom/motorola/camera/Camera;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldSetExtraFreeRepeatedly()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, v1}, Lcom/motorola/camera/Camera;->setExtraFreeKBytesRepeatedly(ZZ)V

    :cond_3
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onDestroy()V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x2766

    const/4 v5, 0x0

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2767

    if-eq v3, v4, :cond_2

    iget-object v0, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/ui/UIManager;->dispatchKeyEvent(ILandroid/view/KeyEvent;)Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_0

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    const/16 v2, 0x52

    if-eq v1, v2, :cond_4

    const/16 v2, 0x55

    if-eq v1, v2, :cond_0

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_0

    const/16 v2, 0x50

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :cond_0
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p0

    const/16 p1, 0x80

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_4

    :cond_1
    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/UIManager;->processKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_2
    const-string p0, "SWITCH_TYPE"

    invoke-virtual {v2, p0, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1, v2, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, p0}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    :cond_3
    const-string p0, "CAPTURE_TRIGGER"

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->STYLUS:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v2, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "IS_SPLIT_SCREEN"

    iget-boolean p1, v0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    invoke-virtual {v2, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1, v2, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, p0}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v3, p2}, Lcom/motorola/camera/ui/UIManager;->dispatchKeyEvent(ILandroid/view/KeyEvent;)Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_0

    const/16 v4, 0x42

    if-eq v3, v4, :cond_0

    const/16 v4, 0x55

    if-eq v3, v4, :cond_0

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_0

    const/16 v4, 0x50

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    move v0, v2

    goto :goto_0

    :cond_0
    :pswitch_0
    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/UIManager;->processKeyEvent(Landroid/view/KeyEvent;)V

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    if-eqz v2, :cond_3

    return v1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onLaunchStarted()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    const-string v2, "MotoCamera"

    if-nez v0, :cond_0

    const-string p1, "Received new intent on main display activity while LID is closed"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v1, p0, v1, v0}, Lcom/motorola/camera/launch/LaunchManager;->launch(IILcom/motorola/camera/Camera;ZZ)V

    return-void

    :cond_0
    const-string v0, "android.motorola.action.STILL_IMAGE_CAMERA_CLI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.motorola.action.STILL_IMAGE_CAMERA_SECURE_CLI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string p0, "Received new intent on main display activity to open CLI -> ignore"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_7

    const-string v0, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iget-boolean v2, v0, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_5

    iget-boolean v1, v0, Lcom/motorola/camera/Controller;->mIsIdle:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Lcom/motorola/camera/Controller;->handleIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget v1, v0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    if-ne v1, v3, :cond_4

    invoke-virtual {v0, p1}, Lcom/motorola/camera/Controller;->saveNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, v0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_5
    iget v2, v0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    if-ne v2, v3, :cond_6

    invoke-virtual {v0, p1}, Lcom/motorola/camera/Controller;->saveNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;ZZ)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "NEW_INTENT_REQUEST_MODE"

    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "NEW_INTENT_REQUEST_FACING"

    invoke-virtual {v3, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->NEW_INTENT_REQUEST:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v4, v3, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v2}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_0
    iget-object p1, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    iget-object p1, p1, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/Fsm;

    iget-object p1, p1, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowOnLockScreen(Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->clearMediaData()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_8

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    iget-object v0, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/Fsm;

    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method

.method public final onPauseTasks()V
    .locals 9

    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mMismatchActivity:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/CameraApp;->mIsActivityOnPause:Z

    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->ON_PAUSE:Lcom/motorola/camera/CameraKpi$KPI;

    if-eqz v0, :cond_2

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_2
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3, p0}, Lcom/motorola/camera/CameraApp;->isLatestActivityWindow(Lcom/motorola/camera/Camera;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-boolean v4, v3, Lcom/motorola/camera/CameraApp;->mIsActivityOnResume:Z

    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    iget-object v6, v3, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    new-instance v7, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ON_PAUSE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v7, v8, v5, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v6, v7}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iget-object v1, v3, Lcom/motorola/camera/Controller;->mWaitCapture:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_4

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v1, v3, Lcom/motorola/camera/Controller;->mWaitCapture:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v1, v6, v7, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/Controller;->activeRender(Z)V

    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iput-boolean v4, v1, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    iget-object v3, v1, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    iget-object v3, v3, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/Fsm;

    iget-object v3, v3, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    const/16 v7, 0xf

    invoke-direct {v6, v1, v7}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-boolean v4, v1, Lcom/motorola/camera/CameraApp;->mIsActivityVisible:Z

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.camera5.ACTION_ENABLE_SELFIE_TILE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.camera5.ACTION_ENABLE_QR_SCAN_TILE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/motorola/camera/Camera;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-static {v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->unregisterListener(Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;)V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/camera/Camera;->mActivityForegroundReceiver:Lcom/motorola/camera/Camera$1;

    invoke-virtual {v1, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    if-eqz v0, :cond_d

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_6
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->FSM_IDLE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_7
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_COLD_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_8
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->UI_SHOW:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_9
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_a
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->AUTO_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_b
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TOUCH_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_c
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_d
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroidx/fragment/app/FragmentActivity;Z)V

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/PermissionsManager;->permissionRequestResult(ILandroidx/fragment/app/FragmentActivity;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Camera;->updateLocationSetting(Z)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/Camera;->mCTARecreate:Z

    return-void
.end method

.method public final onResumeTasks()V
    .locals 10

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->ON_RESUME:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/motorola/camera/CameraApp;->mIsActivityOnPause:Z

    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mMismatchActivity:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v5}, Lcom/motorola/camera/Controller;->activeRender(Z)V

    :cond_1
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v6, v1, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iput-boolean v2, v1, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v6, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v6, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v6, Lcom/motorola/camera/CameraKpi$KPI;->FSM_IDLE:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_4
    const-string v1, "MotoCamera"

    const-string v6, "App version: 10004724"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v6, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "TOTAL_STARTUP_W_CAF_O"

    const/16 v7, 0xb

    invoke-static {v7, v1}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(ILjava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_5
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v6, Lcom/motorola/camera/CameraKpi$KPI;->UI_SHOW:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_6
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_7
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v6, 0x2

    if-eqz v1, :cond_9

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-boolean v5, v7, Lcom/motorola/camera/CameraApp;->mIsActivityOnResume:Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object v1, v1, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-virtual {v1, v7}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iget-boolean v7, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_8
    sget-object v7, Lcom/motorola/camera/storage/MediaVolumesHolder;->clients:Landroid/util/ArraySet;

    invoke-static {v1}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getClientKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/motorola/camera/storage/MediaVolumesHolder;->clients:Landroid/util/ArraySet;

    invoke-virtual {v7, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    new-instance v7, Lcom/motorola/camera/storage/MediaVolumesHolder$registerClient$$inlined$runOnWorker$1;

    invoke-direct {v7, v6}, Lcom/motorola/camera/storage/MediaVolumesHolder$registerClient$$inlined$runOnWorker$1;-><init>(I)V

    invoke-virtual {v1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_0
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroidx/fragment/app/FragmentActivity;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-boolean v5, v1, Lcom/motorola/camera/CameraApp;->mIsActivityVisible:Z

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.motorola.camera5.ACTION_DISABLE_SELFIE_TILE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.motorola.camera5.ACTION_DISABLE_QR_SCAN_TILE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->isSecureKeyGuardLocked()Z

    move-result v1

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-boolean v1, v7, Lcom/motorola/camera/CameraApp;->mSecure:Z

    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v1, :cond_d

    iget-boolean v7, v1, Lcom/motorola/camera/Controller;->mDelayInit:Z

    if-eqz v7, :cond_a

    iget-object v7, v1, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    new-instance v8, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v7, v8}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iput-boolean v2, v1, Lcom/motorola/camera/Controller;->mDelayInit:Z

    :cond_a
    sget-boolean v7, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    iput-boolean v7, v1, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    iget-object v7, v1, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-eqz v7, :cond_d

    iget-boolean v8, v1, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    if-nez v8, :cond_b

    iput-boolean v5, v1, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    iget-object v5, v7, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->resume()V

    goto :goto_1

    :cond_b
    iget v5, v1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    if-ne v5, v6, :cond_c

    new-instance v5, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object v6, v1, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-virtual {v6, v5}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const/4 v5, 0x3

    iput v5, v1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    goto :goto_2

    :cond_c
    iget-object v5, v1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    if-eqz v5, :cond_d

    iget-boolean v5, v1, Lcom/motorola/camera/Controller;->mIsIdle:Z

    if-eqz v5, :cond_d

    iget-object v5, v1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/Controller;->handleIntent(Landroid/content/Intent;)V

    iput-object v4, v1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    invoke-static {}, Lcom/motorola/camera/CameraIntentReceiver;->checkVibrate()V

    :cond_d
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/motorola/camera/Camera;->mOrientation:I

    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/Util;->getIntentSource(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "flip_changed"

    invoke-static {v1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    :cond_e
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v5, p0, Lcom/motorola/camera/Camera;->mActivityForegroundReceiver:Lcom/motorola/camera/Camera$1;

    sget-object v6, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v5, v6}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v1, p0, Lcom/motorola/camera/Camera;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-static {v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->registerListener(Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v5, 0x80

    invoke-virtual {v1, v5}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/motorola/camera/CameraIntentReceiver;->checkVibrate()V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v5, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v5, :cond_f

    new-instance v5, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;

    const/4 v6, 0x4

    invoke-direct {v5, p0, v6}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/Camera;I)V

    invoke-virtual {v1, v5}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_f
    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v5, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/Camera;I)V

    invoke-virtual {v1, v5}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_10
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_11

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_11
    :goto_3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "CameraApp"

    iget-object v5, v0, Lcom/motorola/camera/CameraApp;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v5, :cond_12

    const-string v5, "accessibility"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    iput-object v5, v0, Lcom/motorola/camera/CameraApp;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_12
    iget-object v5, v0, Lcom/motorola/camera/CameraApp;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v5, :cond_13

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "isHighTextContrastEnabled"

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    const-string v5, "isHighTextContrastEnabled not found in AccessibilityManager"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object v5, v4

    :goto_4
    if-eqz v5, :cond_14

    :try_start_3
    iget-object v6, v0, Lcom/motorola/camera/CameraApp;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_14

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Lcom/motorola/camera/CameraApp;->mIsHighContrastText:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    const-string v0, "isHighTextContrastEnabled invoked with an exception"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_5
    iput-boolean v2, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    const-string/jumbo p0, "startupToResume"

    invoke-static {v3, p0}, Lcom/motorola/camera/shared/MotSysTrace;->endAsync(ILjava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 9

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->ON_START:Lcom/motorola/camera/CameraKpi$KPI;

    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    if-nez v1, :cond_1

    const-string v1, "StartUp"

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(ILjava/lang/String;)V

    const-string/jumbo v1, "startupToResume"

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(ILjava/lang/String;)V

    const-string v1, "openglShow"

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(ILjava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "app"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowOnLockScreen(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_2
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStart()V

    return-void

    :cond_3
    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v1, Lcom/motorola/camera/launch/LaunchManager;->callback:Lcom/motorola/camera/Camera;

    invoke-interface {p0}, Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;->onLaunchStarted()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v5, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v5

    iput v5, v1, Lcom/motorola/camera/launch/LaunchManager;->lidValue:I

    const-string v5, "lid_state"

    :try_start_0
    invoke-static {v5}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "MotorolaSettingsGlobal"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v1, v1, Lcom/motorola/camera/launch/LaunchManager;->flipObserver:Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

    invoke-virtual {v6, v5, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_4
    if-nez v4, :cond_5

    const-string v0, "MotoCamera"

    const-string v1, "Detected mismatching activity and display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/motorola/camera/Camera;->mMismatchActivity:Z

    iput-boolean v2, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStart()V

    return-void

    :cond_5
    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/motorola/camera/Camera;->mMemKillerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/Camera;I)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_6
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v4, v4, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_7
    const-string v5, "INITIALIZED"

    :goto_1
    const-string v6, "LAUNCHEDBY"

    invoke-virtual {v4, v6, v5}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iget-boolean v6, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    xor-int/2addr v6, v2

    invoke-virtual {v5, v4, v3, v6}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;ZZ)V

    :cond_8
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroidx/fragment/app/FragmentActivity;)V

    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->isSecureKeyGuardLocked()Z

    move-result v4

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-boolean v4, v5, Lcom/motorola/camera/CameraApp;->mSecure:Z

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    if-nez v1, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_9

    sput-boolean v2, Lcom/motorola/camera/shared/OrientationEvent;->mDetectPlanarLaunch:Z

    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v1, :cond_9

    iget-object v4, v1, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    if-eqz v4, :cond_9

    iget-object v1, v1, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    iget-object v1, v1, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mSensorEventListener:Lcom/motorola/camera/Controller$2;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/motorola/camera/Controller$2;->resetPlanarFlag()V

    :cond_9
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v1, :cond_15

    iget-object v4, v1, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    iput-object p0, v1, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    new-instance v5, Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v6

    invoke-direct {v5, v6}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;-><init>(Z)V

    iput-object v5, v1, Lcom/motorola/camera/Controller;->mMcfSettingManager:Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    sget-boolean v5, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-eqz v5, :cond_a

    new-instance v5, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    iget-object v6, v1, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {v6, v6}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v6

    invoke-direct {v5, v6}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;-><init>(Z)V

    iput-object v5, v1, Lcom/motorola/camera/Controller;->mMcfMlSettingManager:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    :cond_a
    new-instance v5, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v1, Lcom/motorola/camera/Controller;->mSceneModeManager:Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    sput-wide v5, Lcom/motorola/camera/SensorTime;->sTimebaseDelta:J

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/settings/CaptureIntent;->mCaptureRequest:I

    if-ne v5, v2, :cond_b

    goto :goto_2

    :cond_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_c
    :goto_2
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    iget-object v5, v1, Lcom/motorola/camera/Controller;->mMcfSettingManager:Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    iget-object v5, v1, Lcom/motorola/camera/Controller;->mMcfMlSettingManager:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    if-eqz v5, :cond_d

    invoke-virtual {v1, v5}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_d
    iget-object v5, v1, Lcom/motorola/camera/Controller;->mSceneModeManager:Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    sget v5, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->$r8$clinit:I

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$OnBackInvokedCallbackHolder;->holder:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    invoke-virtual {v5, v4, v1}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->registerCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    iget-object v5, v1, Lcom/motorola/camera/Controller;->mFeatureLimiterRunnable:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    if-nez v5, :cond_e

    new-instance v5, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    const/16 v6, 0xb

    invoke-direct {v5, v1, v6}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    iput-object v5, v1, Lcom/motorola/camera/Controller;->mFeatureLimiterRunnable:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    :cond_e
    iget-object v5, v1, Lcom/motorola/camera/Controller;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    if-nez v5, :cond_f

    new-instance v5, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-direct {v5, v2, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    iput-object v5, v1, Lcom/motorola/camera/Controller;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    :cond_f
    iget-object v5, v1, Lcom/motorola/camera/Controller;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-static {v5}, Landroidx/sqlite/db/SimpleSQLiteQuery;->registerListener(Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;)V

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v5}, Lcom/motorola/camera/CameraApp;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const/4 v6, -0x1

    const-string v7, "MotoCameraAppVerCode"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const v8, 0x98a8f4

    if-eq v6, v8, :cond_10

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_PHOTO_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v7, "Original"

    invoke-static {v6, v7}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_VIDEO_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v7}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    const/16 v7, 0xe

    invoke-direct {v6, v1, v7}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    iget-object v5, v1, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-nez v5, :cond_11

    new-instance v5, Lcom/motorola/camera/ui/UIManager;

    iget-object v6, v1, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {v5, v1, v4, v6}, Lcom/motorola/camera/ui/UIManager;-><init>(Lcom/motorola/camera/Controller;Lcom/motorola/camera/Camera;Landroid/view/ViewGroup;)V

    iput-object v5, v1, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_11
    iget-object v4, v1, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    iget-object v4, v4, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->start()V

    goto :goto_3

    :cond_12
    iget v4, v1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_14

    iput v2, v1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v4, v4, Lcom/motorola/camera/CameraApp;->mSecure:Z

    if-nez v4, :cond_13

    iget-object v2, v1, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v4}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iput-boolean v3, v1, Lcom/motorola/camera/Controller;->mDelayInit:Z

    goto :goto_4

    :cond_13
    iput-boolean v2, v1, Lcom/motorola/camera/Controller;->mDelayInit:Z

    :cond_14
    :goto_4
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_15
    sget-object v1, Lcom/motorola/camera/CameraInUseBroadcaster$ImagerTuningBroadcaster;->INSTANCE:Lcom/motorola/camera/CameraInUseBroadcaster$ImagerTuningBroadcaster;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.internal.CAMERA_START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/motorola/camera/CameraInUseBroadcaster;->componentName:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, v1, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStart()V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroidx/fragment/app/FragmentActivity;)V

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_16

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_16
    return-void
.end method

.method public onStop()V
    .locals 7

    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mMismatchActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/motorola/camera/Camera;->mMismatchActivity:Z

    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mMismatchActivityLaunched:Z

    if-nez v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v2, "Spurious start of mismatching activity, finishing task"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    iput-boolean v1, p0, Lcom/motorola/camera/Camera;->mMismatchActivityLaunched:Z

    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStop()V

    return-void

    :cond_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-boolean v1, v0, Lcom/motorola/camera/CameraApp;->mIsActivityOnPause:Z

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iput-object v2, p0, Lcom/motorola/camera/Camera;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_2
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStop()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v4, v5, v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v4}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iput-boolean v1, v0, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    iget-object v4, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-eqz v4, :cond_5

    iget-boolean v4, v0, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    if-nez v4, :cond_4

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v5, v4, Lcom/motorola/camera/CameraApp;->mSecure:Z

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->isCameraActivityStarted()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iput-boolean v1, v0, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    iget-object v0, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v5, v0, Lcom/motorola/camera/ui/UIManager;->mRotateUIRunnable:Landroidx/lifecycle/LiveData$1;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/CameraApp;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->pause()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iget-boolean v0, v0, Lcom/motorola/camera/Controller;->mIsCapturing:Z

    if-eqz v0, :cond_6

    iput-boolean v3, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    const-string v0, "MotoCamera"

    const-string v4, "Forcing keep session on exit due to in progress capture"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/CameraApp;->isLatestActivityWindow(Lcom/motorola/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_7

    iput-boolean v3, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    const-string v0, "MotoCamera"

    const-string v4, "Forcing keep session on exit due to activity not being latest"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    if-nez v0, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_8

    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_8
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v3, v0}, Lcom/motorola/camera/settings/SettingsManager;->clearSessionSettings(ZZ)V

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/motorola/camera/utility/ColorUtil;->setupBrightnessBump(Landroid/view/Window;Z)V

    :cond_a
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/motorola/camera/utility/ZoomHelper;->sIsLight:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    goto :goto_2

    :cond_b
    const/4 v0, -0x1

    :goto_2
    sput v0, Lcom/motorola/camera/utility/ZoomHelper;->sLastSessionDataKeptMode:I

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iget-boolean v0, v0, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_c
    sget-object v0, Lcom/motorola/camera/saving/SavingFileKeepAlive;->savingJobs:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldSetExtraFreeRepeatedly()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0, v4, v1}, Lcom/motorola/camera/Camera;->setExtraFreeKBytesRepeatedly(ZZ)V

    :cond_d
    if-nez v0, :cond_f

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mExitPerfHintDuration:I

    sget-boolean v4, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v4, :cond_e

    const-string v4, "MotoCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "perfHintStart dur: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    :cond_f
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    iget-object v2, v0, Lcom/motorola/camera/Controller;->mMcfSettingManager:Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    if-eqz v2, :cond_10

    invoke-virtual {v0, v2}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_10
    iget-object v2, v0, Lcom/motorola/camera/Controller;->mMcfMlSettingManager:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    if-eqz v2, :cond_11

    invoke-virtual {v0, v2}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_11
    iget-object v2, v0, Lcom/motorola/camera/Controller;->mSceneModeManager:Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    if-eqz v2, :cond_12

    invoke-virtual {v0, v2}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_12
    const-class v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    monitor-enter v2

    :try_start_0
    sget v4, Landroidx/sqlite/db/SimpleSQLiteQuery;->mRefCnt:I

    sub-int/2addr v4, v3

    sput v4, Landroidx/sqlite/db/SimpleSQLiteQuery;->mRefCnt:I

    if-nez v4, :cond_13

    sget-object v4, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v4, v4, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/limitfunctionality/LimiterHandler;

    invoke-virtual {v5}, Lcom/motorola/camera/limitfunctionality/LimiterHandler;->stop()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_13
    sget v4, Landroidx/sqlite/db/SimpleSQLiteQuery;->mRefCnt:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sput v4, Landroidx/sqlite/db/SimpleSQLiteQuery;->mRefCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    sget-object v2, Lcom/motorola/camera/utility/lens/LensApiHelper;->INSTANCE:Lcom/motorola/camera/utility/lens/LensApiHelper;

    invoke-virtual {v2}, Lcom/motorola/camera/utility/lens/LensApiHelper;->reset()V

    iget-object v2, v0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz v2, :cond_14

    invoke-virtual {v0, v2}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    iget-object v2, v0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    invoke-virtual {v2}, Lcom/motorola/camera/cli/content/CliContentManager;->finishPresentationHolder()V

    :cond_14
    sget v2, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->$r8$clinit:I

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$OnBackInvokedCallbackHolder;->holder:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    iget-object v4, v0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {v2, v4, v0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->unRegisterCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    iget-object v2, v0, Lcom/motorola/camera/Controller;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-static {v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->unregisterListener(Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;)V

    iget-object v2, v0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/motorola/camera/Controller;->mFeatureLimiterRunnable:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v1, v0, Lcom/motorola/camera/Controller;->mActivityChanging:Z

    goto :goto_5

    :goto_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_15
    :goto_5
    sget-object v0, Lcom/motorola/camera/CameraInUseBroadcaster$ImagerTuningBroadcaster;->INSTANCE:Lcom/motorola/camera/CameraInUseBroadcaster$ImagerTuningBroadcaster;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "com.motorola.internal.CAMERA_STOP"

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/motorola/camera/CameraInUseBroadcaster;->componentName:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStop()V

    iget-object v0, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v0, v0, Lcom/motorola/camera/launch/LaunchManager;->flipObserver:Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v2

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v5

    iget-boolean v5, v5, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v4, p0, v3, v5}, Lcom/motorola/camera/launch/LaunchManager;->launch(IILcom/motorola/camera/Camera;ZZ)V

    iput-boolean v1, p0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    :cond_16
    return-void
.end method

.method public final onTopResumedActivityChanged(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mMismatchActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v3

    iget-boolean v3, v3, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    iget-object v4, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2, p0, v1, v3}, Lcom/motorola/camera/launch/LaunchManager;->launch(IILcom/motorola/camera/Camera;ZZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mMismatchActivityLaunched:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-boolean p1, v0, Lcom/motorola/camera/CameraApp;->mIsActivityOnTop:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.IS_UNSUPPORTED_DESKTOP_MODE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v4, 0x7f120602

    invoke-direct {v3, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v4, 0x4

    iput v4, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-virtual {v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA_TOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-virtual {p0, p1}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_2
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onTrimMemory(I)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput p1, p0, Lcom/motorola/camera/CameraApp;->mTrimMemoryLevel:I

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroidx/fragment/app/FragmentActivity;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/Controller;->windowHasFocus()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;ZZ)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mScreenOffReceiver:Lcom/motorola/camera/Camera$1;

    const/16 v1, 0x18

    invoke-static {p0, v0, p1, v1}, Lcom/motorola/camera/shared/ReceiverUtil;->registerReceiver$default(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public final restartStateMachineAndInitOnResume()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_0

    const-string v0, "SKIP_FSM_REINIT"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4, v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object v0, v2, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-virtual {v0, v3}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    :cond_0
    return-void
.end method

.method public final setExtraFreeKBytesRepeatedly(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/Camera;->mSetExtraFreeKBytesRunnable:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_1

    sput-boolean p2, Lcom/motorola/camera/Camera;->mSetExtraFreeRepeatedly:Z

    if-eqz p2, :cond_0

    sget p1, Lcom/motorola/camera/Camera;->mExtraFreeDurationMs:I

    int-to-long p1, p1

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const/4 p0, 0x0

    sput-boolean p0, Lcom/motorola/camera/Camera;->mSetExtraFreeRepeatedly:Z

    return-void
.end method

.method public final showCtaInitialDialog()V
    .locals 10

    const/16 v0, 0x3ea

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f1200fa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1200fb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x3f9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f1200f6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3f6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x7f1200f7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x3f5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v9, p0, Lcom/motorola/camera/Camera;->mCTARecreate:Z

    if-eqz v9, :cond_0

    return-void

    :cond_0
    iget-object v9, p0, Lcom/motorola/camera/Camera;->mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/motorola/camera/Camera;->mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureStarTrailsSupported()Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v9, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f1200f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v9, v3, p0}, Lcom/motorola/camera/CtaPermissionHelper;->getCtaInitialDialog(Lcom/motorola/camera/Camera;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/motorola/camera/Camera;)Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    goto :goto_0

    :cond_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v9, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f1200f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v9, v3, p0}, Lcom/motorola/camera/CtaPermissionHelper;->getCtaInitialDialog(Lcom/motorola/camera/Camera;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/motorola/camera/Camera;)Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->applyWindowInsetsAsPadding(Landroidx/appcompat/app/AppCompatDialog;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionAllowed:Z

    return-void
.end method

.method public final startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 14

    if-eqz p1, :cond_d

    invoke-static {p0}, Lcom/motorola/camera/ActivityBase;->getDisplayId(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7f010022

    const v2, 0x7f010023

    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v3

    iget v4, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    sget-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MISC:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_1
    sget-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->COLLAGE_EDITOR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_2
    sget-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->SUPER_SLOW_MOTION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_3
    sget-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MOTO_FEEDBACK:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_4
    sget-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->DND_PERMISSION_REQUEST:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_5
    sget-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->PHOTOS_STABILIZE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_6
    sget-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->OBJECT_DETECTION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_7
    sget-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->DOCUMENT_EDITOR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_8
    sget-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->GOOGLE_LENS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_9
    sget-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->YOUTUBE_LIVE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_a
    sget-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->VIDEO_PLAYER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_b
    sget-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->CAMERA_SETTINGS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_c
    sget-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->SETTINGS_LOCATION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_d
    sget-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->GALLERY:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    :goto_0
    iget-object v3, v3, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v5, "EXITTYP"

    invoke-virtual {v3, v5, v4}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget v3, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:I

    invoke-static {v3}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v3

    const/4 v4, 0x4

    const v5, 0x7f12011b

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v3, :pswitch_data_1

    :pswitch_e
    :try_start_0
    iget-object v1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    iget p1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:I

    invoke-static {p1}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    invoke-virtual {p0, v1, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v0, v5}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput v4, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v0, p0, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto/16 :goto_4

    :pswitch_f
    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/motorola/camera/Camera$5;

    invoke-direct {p1, p0, v7}, Lcom/motorola/camera/Camera$5;-><init>(Lcom/motorola/camera/Camera;I)V

    invoke-static {p0, p1}, Lcom/motorola/camera/utility/ColorUtil;->requestDismissKeyguard(Landroidx/activity/ComponentActivity;Lcom/motorola/camera/utility/ColorUtil;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->launchMicrosoftCopilot()V

    return-void

    :pswitch_10
    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/motorola/camera/Camera$5;

    invoke-direct {p1, p0, v6}, Lcom/motorola/camera/Camera$5;-><init>(Lcom/motorola/camera/Camera;I)V

    invoke-static {p0, p1}, Lcom/motorola/camera/utility/ColorUtil;->requestDismissKeyguard(Landroidx/activity/ComponentActivity;Lcom/motorola/camera/utility/ColorUtil;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->launchGoogleLens()V

    return-void

    :pswitch_11
    iget v3, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:I

    const/16 v8, 0x13

    const/16 v9, 0xd

    const/16 v10, 0xb

    const/4 v11, 0x5

    const/16 v12, 0xa

    if-eq v3, v12, :cond_2

    if-eq v3, v10, :cond_2

    if-eq v3, v11, :cond_2

    if-eq v3, v9, :cond_2

    const/16 v13, 0x14

    if-eq v3, v13, :cond_2

    const/16 v13, 0xe

    if-eq v3, v13, :cond_2

    const/4 v13, 0x7

    if-eq v3, v13, :cond_2

    if-ne v3, v8, :cond_5

    :cond_2
    if-ne v3, v12, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v6, v7

    :cond_4
    iput-boolean v6, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    iget-object v3, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    invoke-static {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setBrightnessForLaunch(Landroid/content/Intent;Landroidx/activity/ComponentActivity;)V

    :cond_5
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v3

    iget-boolean v3, v3, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    if-eqz v3, :cond_6

    iget v3, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:I

    if-eq v3, v11, :cond_6

    if-eq v3, v12, :cond_6

    if-eq v3, v10, :cond_6

    if-eq v3, v9, :cond_6

    if-eq v3, v8, :cond_6

    new-instance v1, Lcom/motorola/camera/Camera$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/motorola/camera/Camera$3;-><init>(Lcom/motorola/camera/Camera;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;Landroid/os/Bundle;)V

    invoke-static {p0, v1}, Lcom/motorola/camera/utility/ColorUtil;->requestDismissKeyguard(Landroidx/activity/ComponentActivity;Lcom/motorola/camera/utility/ColorUtil;)V

    return-void

    :cond_6
    iget v3, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:I

    if-eq v3, v9, :cond_8

    if-eq v3, v12, :cond_8

    if-eq v3, v10, :cond_8

    if-eq v3, v11, :cond_8

    const/16 v6, 0x10

    if-ne v3, v6, :cond_7

    goto :goto_1

    :cond_7
    iget-object p1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_8
    :goto_1
    if-ne v3, v11, :cond_9

    invoke-static {p0}, Lcom/motorola/camera/ActivityBase;->getDisplayId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :cond_9
    iget-object v1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    iget p1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:I

    invoke-static {p1}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    invoke-virtual {p0, v1, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v0, v5}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput v4, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v0, p0, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto/16 :goto_4

    :pswitch_12
    iput-boolean v7, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    :try_start_2
    iget-object v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setBrightnessForLaunch(Landroid/content/Intent;Landroidx/activity/ComponentActivity;)V

    iget v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->orientation:I

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.UID"

    const-string v2, "motcamera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/motorola/camera/Camera$4;

    invoke-direct {v0, p0, p1, v6}, Lcom/motorola/camera/Camera$4;-><init>(Lcom/motorola/camera/Camera;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;I)V

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->requestDismissKeyguard(Landroidx/activity/ComponentActivity;Lcom/motorola/camera/utility/ColorUtil;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_b
    iget-object v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    iget-object p1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v7, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    invoke-virtual {p0, v6, v6}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;->instance$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;

    iput-boolean v7, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;->allowClick:Z

    goto :goto_4

    :catch_2
    :try_start_3
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v0, v5}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput v4, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_3
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;->instance$delegate:Ljava/lang/Object;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;

    iput-boolean v7, p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;->allowClick:Z

    throw p0

    :pswitch_13
    iput-boolean v7, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    :try_start_4
    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/motorola/camera/Camera$4;

    invoke-direct {v0, p0, p1, v7}, Lcom/motorola/camera/Camera$4;-><init>(Lcom/motorola/camera/Camera;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;I)V

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->requestDismissKeyguard(Landroidx/activity/ComponentActivity;Lcom/motorola/camera/utility/ColorUtil;)V

    return-void

    :cond_c
    iget-object v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    iget-object p1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v6, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    :catch_3
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v0, v5}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput v4, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v0, p0, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_d
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_e
        :pswitch_11
        :pswitch_e
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_e
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public final updateLocationSetting(Z)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lcom/motorola/camera/PermissionsManager;->isAnyPermissionGranted([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method
