.class public Lcom/motorola/camera/service/CameraForegroundService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public mForegroundNotification:Landroid/app/Notification;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/motorola/camera/shared/NotificationHelper;->buildCameraForegroundNotification(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/service/CameraForegroundService;->mForegroundNotification:Landroid/app/Notification;

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p2, "com.motorola.camera5.EXTRA_FINISH"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    sget-boolean p2, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onStartCommand: isFinish = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CameraForegroundService"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p2, 0x3

    iget-object p3, p0, Lcom/motorola/camera/service/CameraForegroundService;->mForegroundNotification:Landroid/app/Notification;

    invoke-virtual {p0, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public final stopService(Landroid/content/Intent;)Z
    .locals 2

    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stop service "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraForegroundService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
