.class public final Lcom/motorola/camera/CameraControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-nez p1, :cond_2

    sget-boolean p1, Lcom/motorola/camera/Util;->AUTO_TEST:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    sget-object p1, Lcom/motorola/camera/CameraControlReceiver$CameraControlAction;->Companion:Landroidx/collection/internal/Lock;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/CameraControlReceiver$CameraControlAction;->values()[Lcom/motorola/camera/CameraControlReceiver$CameraControlAction;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_4

    aget-object v1, p1, v0

    iget-object v2, v1, Lcom/motorola/camera/CameraControlReceiver$CameraControlAction;->action:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CAMERA_CONTROL_ACTION:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_5
    :goto_3
    return-void
.end method
