.class public Lcom/motorola/camera/SecureCamera;
.super Lcom/motorola/camera/Camera;
.source "SourceFile"


# instance fields
.field public final mSecureScreenOffReceiver:Lcom/motorola/camera/SecureCamera$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/Camera;-><init>()V

    new-instance v0, Lcom/motorola/camera/SecureCamera$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/SecureCamera$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/SecureCamera;->mSecureScreenOffReceiver:Lcom/motorola/camera/SecureCamera$1;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/motorola/camera/Camera;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object p1

    iget-boolean p1, p1, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SECURE_LAUNCH_SETTINGS_FINISH:Lcom/motorola/camera/Notifier$TYPE;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.motorola.bodyguard.ENTER_ALERT_MODE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v0, p0, Lcom/motorola/camera/SecureCamera;->mSecureScreenOffReceiver:Lcom/motorola/camera/SecureCamera$1;

    const/16 v1, 0x10

    invoke-static {p0, v0, p1, v1}, Lcom/motorola/camera/shared/ReceiverUtil;->registerReceiver$default(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_2
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/HashMap;

    const-string p1, "Camera"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Window;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-boolean p0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "CameraApp"

    const-string p1, "Camera finish. "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/motorola/camera/Camera;->onDestroy()V

    iget-object v0, p0, Lcom/motorola/camera/SecureCamera;->mSecureScreenOffReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-static {p0, v0}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object p1

    iget-boolean p1, p1, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/Controller;->windowHasFocus()V

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;ZZ)V

    :cond_1
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/motorola/camera/CameraApp;->mSecure:Z

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_2
    return-void
.end method
