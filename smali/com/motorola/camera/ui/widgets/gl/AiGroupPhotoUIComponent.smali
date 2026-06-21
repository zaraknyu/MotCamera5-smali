.class public final Lcom/motorola/camera/ui/widgets/gl/AiGroupPhotoUIComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# instance fields
.field public volatile isLowLight:Z

.field public final mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/AiGroupPhotoUIComponent;->isLowLight:Z

    new-instance p1, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    const/16 p2, 0xb

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AiGroupPhotoUIComponent;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 4

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AiGroupPhotoUIComponent"

    return-object p0
.end method

.method public final onDraw([F[F[F)V
    .locals 0

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppInit(Lcom/google/zxing/Result;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAiGroupPhotoMode()Z

    move-result p1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_GROUP_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAiGroupPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AiGroupPhotoUIComponent;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/AiGroupPhotoUIComponent;->isLowLight:Z

    goto/16 :goto_1

    :cond_2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isAiGroupPhotoSupported(Z)Z

    move-result v3

    if-eqz v1, :cond_8

    if-eqz v3, :cond_8

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MODE"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x35

    if-ne v0, v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_GROUP_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    if-nez v2, :cond_8

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AiGroupPhotoUIComponent;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAiGroupPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AI_GROUP_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAiGroupPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_GROUP_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AiGroupPhotoUIComponent;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    :goto_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AI_GROUP_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
