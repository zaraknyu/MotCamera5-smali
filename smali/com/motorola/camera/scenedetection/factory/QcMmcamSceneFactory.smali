.class public final Lcom/motorola/camera/scenedetection/factory/QcMmcamSceneFactory;
.super Lcom/motorola/camera/scenedetection/factory/SceneFactory;
.source "SourceFile"


# virtual methods
.method public final getSunsetScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/16 v4, 0x20

    const/4 v5, 0x0

    const v2, 0x7f12005c

    const/4 v3, 0x7

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIII)V

    return-object v0
.end method
