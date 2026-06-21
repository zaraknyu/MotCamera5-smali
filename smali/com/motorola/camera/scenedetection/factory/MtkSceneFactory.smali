.class public final Lcom/motorola/camera/scenedetection/factory/MtkSceneFactory;
.super Lcom/motorola/camera/scenedetection/factory/SceneFactory;
.source "SourceFile"


# virtual methods
.method public final getFoodScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOOD:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/16 v4, 0x30

    const/4 v5, 0x1

    const v2, 0x7f120055

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIII)V

    return-object v0
.end method

.method public final getSunsetScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/16 v4, 0x20

    const/4 v5, 0x1

    const v2, 0x7f12005c

    const/4 v3, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIII)V

    return-object v0
.end method

.method public final getTextScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TEXT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/16 v4, 0x30

    const/4 v5, 0x1

    const v2, 0x7f12005d

    const/4 v3, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIII)V

    return-object v0
.end method
