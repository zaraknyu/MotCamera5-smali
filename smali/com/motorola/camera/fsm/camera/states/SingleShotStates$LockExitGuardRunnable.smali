.class public final Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mCaptureType:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Serializable;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;->mCaptureType:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;->mCaptureType:Ljava/io/Serializable;

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p2, Landroid/os/Bundle;

    if-eqz p2, :cond_0

    const-string p1, "SETTING"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;->mCaptureType:Ljava/io/Serializable;

    check-cast p0, Ljava/util/HashSet;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_0
    check-cast p2, Landroid/os/Bundle;

    if-eqz p2, :cond_2

    const-string p1, "SETTING"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;->mCaptureType:Ljava/io/Serializable;

    check-cast p0, Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/settings/SettingsManager$Key;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0

    :pswitch_1
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;->mCaptureType:Ljava/io/Serializable;

    check-cast p0, [Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "CAPTURE_TRIGGER"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;->mCaptureType:Ljava/io/Serializable;

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    :goto_4
    return p0

    :pswitch_3
    sget-object p2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->NORMAL:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaFourStreams()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSingleSessionMcfSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "QCFA_SHOT"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocServiceMode()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->MCF:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    :cond_7
    :goto_5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LockExitGuardRunnable;->mCaptureType:Ljava/io/Serializable;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-ne p0, p2, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
