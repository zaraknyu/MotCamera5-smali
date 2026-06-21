.class public final Lcom/motorola/camera/SecureCamera$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xf

    iput v0, p0, Lcom/motorola/camera/SecureCamera$1;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 5
    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->clients:Landroid/util/ArraySet;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/SecureCamera$1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/Controller;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/motorola/camera/SecureCamera$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/shared/OrientationEvent;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lcom/motorola/camera/SecureCamera$1;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    iget v0, p0, Lcom/motorola/camera/SecureCamera$1;->$r8$classId:I

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    if-eqz p2, :cond_0

    const-string p1, "com.motorola.hardware.extra.LID_STATE"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    :cond_0
    if-ne v3, v5, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->dismiss()V

    :cond_1
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "com.motorola.camera.COLOR_TONE_TRAINING_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "com.motorola.camera5.TRAINING_STATE_MSG"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_6

    const-string p1, "com.motorola.camera5.MODEL_INFO_VERSION"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sget-object p2, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    :try_start_0
    sget-object p2, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    iget-object p2, p2, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->aiColorToneModuleInfo:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p2}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;

    if-eqz p2, :cond_3

    iput-boolean v5, p2, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mHasTrainingCompleteModule:Z

    iput-boolean v4, p2, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mHasModuleInTraining:Z

    iput v4, p2, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mTrainingProgress:I

    iput p1, p2, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mModuleVersion:I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    const-string p2, "AIPersonalColorToneManager"

    const-string v0, "Exception while updateToTrainComplete"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI_PERSONAL_COLOR_TONE:Z

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;I)V

    invoke-static {}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->checkEnabled()V

    invoke-static {}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->checkTrainingModuleState()V

    sget-object p2, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    iget-object v0, p2, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->isEnabled:Ljava/util/concurrent/CompletableFuture;

    iget-object p2, p2, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->aiColorToneModuleInfo:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/CompletableFuture;->runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->trainingStateReceiver:Lcom/motorola/camera/SecureCamera$1;

    if-eqz p1, :cond_6

    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->trainingStateReceiver:Lcom/motorola/camera/SecureCamera$1;

    :cond_6
    :goto_2
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/zxing/Result;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "com.motorola.camera5.EXTRA_ACTION"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v5, :cond_7

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_9
    :goto_3
    return-void

    :pswitch_2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_3
    sget-object p1, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_4
    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const-string p1, "com.motorola.hardware.action.ACTION_DEVICE_STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/OrientationEvent;

    if-eqz p0, :cond_a

    iget-boolean p1, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mEnabled:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/motorola/camera/shared/OrientationEvent;->updateDeviceState()V

    invoke-virtual {p0}, Lcom/motorola/camera/shared/OrientationEvent;->dispatchOnRotationChanged$1()V

    :cond_a
    return-void

    :pswitch_5
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/service/SelfieCameraTileService;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_5

    :cond_b
    const-string p1, "com.motorola.camera5.ACTION_ENABLE_SELFIE_TILE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    goto :goto_4

    :cond_c
    const-string p1, "com.motorola.camera5.ACTION_DISABLE_SELFIE_TILE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0, v4}, Landroid/service/quicksettings/Tile;->setState(I)V

    :cond_d
    :goto_4
    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :goto_5
    return-void

    :pswitch_6
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/service/QrScannerTileService;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x30700842

    if-eq p2, v0, :cond_10

    const v0, 0x79823315

    if-eq p2, v0, :cond_f

    goto :goto_7

    :cond_f
    const-string p2, "com.motorola.camera5.ACTION_ENABLE_QR_SCAN_TILE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0, v5}, Landroid/service/quicksettings/Tile;->setState(I)V

    goto :goto_6

    :cond_10
    const-string p2, "com.motorola.camera5.ACTION_DISABLE_QR_SCAN_TILE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_7

    :cond_11
    invoke-virtual {p0, v4}, Landroid/service/quicksettings/Tile;->setState(I)V

    :goto_6
    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_12
    :goto_7
    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->processBatteryStatus(Landroid/content/Intent;)V

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/editor/DocEditorActivity;

    const-string p1, "EXTRA_DOCUMENT_ORIGINAL_URI"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->loadBitmap(Landroid/net/Uri;)V

    return-void

    :pswitch_9
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cli/content/CliContentViewModel;

    new-instance p1, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    invoke-direct {p1, v5, p0, p2}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/cli/content/CliContentViewModel;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_a
    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/LocationManager;

    const-string p1, "LocationManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Gps Provider Changed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_16

    const-string p1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_14

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-boolean p0, p0, Lcom/motorola/camera/LocationManager;->mIsPermissionCache:Z

    if-eqz p0, :cond_13

    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result p0

    if-eqz p0, :cond_13

    move v4, v5

    :cond_13
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_14
    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_8

    :cond_15
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_16
    :goto_8
    return-void

    :pswitch_b
    if-nez p2, :cond_17

    goto :goto_9

    :cond_17
    const-string p1, "com.motorola.camera.ACTION_SET_ZOOM"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "com.motorola.camera_zoom_value"

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_18

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ZOOM_JUMP_X"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/Controller;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ZOOM_JUMP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0, p2, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-virtual {p0, p1}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_18
    :goto_9
    return-void

    :pswitch_c
    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/CliDualPreviewActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_d
    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lcom/google/android/play/core/appupdate/zzc;

    const-string p0, "package.name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    iget-object p0, v1, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/google/common/base/Joiner;

    const-string p1, "package.name"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ListenerRegistryBroadcastReceiver received broadcast for third party app: %s"

    invoke-virtual {p0, p2, p1}, Lcom/google/common/base/Joiner;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_19
    iget-object p0, v1, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/google/common/base/Joiner;

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "List of extras in received intent:"

    invoke-virtual {p0, v0, p1}, Lcom/google/common/base/Joiner;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/google/common/base/Joiner;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Key: %s; value: %s"

    invoke-virtual {v0, v2, p1}, Lcom/google/common/base/Joiner;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_1a
    iget-object p0, v1, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/google/common/base/Joiner;

    const-string p1, "List of extras in received intent needed by fromUpdateIntent:"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/Joiner;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "install.status"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Key: %s; value: %s"

    invoke-virtual {p0, v2, v0}, Lcom/google/common/base/Joiner;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "error.code"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/base/Joiner;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo p0, "total.bytes.to.download"

    const-string v2, "bytes.downloaded"

    const-string v3, "package.name"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-wide/16 v7, 0x0

    invoke-virtual {p2, v2, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {p2, p0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v5, Lcom/google/android/play/core/install/zza;

    move-wide v7, v9

    move-wide v9, p0

    invoke-direct/range {v5 .. v12}, Lcom/google/android/play/core/install/zza;-><init>(IJJILjava/lang/String;)V

    iget-object p0, v1, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/google/common/base/Joiner;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ListenerRegistryBroadcastReceiver.onReceive: %s"

    invoke-virtual {p0, p2, p1}, Lcom/google/common/base/Joiner;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-enter v1

    :try_start_1
    new-instance p0, Ljava/util/HashSet;

    iget-object p1, v1, Lcom/google/android/play/core/appupdate/zzc;->zzb:Ljava/util/HashSet;

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/utility/InAppUpdateUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v5, Lcom/google/android/play/core/install/zza;->zzc:J

    iput-wide v2, p1, Lcom/motorola/camera/utility/InAppUpdateUtils;->bytesToDownload:J

    iget-wide v2, v5, Lcom/google/android/play/core/install/zza;->zzb:J

    iput-wide v2, p1, Lcom/motorola/camera/utility/InAppUpdateUtils;->bytesDownloaded:J

    iget p2, v5, Lcom/google/android/play/core/install/zza;->zzd:I

    iput p2, p1, Lcom/motorola/camera/utility/InAppUpdateUtils;->installErrorCode:I

    iget-object p1, p1, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Landroidx/room/InvalidationTracker$implementation$1;

    new-instance p2, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    sget-object v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->UPDATE_STATE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    iget v2, v5, Lcom/google/android/play/core/install/zza;->zza:I

    invoke-direct {p2, v0, v2}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;I)V

    invoke-virtual {p1, p2}, Landroidx/room/InvalidationTracker$implementation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_d

    :cond_1b
    monitor-exit v1

    :goto_c
    return-void

    :goto_d
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_e
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    iget p1, p0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;->$r8$classId:I

    packed-switch p1, :pswitch_data_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1c

    goto/16 :goto_e

    :cond_1c
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/constraints/trackers/StorageNotLowTrackerKt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x46671f94

    if-eq p2, v0, :cond_1f

    const v0, -0x2b8fb65c

    if-eq p2, v0, :cond_1d

    goto/16 :goto_e

    :cond_1d
    const-string p2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto/16 :goto_e

    :cond_1e
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_1f
    const-string p2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto/16 :goto_e

    :cond_20
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_21

    goto/16 :goto_e

    :cond_21
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p2

    sget-object v0, Landroidx/work/impl/constraints/trackers/BatteryChargingTrackerKt;->TAG:Ljava/lang/String;

    const-string v1, "Received "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_e

    :sswitch_0
    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto/16 :goto_e

    :cond_22
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V

    goto/16 :goto_e

    :sswitch_1
    const-string p2, "android.os.action.CHARGING"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto/16 :goto_e

    :cond_23
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V

    goto/16 :goto_e

    :sswitch_2
    const-string p2, "android.os.action.DISCHARGING"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto/16 :goto_e

    :cond_24
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V

    goto :goto_e

    :sswitch_3
    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_e

    :cond_25
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V

    goto :goto_e

    :pswitch_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_26

    goto :goto_e

    :cond_26
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTrackerKt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x7606c095    # -6.0004207E-33f

    if-eq p2, v0, :cond_29

    const v0, 0x1d398bfd

    if-eq p2, v0, :cond_27

    goto :goto_e

    :cond_27
    const-string p2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_e

    :cond_28
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V

    goto :goto_e

    :cond_29
    const-string p2, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto :goto_e

    :cond_2a
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V

    :cond_2b
    :goto_e
    return-void

    :pswitch_11
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->routedDevice:Lcom/google/android/gms/tasks/zzad;

    invoke-static {p1, p2, v0, v1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getCapabilitiesInternal(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/AudioAttributes;Lcom/google/android/gms/tasks/zzad;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->onNewAudioCapabilities(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    :cond_2c
    return-void

    :pswitch_12
    iget-object p2, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/common/util/NetworkTypeObserver;

    iget-object p2, p2, Landroidx/media3/common/util/NetworkTypeObserver;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1, p0, p1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_13
    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/CameraInUseBroadcaster;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraInUseBroadcaster;->onChange()V

    return-void

    :pswitch_14
    sget-boolean p1, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz p1, :cond_2d

    const-string p1, "MotoSecureCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Secure ScreenOff finish. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget-object p0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/SecureCamera;

    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7073f927 -> :sswitch_3
        -0x3465cce -> :sswitch_2
        0x388694fe -> :sswitch_1
        0x3cbf870b -> :sswitch_0
    .end sparse-switch
.end method
