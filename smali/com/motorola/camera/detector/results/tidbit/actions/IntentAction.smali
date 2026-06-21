.class public final Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;
.super Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/motorola/camera/EventListener;)V
    .locals 4

    const-string v0, "eventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mResource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    sget-object v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SEARCH:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v0, 0x7f120156

    invoke-static {v0, p0, p1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mData:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    invoke-interface {p1, v0}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void
.end method
