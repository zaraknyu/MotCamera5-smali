.class public final Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$mcfStateAdapter$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $eventListener:Lcom/motorola/camera/ui/UIManager;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;Lcom/motorola/camera/ui/UIManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$mcfStateAdapter$1;->$eventListener:Lcom/motorola/camera/ui/UIManager;

    return-void
.end method


# virtual methods
.method public final onAIScene(Lcom/motorola/camera/mcf/McfCallbackAIScene;)V
    .locals 2

    const-string v0, "aiScene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackAIScene;->mScene:Ljava/lang/String;

    const-string v0, "mScene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->hidePill(Lcom/motorola/camera/scenedetection/scene/Scene$Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->factory$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/scenedetection/factory/SceneFactory;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$mcfStateAdapter$1;->$eventListener:Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result p0

    invoke-virtual {v1, p1, p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getScene(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Z)Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    const/16 v1, 0x8

    invoke-direct {p1, v1, v0, p0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDeducedSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V
    .locals 1

    const-string/jumbo v0, "sceneMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->hidePill(Lcom/motorola/camera/scenedetection/scene/Scene$Type;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
