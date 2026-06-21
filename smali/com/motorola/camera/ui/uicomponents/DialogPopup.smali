.class public final Lcom/motorola/camera/ui/uicomponents/DialogPopup;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public mAlertPopup:Lcom/motorola/camera/ui/widgets/AlertPopup;


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 4

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {p0, v0, v1, v2, v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v0, p1, :cond_1

    if-nez p2, :cond_0

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance p2, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/DialogPopup;I)V

    invoke-virtual {p1, p2}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final rotate(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup;->mAlertPopup:Lcom/motorola/camera/ui/widgets/AlertPopup;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup;->mAlertPopup:Lcom/motorola/camera/ui/widgets/AlertPopup;

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/AlertPopup;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup;->mAlertPopup:Lcom/motorola/camera/ui/widgets/AlertPopup;

    if-eqz p1, :cond_4

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/DialogPopup;I)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/DialogPopup;->mAlertPopup:Lcom/motorola/camera/ui/widgets/AlertPopup;

    if-eqz p1, :cond_4

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/DialogPopup;I)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
