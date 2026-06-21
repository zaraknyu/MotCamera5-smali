.class public final Lcom/motorola/camera/fsm/camera/states/Main$ReInitRunnable;
.super Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;
.source "SourceFile"


# virtual methods
.method public final bridge synthetic canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Main$ReInitRunnable;->canTransition$1(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final canTransition$1(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->canTransition$1(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "OPEN_AFTER_CLOSE"

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return p2
.end method
