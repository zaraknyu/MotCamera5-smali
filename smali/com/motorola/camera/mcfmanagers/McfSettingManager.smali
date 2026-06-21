.class public final Lcom/motorola/camera/mcfmanagers/McfSettingManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"


# instance fields
.field public mEnable:Z

.field public final mIsCliDisplay:Z

.field public final mMcfStateListener:Lcom/motorola/camera/mcfmanagers/McfSettingManager$1;

.field public final mSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public final mTorchControlListener:Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda1;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/mcfmanagers/McfSettingManager$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mMcfStateListener:Lcom/motorola/camera/mcfmanagers/McfSettingManager$1;

    new-instance v0, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mTorchControlListener:Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda1;

    iput-boolean p1, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_CAMERA_OPEN:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_TEARDOWN:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final sendMcfParameters(I)V
    .locals 32

    move/from16 v0, p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6d

    :cond_0
    new-instance v2, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v2}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result v1

    const-string v3, "UltraResolutionMode"

    invoke-virtual {v2, v1, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(ILjava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentSceneAdjustmentStatusEnabled()Z

    move-result v1

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eqz v1, :cond_1

    move v1, v10

    goto :goto_0

    :cond_1
    move v1, v9

    :goto_0
    const-string v3, "AISceneState"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2a

    const/4 v11, 0x1

    if-eq v11, v0, :cond_2

    if-ne v1, v0, :cond_5

    :cond_2
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v11, :cond_3

    move v3, v11

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVSupportedByCurrentMode()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    move v3, v11

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    const-string v4, "AutoNvAllowed"

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(ILjava/lang/String;)V

    :cond_5
    if-eq v11, v0, :cond_6

    if-ne v10, v0, :cond_9

    :cond_6
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v11, v3, :cond_7

    move v3, v10

    goto :goto_3

    :cond_7
    if-ne v9, v3, :cond_8

    move v3, v11

    goto :goto_3

    :cond_8
    move v3, v9

    :goto_3
    const-string v4, "FlashMode"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eq v11, v0, :cond_a

    if-ne v9, v0, :cond_d

    :cond_a
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v11, v3, :cond_b

    move v3, v10

    goto :goto_4

    :cond_b
    if-ne v9, v3, :cond_c

    move v3, v11

    goto :goto_4

    :cond_c
    move v3, v9

    :goto_4
    const-string v4, "HdrMode"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-eq v11, v0, :cond_e

    const/16 v3, 0x19

    if-ne v3, v0, :cond_f

    :cond_e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result v3

    const-string v4, "MotionCaptureMode"

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(ILjava/lang/String;)V

    :cond_f
    if-eq v11, v0, :cond_10

    const/16 v3, 0x30

    if-ne v3, v0, :cond_12

    :cond_10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGestureVideoEnabledModes()Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AIR_GESTURE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v11

    goto :goto_5

    :cond_11
    const/4 v3, 0x0

    :goto_5
    const-string v4, "SetGestureDetectMode"

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(ILjava/lang/String;)V

    :cond_12
    const/16 v3, 0xb

    const/4 v13, 0x5

    const/4 v14, 0x4

    const-string v4, "\""

    const-string/jumbo v5, "}}"

    const-string/jumbo v6, "{\""

    if-eq v11, v0, :cond_14

    if-eq v14, v0, :cond_14

    if-eq v13, v0, :cond_14

    const/4 v7, 0x6

    if-eq v7, v0, :cond_14

    const/4 v7, 0x7

    if-eq v7, v0, :cond_14

    const/16 v7, 0x8

    if-eq v7, v0, :cond_14

    const/16 v7, 0x9

    if-eq v7, v0, :cond_14

    const/16 v7, 0xa

    if-eq v7, v0, :cond_14

    if-ne v3, v0, :cond_13

    goto :goto_6

    :cond_13
    move-object v1, v5

    move v3, v11

    goto/16 :goto_e

    :cond_14
    :goto_6
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v11, v7, :cond_15

    move v7, v10

    goto :goto_7

    :cond_15
    move v7, v9

    :goto_7
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v10, :cond_16

    if-nez v8, :cond_16

    move v7, v9

    :cond_16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyComponentAvailable()Z

    move-result v16

    if-nez v16, :cond_17

    move v7, v9

    :cond_17
    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_SMOOTH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    iget-object v13, v13, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    iget-object v14, v14, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_EYE_ENLARGE_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    iget-object v10, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_NOSE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v16, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v11

    iget-object v11, v11, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v15

    iget-object v15, v15, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyMeiSheVersion()Z

    move-result v21

    move/from16 v22, v7

    const-string v7, ",\"beauty-finetune-eye-enlarge-level\":"

    move-object/from16 v23, v15

    const-string v15, ",\"beauty-finetune-slim-level\":"

    const-string v0, ",\"beauty-finetune-toning-level\":"

    move/from16 v24, v9

    const-string v9, ",\"beauty-finetune-smooth-level\":"

    move/from16 v25, v14

    const-string v14, ",\"beauty-device\":"

    move-object/from16 v26, v5

    const-string v5, ",\"beauty-region\":"

    move/from16 v27, v10

    const-string v10, ",\"beauty-level\":"

    move-object/from16 v28, v7

    const-string v7, "\":{\"beauty-mode\":"

    if-eqz v21, :cond_1c

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    move/from16 v29, v1

    const-string/jumbo v1, "prc"

    if-eqz v21, :cond_19

    sget-object v21, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    move-object/from16 v30, v15

    invoke-static/range {v21 .. v21}, Lcom/motorola/camera/CountryDetector;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    move/from16 v21, v3

    const-string v3, "cn"

    invoke-virtual {v3, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object v15, v1

    goto :goto_8

    :cond_18
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v3}, Lcom/motorola/camera/shared/McfUtil;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    goto :goto_8

    :cond_19
    move/from16 v21, v3

    move-object/from16 v30, v15

    move-object/from16 v15, v23

    :goto_8
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string/jumbo v15, "row"

    :cond_1a
    invoke-static {v12, v15}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v3, :cond_1b

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/16 v12, 0x2c

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1b
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, "BeautificationParamsMeishe"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v7, ",\"beauty-level-enable\":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move-object/from16 v3, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v11, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move-object/from16 v12, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v15, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    move/from16 v0, p1

    const/4 v3, 0x1

    goto/16 :goto_e

    :cond_1c
    move v11, v1

    move v1, v3

    move-object v3, v15

    move-object/from16 v31, v26

    move/from16 v15, v27

    move-object/from16 v12, v28

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1d

    sget-object v21, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static/range {v21 .. v21}, Lcom/motorola/camera/shared/McfUtil;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move/from16 v27, v15

    move-object/from16 v15, v21

    :goto_a
    move-object/from16 v28, v12

    goto :goto_b

    :cond_1d
    move/from16 v27, v15

    move-object/from16 v15, v23

    goto :goto_a

    :goto_b
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v12

    move/from16 v29, v11

    iget-boolean v11, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v11, :cond_1e

    iget-object v11, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move-object/from16 v30, v3

    const/16 v3, 0x2c

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_c
    const/4 v3, 0x0

    goto :goto_d

    :cond_1e
    move-object/from16 v30, v3

    goto :goto_c

    :goto_d
    iput-boolean v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, "BeautificationParams"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v5, ",\"beauty-finetune-toning-type\":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v5, v25

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move-object/from16 v3, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v11, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move-object/from16 v12, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v15, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"beauty-finetune-nose-slim-level\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :goto_e
    if-eq v3, v0, :cond_1f

    const/16 v5, 0x16

    if-ne v5, v0, :cond_23

    :cond_1f
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v3, v5, :cond_20

    const/4 v3, 0x3

    goto :goto_f

    :cond_20
    const/4 v3, 0x2

    if-ne v3, v5, :cond_21

    const/4 v3, 0x1

    goto :goto_f

    :cond_21
    const/4 v3, 0x2

    :goto_f
    iget-boolean v5, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v5, :cond_22

    iget-object v5, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/16 v12, 0x2c

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_22
    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    iget-object v5, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v7, "BestShotVideoParams"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v7, "\":{\"bestshotvideo-mode\":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const/16 v3, 0xc

    const/4 v5, 0x1

    if-eq v5, v0, :cond_25

    if-ne v3, v0, :cond_24

    goto :goto_11

    :cond_24
    :goto_10
    const/4 v5, 0x1

    goto :goto_13

    :cond_25
    :goto_11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x0

    goto :goto_12

    :cond_26
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getBokehLevel()F

    move-result v5

    float-to-int v5, v5

    :goto_12
    const-string v7, "RTBokehBlurLevel"

    invoke-virtual {v2, v5, v7}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(ILjava/lang/String;)V

    goto :goto_10

    :goto_13
    if-eq v5, v0, :cond_27

    const/16 v5, 0x1a

    if-eq v5, v0, :cond_27

    const/16 v5, 0x1b

    if-ne v5, v0, :cond_2a

    :cond_27
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_28

    const/4 v5, 0x3

    goto :goto_14

    :cond_28
    const/4 v5, 0x2

    :goto_14
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-boolean v8, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v8, :cond_29

    iget-object v8, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/16 v12, 0x2c

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_29
    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    iget-object v8, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v9, "SFBokehParams"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v9, "\":{\"mode\":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"level\":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    const/16 v5, 0x28

    const/4 v7, 0x1

    if-eq v7, v0, :cond_2c

    if-ne v5, v0, :cond_2b

    goto :goto_16

    :cond_2b
    :goto_15
    const/4 v7, 0x1

    goto :goto_17

    :cond_2c
    :goto_16
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    div-float/2addr v8, v7

    iget-boolean v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v7, :cond_2d

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/16 v12, 0x2c

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2d
    const/4 v7, 0x0

    iput-boolean v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v9, "PortraitLens"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v9, "\":{\"zoom\":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :goto_17
    if-eq v7, v0, :cond_2e

    const/16 v7, 0x13

    if-ne v7, v0, :cond_31

    :cond_2e
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2f

    const/4 v7, 0x3

    goto :goto_18

    :cond_2f
    const/4 v7, 0x2

    :goto_18
    iget-boolean v8, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v8, :cond_30

    iget-object v8, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/16 v12, 0x2c

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_30
    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    iget-object v8, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v9, "SelectiveColorParams"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v9, "\":{\"selective-color-mode\":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    const-string v7, ""

    const/4 v8, 0x1

    if-eq v8, v0, :cond_32

    const/16 v8, 0x14

    if-ne v8, v0, :cond_34

    :cond_32
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_PIXEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v10, v8, 0x8

    and-int/lit16 v10, v10, 0xff

    and-int/lit16 v8, v8, 0xff

    iget-boolean v11, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v11, :cond_33

    iget-object v11, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_33
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    iget-object v11, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, "SelectiveColorSelection"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, "\":{\"selective-color-R\":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, ",\"selective-color-G\":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, ",\"selective-color-B\":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    const-string v8, ","

    const/4 v9, 0x1

    if-eq v9, v0, :cond_36

    const/16 v9, 0x15

    if-ne v9, v0, :cond_35

    goto :goto_1a

    :cond_35
    :goto_19
    const/4 v7, 0x1

    goto :goto_1b

    :cond_36
    :goto_1a
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-boolean v10, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v10, :cond_37

    iget-object v10, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/16 v12, 0x2c

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_37
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    iget-object v10, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, "SelectiveColorThreshold"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, "\":{\"selective-color-threshold\":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v9, "\"selective-color-threshold-max\":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v9, "1000"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :goto_1b
    if-eq v7, v0, :cond_39

    const/16 v7, 0x2d

    if-eq v7, v0, :cond_39

    const/16 v7, 0x2e

    if-ne v7, v0, :cond_38

    goto :goto_1d

    :cond_38
    :goto_1c
    const/4 v7, 0x1

    goto/16 :goto_1f

    :cond_39
    :goto_1d
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->MINIATURE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3a

    const/4 v7, 0x3

    goto :goto_1e

    :cond_3a
    const/4 v7, 0x2

    :goto_1e
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->MINIATURE_BOKEH_PARAMS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    iget-object v10, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v10, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;

    iget v10, v10, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->ptFocusX:I

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v11

    iget-object v11, v11, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v11, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;

    iget v11, v11, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->ptFocusY:I

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v12

    iget-object v12, v12, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v12, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;

    iget v12, v12, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->previewWidth:I

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    iget-object v13, v13, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v13, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;

    iget v13, v13, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->previewHeight:I

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    iget-object v14, v14, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v14, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;

    iget v14, v14, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->sharpRange:I

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v9, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;

    iget v9, v9, Lcom/motorola/camera/utility/TiltShiftUtil$MiniatureBokehParams;->angle:I

    iget-boolean v15, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v15, :cond_3b

    iget-object v15, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3b
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v15, "MiniatureBokehParams"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v15, "\":{\"miniature-bokeh-mode\":"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v7, ",\"focus-point-x\":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v7, ",\"focus-point-y\":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v7, ",\"preview-width\":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v7, ",\"preview-height\":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v7, ",\"sharp-range\":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v7, ",\"angle\":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1c

    :goto_1f
    if-eq v7, v0, :cond_3d

    const/16 v3, 0xd

    if-ne v3, v0, :cond_3c

    goto :goto_21

    :cond_3c
    :goto_20
    const/4 v7, 0x1

    goto :goto_22

    :cond_3d
    :goto_21
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK0:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v9, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v9, v10}, Lcom/motorola/camera/mcf/McfParameters;->setDebugParamsMode(IJ)V

    goto :goto_20

    :goto_22
    if-eq v7, v0, :cond_3f

    const/16 v3, 0xe

    if-ne v3, v0, :cond_3e

    goto :goto_23

    :cond_3e
    const/4 v7, 0x1

    goto :goto_24

    :cond_3f
    :goto_23
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK1:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v9, v3

    const/4 v7, 0x1

    invoke-virtual {v2, v7, v9, v10}, Lcom/motorola/camera/mcf/McfParameters;->setDebugParamsMode(IJ)V

    :goto_24
    if-eq v7, v0, :cond_41

    const/16 v3, 0xf

    if-ne v3, v0, :cond_40

    goto :goto_26

    :cond_40
    :goto_25
    const/4 v7, 0x1

    goto :goto_27

    :cond_41
    :goto_26
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK2:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v9, v3

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v9, v10}, Lcom/motorola/camera/mcf/McfParameters;->setDebugParamsMode(IJ)V

    goto :goto_25

    :goto_27
    if-ne v7, v0, :cond_44

    const-wide/16 v9, 0x0

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v9, v10}, Lcom/motorola/camera/mcf/McfParameters;->setDebugParamsMode(IJ)V

    const-string v7, "SuperResolutionMode"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "LowLightShotMode"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSlowCaptureMode()Z

    move-result v3

    if-eqz v3, :cond_42

    const/4 v3, 0x3

    goto :goto_28

    :cond_42
    const/4 v3, 0x2

    :goto_28
    const-string v7, "SlowCaptureMode"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v3

    if-eqz v3, :cond_43

    const/4 v3, 0x3

    goto :goto_29

    :cond_43
    const/4 v3, 0x2

    :goto_29
    const-string v7, "SetAppMacroMode"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "setUseZoomRatio"

    const/4 v7, 0x1

    invoke-virtual {v2, v7, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(ILjava/lang/String;)V

    const-string v3, "IgnoreFocus"

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(ILjava/lang/String;)V

    const-string v3, "EyeContourMode"

    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "SetDeductedSceneMode"

    invoke-virtual {v2, v7, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    :cond_44
    if-eq v7, v0, :cond_46

    const/16 v3, 0x10

    if-ne v3, v0, :cond_45

    goto :goto_2b

    :cond_45
    :goto_2a
    const/4 v7, 0x1

    goto :goto_2c

    :cond_46
    :goto_2b
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v3}, Lcom/motorola/camera/mcf/McfParameters;->setDebugLogMask(II)V

    goto :goto_2a

    :goto_2c
    if-eq v7, v0, :cond_48

    const/16 v3, 0x11

    if-ne v3, v0, :cond_47

    goto :goto_2d

    :cond_47
    const/4 v9, 0x1

    goto :goto_2e

    :cond_48
    :goto_2d
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGAD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-boolean v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v7, :cond_49

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/16 v12, 0x2c

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_49
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v9, "SetDebugLogMaskStr"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v9, "\":{\"type\":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, ",\"mask\":["

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v7, "]}}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2e
    if-eq v9, v0, :cond_4b

    const/16 v3, 0x12

    if-ne v3, v0, :cond_4a

    goto :goto_30

    :cond_4a
    :goto_2f
    const/4 v7, 0x1

    goto :goto_31

    :cond_4b
    :goto_30
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGML_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v7, 0x2

    invoke-virtual {v2, v7, v3}, Lcom/motorola/camera/mcf/McfParameters;->setDebugLogMask(II)V

    goto :goto_2f

    :goto_31
    if-eq v7, v0, :cond_4c

    const/16 v3, 0x18

    if-eq v3, v0, :cond_4c

    const/16 v3, 0x2a

    if-ne v3, v0, :cond_5a

    :cond_4c
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_4d

    const/4 v3, 0x1

    goto :goto_32

    :cond_4d
    const/4 v3, 0x0

    :goto_32
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVSupportedByCurrentMode()Z

    move-result v7

    if-eqz v7, :cond_4e

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v7

    :goto_33
    const/4 v9, 0x0

    goto :goto_36

    :cond_4e
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNightMode()Z

    move-result v7

    if-eqz v7, :cond_51

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_50

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->MCF_SP_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4f

    goto :goto_34

    :cond_4f
    const/4 v7, 0x0

    goto :goto_35

    :cond_50
    :goto_34
    const/4 v7, 0x1

    :goto_35
    move v9, v7

    const/4 v7, 0x0

    goto :goto_36

    :cond_51
    const/4 v7, 0x0

    goto :goto_33

    :goto_36
    if-nez v7, :cond_53

    if-eqz v9, :cond_52

    goto :goto_37

    :cond_52
    const/4 v9, 0x2

    goto :goto_38

    :cond_53
    :goto_37
    const/4 v9, 0x3

    :goto_38
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v10

    if-nez v10, :cond_55

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperPortraitMode()Z

    move-result v10

    if-eqz v10, :cond_54

    goto :goto_39

    :cond_54
    const/4 v10, 0x0

    goto :goto_3a

    :cond_55
    :goto_39
    const/4 v10, 0x1

    :goto_3a
    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v11

    iget-object v11, v11, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_56

    const/4 v11, 0x1

    goto :goto_3b

    :cond_56
    const/4 v11, 0x0

    :goto_3b
    if-eqz v10, :cond_57

    const/4 v3, 0x3

    goto :goto_3c

    :cond_57
    if-eqz v3, :cond_58

    const/4 v3, 0x1

    goto :goto_3c

    :cond_58
    const/4 v3, 0x2

    :goto_3c
    iget-boolean v10, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v10, :cond_59

    iget-object v10, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/16 v12, 0x2c

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_59
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    iget-object v10, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v12, "{\"SuperNightMode\":{"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\"mode\":\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\","

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "\"autoNV\":"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\"autoHDR\":"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\"nvMode\":\""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5a
    const/16 v1, 0x23

    if-ne v1, v0, :cond_5c

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SP_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5b

    const/4 v1, 0x3

    goto :goto_3d

    :cond_5b
    const/4 v1, 0x2

    :goto_3d
    const-string v3, "SuperPortraitMode"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    move-object/from16 v1, p0

    iget-boolean v1, v1, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    const/4 v7, 0x1

    if-eq v7, v0, :cond_5d

    const/16 v3, 0x1d

    if-ne v3, v0, :cond_60

    :cond_5d
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5e

    goto :goto_3e

    :cond_5e
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MLRN_TRAINING:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v3, v7}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    if-eqz v3, :cond_60

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-boolean v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v7, :cond_5f

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/16 v12, 0x2c

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5f
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    iget-object v7, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v7, "GroundTruths"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\":\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_60
    :goto_3e
    const/16 v9, 0x27

    const/4 v7, 0x1

    if-eq v7, v0, :cond_62

    const/16 v3, 0x1f

    if-ne v3, v0, :cond_61

    goto :goto_40

    :cond_61
    :goto_3f
    const/4 v7, 0x1

    goto :goto_43

    :cond_62
    :goto_40
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfAutoCaptureCapable(Lcom/motorola/camera/settings/SettingsManager$Key;Z)Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_63

    const/4 v3, 0x2

    :goto_41
    const/4 v7, 0x1

    goto :goto_42

    :cond_63
    const/4 v3, 0x3

    goto :goto_41

    :goto_42
    invoke-virtual {v2, v7, v3}, Lcom/motorola/camera/mcf/McfParameters;->setAutoCapture(II)V

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMlModelSmileDetectionEnabledOnMcfConfig(Z)Z

    move-result v3

    const-string v4, "MlSmileDetectionMode"

    if-eqz v3, :cond_64

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v3

    if-eq v3, v9, :cond_64

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v3

    if-eq v3, v5, :cond_64

    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :cond_64
    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :goto_43
    if-eq v7, v0, :cond_66

    const/16 v3, 0x20

    if-ne v3, v0, :cond_65

    goto :goto_44

    :cond_65
    const/4 v7, 0x1

    const/4 v12, 0x2

    goto :goto_46

    :cond_66
    :goto_44
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoCaptureCapable(Lcom/motorola/camera/settings/SettingsManager$Key;Z)Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v7, 0x1

    if-ne v7, v3, :cond_67

    const/4 v3, 0x3

    const/4 v12, 0x2

    goto :goto_45

    :cond_67
    const/4 v12, 0x2

    if-ne v12, v3, :cond_68

    move v3, v7

    goto :goto_45

    :cond_68
    move v3, v12

    :goto_45
    invoke-virtual {v2, v12, v3}, Lcom/motorola/camera/mcf/McfParameters;->setAutoCapture(II)V

    :goto_46
    if-eq v7, v0, :cond_69

    const/16 v3, 0x21

    if-ne v3, v0, :cond_6d

    :cond_69
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_COMPOSITION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_6a

    goto/16 :goto_48

    :cond_6a
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_COMPOSITION_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v4, v5}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    if-eqz v4, :cond_6d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitMode()Z

    move-result v4

    if-nez v4, :cond_6d

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v7, 0x1

    if-ne v7, v3, :cond_6b

    const/4 v3, 0x3

    goto :goto_47

    :cond_6b
    move v3, v12

    :goto_47
    iget-boolean v4, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v4, :cond_6c

    iget-object v4, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6c
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    const/16 v4, 0x1d

    invoke-static {v4}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v4

    iget-object v5, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v6, "{\"SetAlgorithmMode\":{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\"algorithmCapId\":"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\"mode\":\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6d
    :goto_48
    const/16 v10, 0x22

    const/4 v7, 0x1

    if-eq v7, v0, :cond_6f

    if-eq v10, v0, :cond_6f

    if-ne v9, v0, :cond_6e

    goto :goto_4a

    :cond_6e
    :goto_49
    const/4 v7, 0x1

    goto/16 :goto_4e

    :cond_6f
    :goto_4a
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupportedByCurrentMode(Z)Z

    move-result v3

    if-eqz v3, :cond_70

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_70

    const/4 v3, 0x1

    goto :goto_4b

    :cond_70
    const/4 v3, 0x0

    :goto_4b
    if-eqz v3, :cond_71

    const/4 v4, 0x3

    goto :goto_4c

    :cond_71
    move v4, v12

    :goto_4c
    const-string v5, "AISceneMode"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_73

    :cond_72
    const/4 v4, 0x0

    goto :goto_4d

    :cond_73
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v4, v5}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    if-eqz v4, :cond_72

    const/4 v4, 0x1

    :goto_4d
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    if-eqz v3, :cond_6e

    sget-object v3, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v3, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupported(Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-static {v3, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_AI_SCENE_DETECT_CAPABILITY:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v3, v4}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6e

    invoke-static {}, Lcom/motorola/camera/arcsoft/ArcsoftLocationUtil;->getLocation()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_74

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lcom/motorola/camera/arcsoft/ArcsoftSolarTimeCalculator;->calculateSolarEventTime(Landroid/location/Location;Z)D

    move-result-wide v4

    const/4 v7, 0x1

    invoke-static {v3, v7}, Lcom/motorola/camera/arcsoft/ArcsoftSolarTimeCalculator;->calculateSolarEventTime(Landroid/location/Location;Z)D

    move-result-wide v13

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v6, v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v8, 0xc

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v11, v3

    const-wide/high16 v17, 0x404e000000000000L    # 60.0

    div-double v11, v11, v17

    add-double v7, v11, v6

    move-wide v3, v4

    move-wide v5, v13

    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/mcf/McfParameters;->setSolarEventsTimes(DDD)V

    goto/16 :goto_49

    :cond_74
    const-string v3, "McfSettingManager"

    const-string v4, "Unable to set Solar events times, no location found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    :goto_4e
    if-eq v7, v0, :cond_76

    const/16 v3, 0x2b

    if-ne v0, v3, :cond_75

    goto :goto_50

    :cond_75
    :goto_4f
    const/4 v7, 0x1

    goto :goto_51

    :cond_76
    :goto_50
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "SetAIScene"

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    :goto_51
    if-eq v7, v0, :cond_78

    const/16 v3, 0x24

    if-ne v3, v0, :cond_77

    goto :goto_53

    :cond_77
    :goto_52
    const/4 v7, 0x1

    goto :goto_54

    :cond_78
    :goto_53
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "AeCompensation"

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(ILjava/lang/String;)V

    goto :goto_52

    :goto_54
    if-eq v7, v0, :cond_7a

    const/16 v3, 0x26

    if-ne v3, v0, :cond_79

    goto :goto_56

    :cond_79
    :goto_55
    const/4 v7, 0x1

    goto :goto_57

    :cond_7a
    :goto_56
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMeisheFilterName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v4, :cond_7b

    iget-object v4, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7b
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    iget-object v4, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setMeisheEffectFileName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\":\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    :goto_57
    if-eq v7, v0, :cond_7d

    if-ne v9, v0, :cond_7c

    goto :goto_59

    :cond_7c
    :goto_58
    const/4 v7, 0x1

    goto :goto_5b

    :cond_7d
    :goto_59
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMeisheEffectsModeKey()Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7e

    const/4 v3, 0x3

    goto :goto_5a

    :cond_7e
    const/4 v3, 0x2

    :goto_5a
    const-string/jumbo v4, "setMeisheEffectMode"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    :goto_5b
    if-eq v7, v0, :cond_80

    const/16 v3, 0x25

    if-ne v3, v0, :cond_7f

    goto :goto_5d

    :cond_7f
    :goto_5c
    const/4 v7, 0x1

    goto :goto_5f

    :cond_80
    :goto_5d
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result v3

    if-eqz v3, :cond_81

    const/4 v3, 0x3

    goto :goto_5e

    :cond_81
    const/4 v3, 0x2

    :goto_5e
    const-string v4, "DisplayFlashStatus"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    :goto_5f
    if-eq v7, v0, :cond_83

    const/16 v3, 0x29

    if-eq v3, v0, :cond_83

    const/4 v3, 0x4

    if-eq v3, v0, :cond_83

    if-eq v9, v0, :cond_83

    const/4 v3, 0x5

    if-ne v3, v0, :cond_82

    goto :goto_61

    :cond_82
    :goto_60
    const/4 v7, 0x1

    goto :goto_63

    :cond_83
    :goto_61
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyEffectNoticeable()Z

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMeisheEffectsModeKey()Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_TETRAS_PORTRAIT_REPAIR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_84

    if-nez v3, :cond_84

    if-nez v4, :cond_84

    const/4 v3, 0x3

    goto :goto_62

    :cond_84
    const/4 v3, 0x2

    :goto_62
    invoke-virtual {v2, v3}, Lcom/motorola/camera/mcf/McfParameters;->setTetrasPRMode(I)V

    goto :goto_60

    :goto_63
    if-eq v7, v0, :cond_86

    const/16 v12, 0x2c

    if-eq v12, v0, :cond_86

    if-eq v10, v0, :cond_86

    if-ne v9, v0, :cond_85

    goto :goto_65

    :cond_85
    :goto_64
    const/4 v7, 0x1

    goto :goto_68

    :cond_86
    :goto_65
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_BST_DSLR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_87

    const/4 v3, 0x3

    goto :goto_66

    :cond_87
    const/4 v3, 0x2

    :goto_66
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupportedByCurrentMode(Z)Z

    move-result v4

    if-eqz v4, :cond_88

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_88

    const/4 v4, 0x3

    if-ne v3, v4, :cond_88

    move v9, v4

    goto :goto_67

    :cond_88
    const/4 v9, 0x2

    :goto_67
    invoke-virtual {v2, v9}, Lcom/motorola/camera/mcf/McfParameters;->setBSTDSLRMode(I)V

    goto :goto_64

    :goto_68
    if-ne v7, v0, :cond_89

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPostProcSupported()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/mcf/McfParameters;->setIspHidlSupported(Z)V

    :cond_89
    if-eq v7, v0, :cond_8b

    const/16 v3, 0x2f

    if-ne v3, v0, :cond_8a

    goto :goto_6a

    :cond_8a
    :goto_69
    const/4 v7, 0x1

    goto :goto_6b

    :cond_8b
    :goto_6a
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AI_GROUP_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/mcf/McfParameters;->setAiGroupPhotoMode(Z)V

    goto :goto_69

    :goto_6b
    if-eq v7, v0, :cond_8c

    const/16 v3, 0x31

    if-ne v3, v0, :cond_8f

    :cond_8c
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8e

    :cond_8d
    const/4 v11, 0x0

    goto :goto_6c

    :cond_8e
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->MCF_HW_FLICKER_DETECT_SUPPORT:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v1}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_8d

    move v11, v7

    :goto_6c
    invoke-virtual {v2, v11}, Lcom/motorola/camera/mcf/McfParameters;->setHwFlickerDetectMode(Z)V

    :cond_8f
    invoke-static {v2}, Lcom/google/zxing/Result;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    :cond_90
    :goto_6d
    return-void
