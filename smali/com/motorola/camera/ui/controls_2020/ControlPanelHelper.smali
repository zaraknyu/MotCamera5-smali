.class public abstract Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL_SETTINGS_KEYS:Ljava/util/List;

.field public static final ON_VALUE_ALLOWED_SETTINGS:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->IMAGE_PREFERENCE_SELECTOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->SMART_HIGH_RES:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DOLBY_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v17, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v18, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v19, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v20, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v21, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v22, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v23, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v24, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v25, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v26, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v27, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v28, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v29, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v30, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v31, Lcom/motorola/camera/settings/SettingsManager;->ADOBE_AUTO_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v32, Lcom/motorola/camera/settings/SettingsManager;->CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array/range {v1 .. v32}, [Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    move-object v5, v7

    move-object v7, v12

    move-object v6, v13

    move-object v10, v14

    move-object v9, v15

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    move-object v8, v4

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v11, v17

    filled-new-array/range {v3 .. v11}, [Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ON_VALUE_ALLOWED_SETTINGS:Ljava/util/List;

    return-void
.end method

.method public static final getAllSettings(Lcom/motorola/camera/EventListener;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "eventListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    .line 2
    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v1

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v2

    .line 3
    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result p0

    .line 4
    invoke-static {v0, v1, v2, p0}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getAllSettings(ZZZZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final getAllSettings(ZZZZ)Ljava/util/ArrayList;
    .locals 14

    const/4 v0, 0x0

    move/from16 v1, p2

    .line 5
    invoke-static {v0, v1}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getControlBarMaxItems(ZZ)I

    move-result v2

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, -0x2

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v0

    :goto_0
    if-ge v5, v2, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_0
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 9
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_3

    .line 10
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, -0x2

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v0

    :goto_1
    if-ge v5, v2, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 12
    :cond_2
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 13
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, -0x2

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v0

    :goto_2
    if-ge v5, v2, :cond_4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move-object v2, v3

    .line 15
    :goto_3
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    sget-object v5, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 18
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 20
    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    .line 21
    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 22
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 23
    sget-object v8, Lcom/motorola/camera/utility/lens/LensApiHelper;->INSTANCE:Lcom/motorola/camera/utility/lens/LensApiHelper;

    invoke-virtual {v8}, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable()Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_8

    :cond_6
    move v7, v0

    goto/16 :goto_8

    .line 24
    :cond_7
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v8

    if-nez v8, :cond_23

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAdobeScanMode()Z

    move-result v8

    if-eqz v8, :cond_6

    goto/16 :goto_8

    .line 26
    :cond_8
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 27
    sget-boolean v7, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    goto/16 :goto_8

    .line 28
    :cond_9
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto/16 :goto_7

    .line 29
    :cond_a
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    if-nez p0, :cond_23

    .line 30
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoFamilyMode()Z

    move-result v8

    if-nez v8, :cond_23

    .line 31
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v8

    if-nez v8, :cond_23

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAdobeScanMode()Z

    move-result v8

    if-nez v8, :cond_23

    .line 32
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v8

    .line 33
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v9

    invoke-static {v9, v8, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isStandardAspectRatioMode(ILcom/motorola/camera/settings/CameraType;Z)Z

    move-result v8

    if-nez v8, :cond_23

    .line 34
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result v8

    if-nez v8, :cond_23

    .line 35
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_b

    goto/16 :goto_8

    .line 36
    :cond_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorVideoMode()Z

    move-result v8

    if-nez v8, :cond_23

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v8

    if-nez v8, :cond_23

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeInCaptureState()Z

    move-result v8

    if-nez v8, :cond_23

    .line 37
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v8

    if-eqz v8, :cond_c

    goto/16 :goto_8

    .line 38
    :cond_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v8

    if-eqz v8, :cond_6

    goto/16 :goto_8

    .line 39
    :cond_d
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    if-eqz p0, :cond_23

    .line 40
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 41
    invoke-static {v8, v7}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoCaptureCapable(Lcom/motorola/camera/settings/SettingsManager$Key;Z)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 42
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoCaptureSupportedByCurrentMode()Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_8

    .line 43
    :cond_e
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    if-eqz p0, :cond_f

    .line 44
    sget-object v8, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 45
    sget-object v9, Lcom/motorola/camera/AppFeatures$Feature;->CLI_VIDEO_SQUARE_RESOLUTION:Lcom/motorola/camera/AppFeatures$Feature;

    .line 46
    iget-object v8, v8, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v8, Ljava/util/EnumSet;

    .line 47
    invoke-virtual {v8, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 48
    :cond_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoTypeMode()Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_8

    .line 49
    :cond_10
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    if-nez p0, :cond_23

    .line 50
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_8

    .line 51
    :cond_11
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    if-eqz p0, :cond_12

    .line 52
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v8

    .line 53
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isCliHdWidescreenAspectRatioSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 54
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v8

    if-nez v8, :cond_23

    :cond_12
    if-nez p0, :cond_13

    .line 55
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 56
    :cond_13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoTypeMode()Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_8

    .line 57
    :cond_14
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    if-eqz p0, :cond_23

    .line 58
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_8

    .line 59
    :cond_15
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_21

    .line 60
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    goto/16 :goto_6

    .line 61
    :cond_16
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    .line 62
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    goto/16 :goto_5

    .line 63
    :cond_17
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 64
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDebugVstabOptionsOn()Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_8

    .line 65
    :cond_18
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 66
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDebugVstabOptionsOn()Z

    move-result v8

    if-nez v8, :cond_23

    .line 67
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_8

    .line 68
    :cond_19
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_8

    .line 69
    :cond_1a
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    if-nez p0, :cond_23

    .line 70
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 71
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_8

    .line 72
    :cond_1b
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DOLBY_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    if-nez p0, :cond_23

    .line 73
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentCliCamera()Z

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/motorola/camera/settings/SettingsHelper;->isDolbyVisionSupported(IIZ)Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_8

    .line 74
    :cond_1c
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 75
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result v8

    if-nez v8, :cond_23

    .line 76
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareQCom()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 77
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_8

    .line 78
    :cond_1d
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    if-eqz p0, :cond_23

    .line 79
    sget-boolean v8, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY_MANUAL_CLI:Z

    if-eqz v8, :cond_6

    goto :goto_8

    .line 80
    :cond_1e
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->IMAGE_PREFERENCE_SELECTOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    if-nez p0, :cond_23

    .line 81
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 82
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_8

    .line 83
    :cond_1f
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_8

    :cond_20
    :goto_5
    if-eqz p0, :cond_23

    .line 84
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_8

    :cond_21
    :goto_6
    if-nez p0, :cond_23

    .line 85
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_8

    :cond_22
    :goto_7
    if-eqz p0, :cond_23

    .line 86
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoFamilyMode()Z

    move-result v8

    if-nez v8, :cond_23

    .line 87
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v8

    if-nez v8, :cond_23

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_23
    :goto_8
    if-nez v7, :cond_5

    .line 88
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 89
    :cond_24
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 91
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    .line 92
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 93
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 94
    :cond_26
    new-instance v3, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 96
    check-cast v8, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 97
    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v8

    .line 98
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 99
    :cond_27
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    .line 100
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v0

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-ltz v8, :cond_2c

    check-cast v9, Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v9, :cond_2b

    .line 101
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v0

    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_29

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 102
    check-cast v13, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 103
    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_28

    goto :goto_d

    :cond_28
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_29
    const/4 v12, -0x1

    :goto_d
    if-ltz v12, :cond_2a

    .line 104
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_e

    .line 105
    :cond_2a
    invoke-virtual {v2, v8, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    :goto_e
    move v8, v10

    goto :goto_b

    .line 106
    :cond_2c
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v4

    .line 107
    :cond_2d
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v0

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_31

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-ltz v8, :cond_30

    check-cast v9, Lcom/motorola/camera/settings/SettingsManager$Key;

    if-nez v9, :cond_2f

    .line 108
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2e

    move-object v9, v4

    goto :goto_10

    :cond_2e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 109
    :goto_10
    check-cast v9, Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v9, :cond_2f

    .line 110
    invoke-virtual {v2, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    move v8, v10

    goto :goto_f

    .line 111
    :cond_30
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v4

    .line 112
    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_32
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 114
    :cond_33
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 117
    check-cast v3, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 118
    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v3

    .line 119
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 120
    :cond_34
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 121
    invoke-static/range {p1 .. p2}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getControlBarMaxItems(ZZ)I

    move-result p1

    if-eqz p3, :cond_36

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lt p0, p1, :cond_35

    sub-int/2addr p1, v7

    .line 123
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SETTINGS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v0, p1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_13

    .line 124
    :cond_35
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SETTINGS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_36
    if-nez p0, :cond_37

    .line 125
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SETTINGS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, p1, :cond_37

    sub-int/2addr p1, v7

    .line 127
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v0, p1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 128
    :cond_37
    :goto_13
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_38
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 130
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 131
    iget-boolean v1, v1, Lcom/motorola/camera/settings/Setting;->mIsPermanentLock:Z

    if-nez v1, :cond_38

    .line 132
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_39
    return-object p0
.end method

.method public static getControlBarMaxItems(Lcom/motorola/camera/EventListener;)I
    .locals 2

    const-string v0, "eventListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    const-string v1, "getLayoutManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v0

    .line 2
    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result p0

    .line 3
    invoke-static {v0, p0}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getControlBarMaxItems(ZZ)I

    move-result p0

    return p0
.end method

.method public static getControlBarMaxItems(ZZ)I
    .locals 1

    .line 4
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p0, 0x5

    return p0

    .line 5
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result p0

    const/4 p1, 0x6

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    :cond_2
    return p1
.end method

.method public static getControlPanelSettings(Lcom/motorola/camera/EventListener;)Ljava/util/List;
    .locals 2

    const-string v0, "eventListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getAllSettings(Lcom/motorola/camera/EventListener;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getControlBarMaxItems(Lcom/motorola/camera/EventListener;)I

    move-result v1

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gt p0, v1, :cond_1

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
