.class public final Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mTargetMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;->mTargetMode:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;->$r8$classId:I

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;->mTargetMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 5
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 6
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;->mTargetMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    .line 7
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 8
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    const-string p3, "error_retry"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 10
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;->-$$Nest$smgetActiveInstanceId()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 11
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mIdentifier:Ljava/lang/Integer;

    if-ne p3, v0, :cond_1

    .line 12
    :cond_0
    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    iget-boolean p3, p3, Lcom/motorola/camera/CameraApp;->mIsActivityVisible:Z

    if-eqz p3, :cond_1

    .line 14
    const-string p3, "error_retry_count"

    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;->mTargetMode:I

    .line 15
    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    iget-object p3, p3, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 19
    new-instance v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/16 v1, 0xe

    invoke-direct {v0, p0, p2, p1, v1}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {p3, v0, p0, p1}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void

    .line 20
    :pswitch_1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 21
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 22
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    .line 23
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mCaptureTone:Landroid/media/MediaActionSound;

    .line 24
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;->mTargetMode:I

    const/4 p2, 0x1

    if-nez p0, :cond_2

    .line 25
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object p0

    .line 26
    iput-boolean p2, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    const/4 p2, 0x0

    .line 27
    iput p2, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    .line 28
    iput p2, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mRequestNum:I

    .line 29
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 30
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 31
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    .line 32
    invoke-virtual {p1, p0}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_0

    :cond_2
    if-ne p2, p0, :cond_3

    .line 33
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 34
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 35
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    .line 36
    invoke-virtual {p1, p0}, Landroid/media/MediaActionSound;->play(I)V

    :cond_3
    :goto_0
    return-void

    .line 37
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 38
    check-cast p3, Landroid/os/Bundle;

    .line 39
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    .line 40
    const-string p2, "SRC_MODE"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 41
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;->mTargetMode:I

    const/4 p2, -0x1

    const-string v0, "MODE"

    if-ne p0, p2, :cond_4

    .line 42
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 43
    :cond_4
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 3
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 4
    :pswitch_2
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
