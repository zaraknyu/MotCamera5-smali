.class public final Lcom/motorola/camera/scenedetection/SceneDetectionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

.field public static queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static updateScene$default(Lcom/motorola/camera/scenedetection/scene/Scene;Lcom/motorola/camera/ui/UIManager;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getPersistOnLensSwitch()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    sput-object p0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_3
    :goto_2
    return-void
.end method
