.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/Controller;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Controller;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/Controller;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    iget-object v0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/Fsm;

    iget-object v1, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "NEW_INTENT_PROCESSED"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isReadyToOpenCamera(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/Fsm;

    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "NEW_INTENT_PROCESSED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/motorola/camera/mcf/McfAlgoAssets;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Z)V

    return-void

    :pswitch_2
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    const v2, 0x7f13015c

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    iget-object v2, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    const v4, 0x7f120149

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    const v3, 0x7f120148

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;-><init>(Lcom/motorola/camera/Controller;I)V

    const p0, 0x7f120130

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_3
    new-instance v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    const v1, 0x7f120364

    iput v1, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    const v1, 0x7f120363

    iput v1, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda37;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda37;-><init>(Lcom/motorola/camera/Controller;I)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x7f120362

    iput p0, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HIGH_THERMAL_LEVEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_5
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;-><init>(Lcom/motorola/camera/Camera;Landroid/view/ViewGroup;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->activityContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const v3, 0x7f1200da

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f120364

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->setTitle(I)V

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;

    const/4 v3, 0x3

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;-><init>(Lcom/motorola/camera/Controller;I)V

    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->buttonNeutral:Landroid/widget/Button;

    const/4 v3, 0x0

    if-eqz p0, :cond_3

    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->activityContext:Landroid/content/Context;

    if-eqz v4, :cond_2

    const v2, 0x7f120141

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;

    const/16 v4, 0x9

    invoke-direct {v2, v4, v1, v0}, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->show()V

    return-void

    :pswitch_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->enableStarSearchingMode(Ljava/lang/Boolean;)V

    return-void

    :pswitch_7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->enableStarSearchingMode(Ljava/lang/Boolean;)V

    return-void

    :pswitch_8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->enableStarSearchingMode(Ljava/lang/Boolean;)V

    return-void

    :pswitch_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->unregisterClient(Ljava/lang/Object;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    iget-boolean v1, p0, Lcom/motorola/camera/Controller;->mRegistered:Z

    if-nez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/Controller;->deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mcfOrientationListener:Lcom/motorola/camera/Controller$McfOrientationListener;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/Controller;->deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Controller;->deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mFilterViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-eqz v3, :cond_5

    invoke-virtual {p0, v3}, Lcom/motorola/camera/Controller;->deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/camera/Controller;->mFilterViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    :cond_5
    iget-object v3, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz v3, :cond_6

    invoke-virtual {p0, v3}, Lcom/motorola/camera/Controller;->deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    :cond_6
    iget-object v3, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/motorola/camera/LocationManager;->mIsStarSearchingMode:Z

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v0}, Lcom/motorola/camera/PermissionsManager;->isAnyPermissionGranted([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v3, Lcom/motorola/camera/LocationManager;->mGeoLocationStateListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v5, v6}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-virtual {v3}, Lcom/motorola/camera/LocationManager;->stopReceivingLocationUpdates()V

    iget-object v5, v3, Lcom/motorola/camera/LocationManager;->mStopReceiveLocationRunnable:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;

    invoke-static {v5, v4}, Lcom/motorola/camera/LocationManager;->postStopReceiveLocationCallback(Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;Z)V

    :cond_7
    iget-object v3, v3, Lcom/motorola/camera/LocationManager;->mProviderChangedReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-static {v0, v3}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/shared/OrientationEvent;->disable()V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/Controller;->swapMic(I)V

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mHeadsetReceiver:Landroidx/room/concurrent/FileLock;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iget-object v3, v3, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/HeadsetReceiver$1;

    invoke-virtual {v5, v3}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mCommandLineReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-static {v0, v3}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mCameraControlReceiver:Lcom/motorola/camera/CameraControlReceiver;

    invoke-static {v0, v3}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mStorageChangedEventDetector:Lcom/google/zxing/Result;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;

    sget-object v3, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    new-instance v5, Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;-><init>(Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE:Z

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBgServiceProcessingEnable()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    iget-object v3, v3, Lcom/motorola/camera/jms/BgJobManager;->mBjJobMgrListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->shouldHaveSecureMediaIds()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v5, Lcom/motorola/camera/SecureMediaIdsManager$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Lcom/motorola/camera/SecureMediaIdsManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/SecureMediaIdsManager;I)V

    invoke-virtual {v3, v5}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->registerHingeAngleListeners(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mCalibrationDataDebugUiListener:Landroidx/work/WorkQuery;

    if-eqz v0, :cond_b

    iget-object v0, v0, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v3

    iget-object v0, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/SecureCamera$1;

    invoke-virtual {v3, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_b
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/motorola/camera/instrumentreport/MeasureKpi;->getStatesToListenFor()Ljava/util/Collection;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast v5, Landroidx/room/concurrent/FileLock;

    iget-object v6, v5, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/fsm/Fsm;

    iget-object v6, v6, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/16 v8, 0xc

    invoke-direct {v7, v5, v0, v3, v8}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    iget-object v3, v0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->debugBroadcastHelper:Ljava/lang/Object;

    check-cast v3, Lcom/google/zxing/Result;

    if-eqz v3, :cond_d

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v5}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v5

    iget-object v3, v3, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/SecureCamera$1;

    invoke-virtual {v5, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_d
    iget-object v0, v0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_e

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_e
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    sget-object v5, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiList:Ljava/util/List;

    invoke-virtual {v0, v3, v5}, Lcom/motorola/camera/CameraKpi;->unsetKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/List;)V

    :cond_f
    iput-boolean v4, p0, Lcom/motorola/camera/Controller;->mRegistered:Z

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_10

    sget p0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "orientation:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " unregisterListeners dur:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MotoCameraController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_1
    return-void

    :pswitch_b
    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mRegistered:Z

    if-eqz v0, :cond_11

    goto/16 :goto_5

    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mcfOrientationListener:Lcom/motorola/camera/Controller$McfOrientationListener;

    if-nez v2, :cond_12

    new-instance v2, Lcom/motorola/camera/Controller$McfOrientationListener;

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {v3, v3}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {v2, v3}, Lcom/motorola/camera/Controller$McfOrientationListener;-><init>(Z)V

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mcfOrientationListener:Lcom/motorola/camera/Controller$McfOrientationListener;

    :cond_12
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/Controller;->registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mcfOrientationListener:Lcom/motorola/camera/Controller$McfOrientationListener;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/Controller;->registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Controller;->registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mFilterViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    const-string v3, "owner"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v3

    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v4

    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v2

    const-string/jumbo v5, "store"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "factory"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "defaultCreationExtras"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-direct {v5, v3, v4, v2}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    const-class v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    const-string v4, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v2}, Landroidx/media3/extractor/text/pgs/PgsParser;->getViewModel$lifecycle_viewmodel_release(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mFilterViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    goto :goto_2

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_2
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mFilterViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/Controller;->registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-nez v2, :cond_15

    new-instance v2, Lcom/motorola/camera/cli/content/CliContentManager;

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Camera;

    invoke-virtual {v4, v4}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    iget-object v5, v5, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/fsm/Fsm;

    iget-object v5, v5, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/motorola/camera/cli/content/CliContentManager;-><init>(Lcom/motorola/camera/Camera;Lcom/motorola/camera/Controller;ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    :cond_15
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda6;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;I)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v3}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda6;->invoke()Ljava/lang/Object;

    goto :goto_3

    :cond_16
    invoke-virtual {v2}, Lcom/motorola/camera/cli/content/CliContentManager;->getUiContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v3}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_17
    :goto_3
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz v2, :cond_18

    invoke-virtual {p0, v2}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_18
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz v2, :cond_19

    invoke-virtual {p0, v2}, Lcom/motorola/camera/Controller;->registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    :cond_19
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    if-nez v2, :cond_1a

    new-instance v2, Lcom/motorola/camera/LocationManager;

    invoke-direct {v2}, Lcom/motorola/camera/LocationManager;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    :cond_1a
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/LocationManager;->startLocationUpdates(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/shared/OrientationEvent;->enable()V

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mHeadsetReceiver:Landroidx/room/concurrent/FileLock;

    if-nez v2, :cond_1b

    new-instance v2, Landroidx/room/concurrent/FileLock;

    invoke-direct {v2, p0}, Landroidx/room/concurrent/FileLock;-><init>(Lcom/motorola/camera/EventListener;)V

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mHeadsetReceiver:Landroidx/room/concurrent/FileLock;

    :cond_1b
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mHeadsetReceiver:Landroidx/room/concurrent/FileLock;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iget-object v2, v2, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/HeadsetReceiver$1;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mCommandLineReceiver:Lcom/motorola/camera/SecureCamera$1;

    if-eqz v2, :cond_1c

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.motorola.camera.ACTION_SET_ZOOM"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mCommandLineReceiver:Lcom/motorola/camera/SecureCamera$1;

    const/16 v5, 0x18

    invoke-static {v3, v4, v2, v5}, Lcom/motorola/camera/shared/ReceiverUtil;->registerReceiver$default(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_1c
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mCameraControlReceiver:Lcom/motorola/camera/CameraControlReceiver;

    const/4 v3, 0x0

    if-eqz v2, :cond_1e

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Lcom/motorola/camera/CameraControlReceiver$CameraControlAction;->values()[Lcom/motorola/camera/CameraControlReceiver$CameraControlAction;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_4
    if-ge v8, v7, :cond_1d

    aget-object v9, v6, v8

    iget-object v9, v9, Lcom/motorola/camera/CameraControlReceiver$CameraControlAction;->action:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_1d
    const/16 v6, 0x10

    invoke-static {v4, v2, v5, v6}, Lcom/motorola/camera/shared/ReceiverUtil;->registerReceiver$default(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_1e
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mStorageChangedEventDetector:Lcom/google/zxing/Result;

    if-nez v2, :cond_1f

    new-instance v2, Lcom/google/zxing/Result;

    invoke-direct {v2, p0}, Lcom/google/zxing/Result;-><init>(Lcom/motorola/camera/EventListener;)V

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mStorageChangedEventDetector:Lcom/google/zxing/Result;

    :cond_1f
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

    if-nez v2, :cond_20

    new-instance v2, Lcom/motorola/camera/ControllerSaveListener;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ControllerSaveListener;-><init>(Lcom/motorola/camera/EventListener;)V

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

    :cond_20
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mStorageChangedEventDetector:Lcom/google/zxing/Result;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$$ExternalSyntheticLambda0;-><init>(Lcom/google/zxing/Result;I)V

    sget-object v5, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v4, v2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;

    new-instance v6, Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;-><init>(Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v4, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$$ExternalSyntheticLambda0;-><init>(Lcom/google/zxing/Result;I)V

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

    if-eqz v2, :cond_21

    iput v3, v2, Lcom/motorola/camera/ControllerSaveListener;->mUpdateFreeBytesSkipCount:I

    invoke-static {v2}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE:Z

    if-eqz v4, :cond_21

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBgServiceProcessingEnable()Z

    move-result v4

    if-eqz v4, :cond_21

    sget-object v4, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    iget-object v4, v4, Lcom/motorola/camera/jms/BgJobManager;->mBjJobMgrListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_21
    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->shouldHaveSecureMediaIds()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v5, Lcom/motorola/camera/SecureMediaIdsManager$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/motorola/camera/SecureMediaIdsManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/SecureMediaIdsManager;I)V

    invoke-virtual {v4, v5}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_22
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/Controller;->registerHingeAngleListeners(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mCalibrationDataDebugUiListener:Landroidx/work/WorkQuery;

    if-nez v2, :cond_23

    new-instance v2, Landroidx/work/WorkQuery;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v2, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    new-instance v4, Lcom/google/zxing/Result;

    new-instance v5, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener$$ExternalSyntheticLambda0;-><init>(Landroidx/work/WorkQuery;I)V

    new-instance v6, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener$$ExternalSyntheticLambda0;

    const/4 v7, 0x1

    invoke-direct {v6, v2, v7}, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener$$ExternalSyntheticLambda0;-><init>(Landroidx/work/WorkQuery;I)V

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/Result;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v4, v2, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mCalibrationDataDebugUiListener:Landroidx/work/WorkQuery;

    :cond_23
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mCalibrationDataDebugUiListener:Landroidx/work/WorkQuery;

    iget-object v2, v2, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    check-cast v2, Lcom/google/zxing/Result;

    invoke-virtual {v2}, Lcom/google/zxing/Result;->registerActionReceiver()V

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    if-nez v2, :cond_24

    new-instance v2, Lcom/motorola/camera/instrumentreport/MeasureKpi;

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-direct {v2, v4}, Lcom/motorola/camera/instrumentreport/MeasureKpi;-><init>(Landroidx/room/concurrent/FileLock;)V

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    :cond_24
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    invoke-virtual {v2}, Lcom/motorola/camera/instrumentreport/MeasureKpi;->getStatesToListenFor()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_25

    iget-object v4, v2, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    check-cast v4, Landroidx/room/concurrent/FileLock;

    iget-object v5, v4, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/fsm/Fsm;

    iget-object v5, v5, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/16 v7, 0x10

    invoke-direct {v6, v7, v4, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_25
    iget-object v2, v2, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->debugBroadcastHelper:Ljava/lang/Object;

    check-cast v2, Lcom/google/zxing/Result;

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lcom/google/zxing/Result;->registerActionReceiver()V

    :cond_26
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    sget-object v5, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiList:Ljava/util/List;

    invoke-virtual {v2, v4, v5}, Lcom/motorola/camera/CameraKpi;->setKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/List;)V

    sget-object v2, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    iput-boolean v3, v2, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mStopped:Z

    :cond_27
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/camera/Controller;->mRegistered:Z

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_28

    sget p0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "orientation:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " registerListeners dur:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MotoCameraController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_5
    return-void

    :pswitch_c
    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/Controller;->setLayoutChanged(ZZ)V

    return-void

    :pswitch_d
    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/Controller;->setLayoutChanged(ZZ)V

    return-void

    :pswitch_e
    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->checkLayoutMatchSplit()V

    return-void

    :pswitch_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->registerClient(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
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
.end method
