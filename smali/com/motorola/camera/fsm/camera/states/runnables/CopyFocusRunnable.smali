.class public final Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mBundleTypeFrom:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public final mBundleTypeTo:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;->mBundleTypeFrom:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;->mBundleTypeTo:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;->mBundleTypeFrom:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;->mBundleTypeTo:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    .line 6
    const-string p2, "CAMERA_KEY_PRESSED"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p0, p2, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    const-string p2, "FOCUS_KEY_PRESSED"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 8
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;->mBundleTypeFrom:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;->mBundleTypeTo:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    .line 11
    const-string p2, "CAPTURE_TRIGGER"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 12
    const-string p2, "FOCUS_SUCCESS"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    const-string p2, "FOCUS_LOCKED"

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
