.class public Lcom/motorola/camera/MirrorCameraActivity;
.super Lcom/motorola/camera/cli/camera/CliCameraActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/cli/camera/CliCameraActivity;-><init>()V

    return-void
.end method

.method public static setMirrorAction(Landroid/content/Intent;Z)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "motorola.camera.intent.action.MIRROR_CAPTURE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.EXTRA_IS_MIRROR_MODE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/motorola/camera/Camera;->mAutoFinish:Z

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/motorola/camera/MirrorCameraActivity;->setMirrorAction(Landroid/content/Intent;Z)V

    invoke-super {p0, p1}, Lcom/motorola/camera/cli/camera/CliCameraActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/motorola/camera/MirrorCameraActivity;->setMirrorAction(Landroid/content/Intent;Z)V

    invoke-super {p0, p1}, Lcom/motorola/camera/Camera;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/camera/MirrorCameraActivity;->setMirrorAction(Landroid/content/Intent;Z)V

    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/camera/MirrorCameraActivity;->setMirrorAction(Landroid/content/Intent;Z)V

    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onResume()V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/camera/MirrorCameraActivity;->setMirrorAction(Landroid/content/Intent;Z)V

    invoke-super {p0}, Lcom/motorola/camera/cli/camera/CliCameraActivity;->onStart()V

    return-void
.end method
