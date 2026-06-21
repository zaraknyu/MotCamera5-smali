.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$mcfStateAdapter$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    return-void
.end method


# virtual methods
.method public final onDeducedSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V
    .locals 3

    const-string/jumbo v0, "sceneMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTorchControlEnabledForCurrentCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMacroCameraWithWide(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    :goto_0
    return-void
.end method
