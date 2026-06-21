.class public final Lcom/motorola/camera/scenedetection/factory/SLSISceneFactory;
.super Lcom/motorola/camera/scenedetection/factory/SceneFactory;
.source "SourceFile"


# virtual methods
.method public final getFireworksScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 7

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FIREWORKS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/4 v5, 0x1

    sget-object v6, Lcom/motorola/camera/scenedetection/scene/FocusMode;->INFINITY:Lcom/motorola/camera/scenedetection/scene/FocusMode$INFINITY;

    const v2, 0x7f120053

    const-wide/16 v3, 0xb

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    return-object v0
.end method

.method public final getFoodScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOOD:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const-wide/16 v3, 0x1

    const/16 v5, 0x30

    const v2, 0x7f120055

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJI)V

    return-object v0
.end method

.method public final getHolidayLightsScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->HOLIDAY_LIGHTS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const-wide/16 v3, 0x8

    const/16 v5, 0x20

    const v2, 0x7f120057

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJI)V

    return-object v0
.end method

.method public final getMoonScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 7

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MOON:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/4 v5, 0x1

    sget-object v6, Lcom/motorola/camera/scenedetection/scene/FocusMode;->INFINITY:Lcom/motorola/camera/scenedetection/scene/FocusMode$INFINITY;

    const v2, 0x7f120059

    const-wide/16 v3, 0xa

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    return-object v0
.end method

.method public final getPetMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PET_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const-wide/16 v3, 0x3

    const/16 v5, 0x30

    const v2, 0x7f12005a

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJI)V

    return-object v0
.end method

.method public final getSunsetScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const-wide/16 v3, 0x9

    const/16 v5, 0x20

    const v2, 0x7f12005c

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJI)V

    return-object v0
.end method

.method public final getTextScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TEXT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const-wide/16 v3, 0x2

    const/16 v5, 0x30

    const v2, 0x7f12005d

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJI)V

    return-object v0
.end method

.method public final getToddlerMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TODDLER_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const-wide/16 v3, 0x4

    const/16 v5, 0x30

    const v2, 0x7f12005a

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJI)V

    return-object v0
.end method
