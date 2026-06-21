.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$mcfStateAdapter$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;

    return-void
.end method


# virtual methods
.method public final onDeducedSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V
    .locals 2

    const-string/jumbo v0, "sceneMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