.end method

.method public final setEnable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mEnable:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mEnable:Z

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_SMOOTH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_EYE_ENLARGE_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_NOSE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_PIXEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MINIATURE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MINIATURE_BOKEH_PARAMS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK0:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK1:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK2:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGAD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGML_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO_BUFFER_DURATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SP_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AIR_GESTURE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_COMPOSITION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_PHOTO_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_VIDEO_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_TETRAS_PORTRAIT_REPAIR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_BST_DSLR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_HW_FLICLER_DETECT_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void

    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_SMOOTH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_EYE_ENLARGE_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_NOSE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_PIXEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MINIATURE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MINIATURE_BOKEH_PARAMS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK0:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK1:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK2:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGAD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGML_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO_BUFFER_DURATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SP_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AIR_GESTURE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_COMPOSITION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_PHOTO_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_VIDEO_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_TETRAS_PORTRAIT_REPAIR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_BST_DSLR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_HW_FLICLER_DETECT_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    iget-object v1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v0, :cond_5

    sget-object p0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, p0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    if-eqz p0, :cond_2

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SP_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    if-eqz p0, :cond_a

    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :cond_4
    if-eqz v0, :cond_a

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->setEnable(Z)V

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/16 v2, 0x18

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->setEnable(Z)V

    return-void

    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/zxing/Result;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->TORCH_CONTROL:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mTorchControlListener:Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :cond_8
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mMcfStateListener:Lcom/motorola/camera/mcfmanagers/McfSettingManager$1;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    return-void

    :cond_9
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->setEnable(Z)V

    :cond_a
    return-void
.end method
