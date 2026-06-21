.class public final Lcom/motorola/camera/scenedetection/factory/ArcsoftSceneFactory;
.super Lcom/motorola/camera/scenedetection/factory/SceneFactory;
.source "SourceFile"


# virtual methods
.method public final getFlowerScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 3

    new-instance p0, Lcom/motorola/camera/scenedetection/factory/ArcsoftSceneFactory$ArcsoftScene;

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FLOWER:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v1, 0x7f120054

    const/16 v2, 0x6f

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/camera/scenedetection/factory/ArcsoftSceneFactory$ArcsoftScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;II)V

    return-object p0
.end method

.method public final getFoodScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 3

    new-instance p0, Lcom/motorola/camera/scenedetection/factory/ArcsoftSceneFactory$ArcsoftScene;

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOOD:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v1, 0x7f120055

    const/16 v2, 0x6d

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/camera/scenedetection/factory/ArcsoftSceneFactory$ArcsoftScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;II)V

    return-object p0
.end method

.method public final getSunsetScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 3

    new-instance p0, Lcom/motorola/camera/scenedetection/factory/ArcsoftSceneFactory$ArcsoftScene;

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v1, 0x7f12005c

    const/16 v2, 0x6e

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/camera/scenedetection/factory/ArcsoftSceneFactory$ArcsoftScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;II)V

    return-object p0
.end method
