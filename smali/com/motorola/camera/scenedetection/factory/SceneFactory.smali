.class public abstract Lcom/motorola/camera/scenedetection/factory/SceneFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final factory$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->factory$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method public static getFocusTooFarScene()Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;
    .locals 11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMacroCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isZoomBlendingSupportedMode()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_0

    :goto_1
    new-instance v1, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOCUS_TOO_FAR:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v3, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    sget-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v4, 0x7f120062

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IFZLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    return-object v1

    :cond_1
    const-string v0, "SceneFactory"

    const-string v1, "Macro exit scene raised by MCF in non-macro mode?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getBlueSkyScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFireworksScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FIREWORKS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/4 v4, 0x1

    sget-object v5, Lcom/motorola/camera/scenedetection/scene/FocusMode;->INFINITY:Lcom/motorola/camera/scenedetection/scene/FocusMode$INFINITY;

    const v2, 0x7f120053

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    return-object v0
.end method

.method public getFlashScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFlowerScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFoodScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOOD:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/16 v4, 0x30

    const/4 v5, 0x0

    const v2, 0x7f120055

    const/4 v3, 0x5

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIII)V

    return-object v0
.end method

.method public getGreeneryScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHolidayLightsScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 4

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->HOLIDAY_LIGHTS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/16 v1, 0xe

    const/16 v2, 0x20

    const v3, 0x7f120057

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;III)V

    return-object p0
.end method

.method public getMoonScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MOON:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/4 v4, 0x1

    sget-object v5, Lcom/motorola/camera/scenedetection/scene/FocusMode;->INFINITY:Lcom/motorola/camera/scenedetection/scene/FocusMode$INFINITY;

    const v2, 0x7f120059

    const/4 v3, 0x5

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    return-object v0
.end method

.method public getPetMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 4

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PET_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/4 v1, 0x2

    const/16 v2, 0x30

    const v3, 0x7f12005a

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;III)V

    return-object p0
.end method

.method public getScene(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Z)Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 15

    const-string/jumbo v0, "sceneType"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "getCurrentCameraType(...)"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_a

    :pswitch_1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/PortraitModeScene;

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->AIGROUPPHOTO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v2, 0x7f12005e

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/motorola/camera/scenedetection/scene/PortraitModeScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;II)V

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getGreeneryScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getFlowerScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getFlashScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontFacing()Z

    move-result p0

    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsHelper;->isGroupSelfieSupported(Z)Z

    move-result v0

    if-eqz p0, :cond_0

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v5

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaUpscaleOnlyInBackMain()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v6, v5, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    sget-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    iget-object v8, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {v6, v7, v5, v8}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimited(Landroid/util/Size;)Z

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    sget-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    if-eqz v5, :cond_b

    if-eqz p0, :cond_3

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    :goto_2
    move-object v12, p0

    goto :goto_3

    :cond_3
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isZoomBlendingSupportedMode()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    goto :goto_2

    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result p0

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-eq v12, v0, :cond_6

    if-eqz p0, :cond_5

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-eq v12, p0, :cond_6

    :cond_5
    move v10, v3

    goto :goto_4

    :cond_6
    move v10, v2

    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontMainCamera()Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_GROUPSHOT_JUMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_5

    :cond_7
    move v3, v2

    :goto_5
    if-eqz v3, :cond_8

    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    :goto_6
    move-object v7, p0

    goto :goto_7

    :cond_8
    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    goto :goto_6

    :goto_7
    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    :cond_9
    move-object v13, v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingMinUIZoomX()F

    move-result p0

    :goto_8
    move v9, p0

    goto :goto_9

    :cond_a
    invoke-static {v12, v2}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;Z)F

    move-result p0

    goto :goto_8

    :goto_9
    new-instance v5, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;

    sget-object v6, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->GROUPSHOT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v11

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v14, 0x0

    const v8, 0x7f120065

    invoke-direct/range {v5 .. v14}, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IFZLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    return-object v5

    :cond_b
    if-eqz v0, :cond_e

    if-eqz p0, :cond_e

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->GROUPSHOT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v1, 0x7f12005f

    const/16 v2, 0x9

    const v3, 0x7f0801f3

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;III)V

    return-object p0

    :pswitch_6
    invoke-static {}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getFocusTooFarScene()Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getBlueSkyScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p0

    return-object p0

    :pswitch_8
    new-instance v0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;

    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MACRO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v3, 0x7f120060

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IFZLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    return-object v0

    :pswitch_9
    invoke-virtual {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getFireworksScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getMoonScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getSunsetScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getHolidayLightsScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result p0

    if-eqz p0, :cond_c

    if-nez p2, :cond_c

    move v2, v3

    :cond_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightSupported()Z

    move-result p0

    const v0, 0x7f120061

    const/16 v1, 0xb

    if-eqz p0, :cond_d

    if-eqz v2, :cond_d

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NIGHT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v3, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/16 v3, 0x18

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;III)V

    return-object p0

    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperPortraitSupported()Z

    move-result p0

    if-eqz p0, :cond_e

    if-nez v2, :cond_e

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NIGHT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v3, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/16 v3, 0x1f

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;III)V

    return-object p0

    :cond_e
    :goto_a
    return-object v4

    :pswitch_e
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/PortraitModeScene;

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PORTRAIT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v3, 0x7f120063

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/motorola/camera/scenedetection/scene/PortraitModeScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;II)V

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getToddlerMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getPetMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getTextScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getFoodScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getSunsetScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 4

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/16 v1, 0xa

    const/16 v2, 0x20

    const v3, 0x7f12005c

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;III)V

    return-object p0
.end method

.method public getTextScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 1

    sget-object p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->INSTANCE:Lcom/motorola/camera/utility/lens/LensApiHelper;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/OpenLensScene;

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    invoke-direct {p0}, Lcom/motorola/camera/scenedetection/scene/OpenLensScene;-><init>()V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getToddlerMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 4

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TODDLER_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/4 v1, 0x2

    const/16 v2, 0x30

    const v3, 0x7f12005a

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;III)V

    return-object p0
.end method
