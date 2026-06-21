.class public Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 6
    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void

    .line 7
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 8
    check-cast p3, Landroid/os/Bundle;

    if-nez p3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    const-string p1, "KEY_EVENT"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    if-nez p1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p3

    const/16 v0, 0x50

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    if-ne p3, v0, :cond_4

    .line 11
    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    .line 12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    move v1, v2

    .line 13
    :cond_3
    const-string p1, "FOCUS_KEY_PRESSED"

    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p3

    const/16 v0, 0x1b

    if-ne p3, v0, :cond_6

    .line 15
    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    .line 16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_5

    move v1, v2

    .line 17
    :cond_5
    const-string p1, "CAMERA_KEY_PRESSED"

    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    :goto_0
    return-void

    .line 18
    :pswitch_1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 19
    check-cast p3, Landroid/os/Bundle;

    if-nez p3, :cond_7

    goto :goto_1

    .line 20
    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 3
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
