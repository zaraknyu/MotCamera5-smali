.class public final Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;",
        "<init>",
        "()V",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final hideToastRunnable:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

.field public horizontalMargin:Ljava/lang/Integer;

.field public final inactivityRunnable:Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;

.field public location:Lcom/motorola/camera/LocationManager;

.field public final mSecureScreenOffReceiver:Lcom/motorola/camera/SecureCamera$1;

.field public final mainHandler:Landroid/os/Handler;

.field public settingsManagerBridge:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

.field public final toastNotifier:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mainHandler:Landroid/os/Handler;

    new-instance v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->hideToastRunnable:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->inactivityRunnable:Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/motorola/camera/SecureCamera$1;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/SecureCamera$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mSecureScreenOffReceiver:Lcom/motorola/camera/SecureCamera$1;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->toastNotifier:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    return-void
.end method


# virtual methods
.method public final getHorizontalMargin(Z)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->horizontalMargin:Ljava/lang/Integer;

    if-nez p1, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0b0074

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->horizontalMargin:Ljava/lang/Integer;

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->horizontalMargin:Ljava/lang/Integer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->registerSettingsBridge(Z)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x3

    if-ne p1, p3, :cond_5

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroidx/fragment/app/FragmentActivity;)V

    iget-boolean v1, p3, Lcom/motorola/camera/PermissionsManager;->mMissingCriticalPermissions:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    monitor-enter p3

    :try_start_0
    iget-boolean v1, p3, Lcom/motorola/camera/PermissionsManager;->mMissingOptionalPermissions:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p3, Lcom/motorola/camera/PermissionsManager;->mRequestAlwaysOptionalPermissions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_0
    monitor-exit p3

    if-nez v1, :cond_1

    goto :goto_4

    :goto_1
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    move v4, v2

    :goto_2
    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    aget-object v5, v3, v4

    invoke-virtual {p0, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->updateLocationSetting()V

    goto :goto_5

    :cond_4
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-boolean v0, p3, Lcom/motorola/camera/PermissionsManager;->mWaitingUserAction:Z

    const/4 p3, 0x6

    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_5
    :goto_5
    const/16 p0, 0x15

    :try_start_2
    invoke-static {p0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object p0

    aget p0, p0, p1

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput p0, p1, Lcom/motorola/camera/CameraApp;->mActivityRequestCode:I

    iput p2, p1, Lcom/motorola/camera/CameraApp;->mActivityResultCode:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->getHorizontalMargin(Z)I

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-object v2, v1, Lcom/motorola/camera/settings/SettingsManager;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/settings/SettingsManager;->mLanguageTag:Ljava/lang/String;

    iget-object v0, v1, Lcom/motorola/camera/settings/SettingsManager;->mPhotoSizeSummaryMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/CameraType;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4, v1}, Lcom/motorola/camera/settings/SettingsManager;->setupSizeToSummaryMapValues(Ljava/util/List;Lcom/motorola/camera/settings/CameraType;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager;->mPictureSizeSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager;->mPhotoSizeSummaryMap:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, v4, Lcom/motorola/camera/settings/Setting;->mValueToSummaryMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4, v6, v5}, Lcom/motorola/camera/settings/Setting;->addValueToSummaryEntry(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f120298

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/motorola/camera/settings/Setting;->addValueToSummaryEntry(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f120299

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/motorola/camera/settings/Setting;->addValueToSummaryEntry(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f12029a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/motorola/camera/settings/Setting;->addValueToSummaryEntry(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->updateVideoDvStartDelaySummaryOptions()V

    :cond_5
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-nez v0, :cond_7

    const-string p1, "SettingsActivity"

    const-string v0, "CameraCharacteristics not loaded, closing settings activity"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroidx/appcompat/app/AppCompatActivity;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_7
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroidx/fragment/app/FragmentActivity;)V

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowOnLockScreen(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mSecureScreenOffReceiver:Lcom/motorola/camera/SecureCamera$1;

    const/16 v4, 0x18

    invoke-static {p0, v1, v0, v4}, Lcom/motorola/camera/shared/ReceiverUtil;->registerReceiver$default(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v4, 0x8

    invoke-interface {v0, v4, v4}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    invoke-interface {v0, v1, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :cond_9
    const v0, 0x7f0d00f6

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f0a03ee

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->applyWindowInsetsAsMargin(Landroid/app/Activity;I)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->getHorizontalMargin(Z)I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    const v1, 0x7f0a0076

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "findViewById(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_d

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    const-string v0, "GeneralSettingsFragment"

    if-nez p1, :cond_b

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    invoke-direct {p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v4, v1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const v1, 0x7f0a0365

    invoke-virtual {v4, v1, p1, v0}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.fragment.BasePreferencesFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;

    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v1, "LAUNCH_STORAGE"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_c
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    invoke-direct {v0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->settingsManagerBridge:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    const p1, 0x7f0a048a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->toastNotifier:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->HIDE_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SECURE_LAUNCH_SETTINGS_FINISH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void

    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->toastNotifier:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->HIDE_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SECURE_LAUNCH_SETTINGS_FINISH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->settingsManagerBridge:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v0, v1}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/MutationInterruptedException;)V

    :cond_0
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->settingsManagerBridge:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowOnLockScreen(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mSecureScreenOffReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-static {p0, v0}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public final onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 4

    const-string v0, "caller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v2

    const-string v3, "getSupportFragmentManager(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentManager$3;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentManager$3;->instantiate(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    const-string v0, "instantiate(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p2, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    :cond_1
    iget-object p2, p2, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    new-instance p1, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {p1, v2}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const p2, 0x7f0a0365

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/BackStackRecord;->addToBackStack()V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    const/4 p0, 0x1

    return p0
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string/jumbo v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->registerSettingsBridge(Z)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p2

    invoke-virtual {p2, p0, v0}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroidx/fragment/app/FragmentActivity;Z)V

    invoke-virtual {p2, p1, p0}, Lcom/motorola/camera/PermissionsManager;->permissionRequestResult(ILandroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->updateLocationSetting()V

    return-void
.end method

.method public final onStart()V
    .locals 4

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroidx/fragment/app/FragmentActivity;)V

    new-instance v0, Lcom/motorola/camera/LocationManager;

    invoke-direct {v0}, Lcom/motorola/camera/LocationManager;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->location:Lcom/motorola/camera/LocationManager;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/LocationManager;->startLocationUpdates(Landroidx/fragment/app/FragmentActivity;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->registerSettingsBridge(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->inactivityRunnable:Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b0073

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-eqz p0, :cond_0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 4

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->inactivityRunnable:Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->registerSettingsBridge(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->location:Lcom/motorola/camera/LocationManager;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p0}, Lcom/motorola/camera/PermissionsManager;->isAnyPermissionGranted([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v1, Lcom/motorola/camera/LocationManager;->mGeoLocationStateListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-virtual {v1}, Lcom/motorola/camera/LocationManager;->stopReceivingLocationUpdates()V

    iget-object v2, v1, Lcom/motorola/camera/LocationManager;->mStopReceiveLocationRunnable:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;

    invoke-static {v2, v0}, Lcom/motorola/camera/LocationManager;->postStopReceiveLocationCallback(Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;Z)V

    :cond_0
    iget-object v0, v1, Lcom/motorola/camera/LocationManager;->mProviderChangedReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-static {p0, v0}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public final onUserInteraction()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->inactivityRunnable:Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b0073

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-eqz p0, :cond_0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public final registerSettingsBridge(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->settingsManagerBridge:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->job:Lkotlinx/coroutines/JobImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->job:Lkotlinx/coroutines/JobImpl;

    :cond_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {p1}, Lcom/motorola/camera/CameraApp;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->settingsManagerBridge:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void

    :cond_1
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {p1}, Lcom/motorola/camera/CameraApp;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->settingsManagerBridge:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->settingsManagerBridge:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->job:Lkotlinx/coroutines/JobImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->resultList:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$stop$1$1;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$stop$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v0, v0, v2, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_2
    return-void
.end method

.method public final showToast(Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f0a0481

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0800a1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0484

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1303b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f060037

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a0485

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a047f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->hideToastRunnable:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    new-instance p1, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;

    const/4 v0, 0x7

    invoke-direct {p1, v0, v2}, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    const-wide/16 v0, 0xfa0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final updateLocationSetting()V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lcom/motorola/camera/PermissionsManager;->isAnyPermissionGranted([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    if-nez v1, :cond_1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
