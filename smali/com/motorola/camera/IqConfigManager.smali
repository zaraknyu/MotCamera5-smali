.class public final Lcom/motorola/camera/IqConfigManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"


# static fields
.field public static final CAMERA_FACING_MAPPING:Lcom/motorola/camera/IqConfigManager$1;

.field public static final mCameraTypeSets:Ljava/util/HashSet;

.field public static final mFeatureSeparatorChar:Ljava/lang/Character;

.field public static final mFeatureStateJoinChar:Ljava/lang/Character;

.field public static mIqTuningLuxStdStore:Lcom/motorola/camera/ui/widgets/gl/Matrices;

.field public static sInstance:Lcom/motorola/camera/IqConfigManager;


# instance fields
.field public final mAdvancedSceneOverrides:Ljava/util/HashMap;

.field public final mAutoSlowCapture:Ljava/util/HashMap;

.field public final mCaliValidations:Ljava/util/ArrayList;

.field public final mCameraTypeSceneOverrides:Ljava/util/HashMap;

.field public final mEarlyShutter:Ljava/util/HashMap;

.field public final mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

.field public final mEnvironmentInfoMutex:Ljava/lang/Object;

.field public final mExposureTableTracker:Lcom/motorola/camera/ui/GestureRecognizer;

.field public mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public mHasSceneOverrides:Z

.field public mLastExposureTime:F

.field public mLastIso:F

.field public mLastLux:F

.field public mLastLuxIdx:F

.field public final mLpStarLuxForTeleSettings:Ljava/util/ArrayList;

.field public final mLpStarLuxSettings:Ljava/util/ArrayList;

.field public mMfnrShutterDelayEnable:Z

.field public final mMtkMfnrSettings:Ljava/util/ArrayList;

.field public final mQcMfnrSettings:Ljava/util/HashMap;

.field public final mSceneOverrides:Ljava/util/HashMap;

.field public final mSceneOverridesByHdrFeatureSet:Ljava/util/HashMap;

.field public final mStaticExpScheduleHints:Ljava/util/ArrayList;

.field public final mTimeEstimates:Ljava/util/ArrayList;

.field public final mUhdrSettingsAdvanced:Ljava/util/HashMap;

.field public final mZslSettings:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSets:Ljava/util/HashSet;

    new-instance v0, Lcom/motorola/camera/IqConfigManager$1;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FRONT_FACING"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BACK_FACING"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/motorola/camera/IqConfigManager;->CAMERA_FACING_MAPPING:Lcom/motorola/camera/IqConfigManager$1;

    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/IqConfigManager;->mFeatureSeparatorChar:Ljava/lang/Character;

    const/16 v0, 0x5f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/IqConfigManager;->mFeatureStateJoinChar:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mSceneOverridesByHdrFeatureSet:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mMtkMfnrSettings:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mLpStarLuxSettings:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mLpStarLuxForTeleSettings:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mZslSettings:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mUhdrSettingsAdvanced:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mStaticExpScheduleHints:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mAutoSlowCapture:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mTimeEstimates:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mCaliValidations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mEarlyShutter:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mEnvironmentInfoMutex:Ljava/lang/Object;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/motorola/camera/IqConfigManager;->mLastLux:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/IqConfigManager;->mHasSceneOverrides:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/IqConfigManager;->mMfnrShutterDelayEnable:Z

    new-instance v0, Lcom/motorola/camera/ui/GestureRecognizer;

    invoke-direct {v0}, Lcom/motorola/camera/ui/GestureRecognizer;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mExposureTableTracker:Lcom/motorola/camera/ui/GestureRecognizer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static buildSceneOverrideActiveFeaturesKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "nv_auto_on"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p0, :cond_2

    const-string p0, "flash_on"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "beauty_on"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoOn()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "active_photo_on"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object p0, Lcom/motorola/camera/IqConfigManager;->mFeatureSeparatorChar:Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->orderHdrFeatureSetString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFinalSettingAccordingToCamTypeHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object p0

    return-object p0
.end method

.method public static getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;
    .locals 6

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    move v3, v4

    :cond_1
    const-string v2, "normal_overrides"

    const/4 v5, 0x0

    if-eqz v0, :cond_b

    if-eq v0, v4, :cond_a

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "hdr_auto_on_beauty_on"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_2

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    const-string p0, "hdr_auto_on_nv_auto_on_flash_auto_on"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_2

    :cond_3
    if-eqz v3, :cond_4

    const-string p0, "hdr_auto_on_nv_auto_on"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_2

    :cond_4
    const-string p0, "hdr_auto_on"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    :cond_6
    if-eqz v5, :cond_7

    :goto_1
    move-object p0, v5

    goto/16 :goto_2

    :cond_7
    if-eqz v3, :cond_8

    if-eqz v1, :cond_8

    const-string p0, "hdr_auto_off_nv_auto_on_flash_auto_on"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_2

    :cond_8
    if-eqz v3, :cond_9

    const-string p0, "hdr_auto_off_nv_auto_on"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_2

    :cond_9
    const-string p0, "hdr_auto_off"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto :goto_2

    :cond_a
    const-string p0, "hdr_on"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    :cond_c
    if-eqz v5, :cond_d

    goto :goto_1

    :cond_d
    if-eqz v3, :cond_e

    if-eqz v1, :cond_e

    const-string p0, "hdr_off_nv_auto_on_flash_auto_on"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto :goto_2

    :cond_e
    if-eqz v3, :cond_f

    const-string p0, "hdr_off_nv_auto_on"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto :goto_2

    :cond_f
    const-string p0, "hdr_off"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    :goto_2
    if-nez p0, :cond_10

    const-string v0, "hdr_default"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    :cond_10
    return-object p0
.end method

.method public static getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;
    .locals 4

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "hdr_auto_on"

    goto :goto_0

    :cond_0
    const-string p0, "hdr_auto_off"

    goto :goto_0

    :cond_1
    const-string p0, "hdr_on"

    goto :goto_0

    :cond_2
    const-string p0, "hdr_off"

    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->buildSceneOverrideActiveFeaturesKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hdr_default"

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->buildSceneOverrideActiveFeaturesKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    return-object p0

    :cond_3
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    return-object p0

    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    return-object p0

    :cond_5
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/camera/IqConfigManager;
    .locals 6

    const-class v0, Lcom/motorola/camera/IqConfigManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/IqConfigManager;->sInstance:Lcom/motorola/camera/IqConfigManager;

    if-nez v1, :cond_1

    new-instance v1, Lcom/motorola/camera/IqConfigManager;

    invoke-direct {v1}, Lcom/motorola/camera/IqConfigManager;-><init>()V

    sput-object v1, Lcom/motorola/camera/IqConfigManager;->sInstance:Lcom/motorola/camera/IqConfigManager;

    invoke-static {}, Lcom/motorola/camera/settings/CameraType;->values()[Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    sget-object v5, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSets:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSets:Ljava/util/HashSet;

    const-string v2, "default_cam_type"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v1, Lcom/motorola/camera/IqConfigManager;->sInstance:Lcom/motorola/camera/IqConfigManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getIqJsonOverrideScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 35

    move-object/from16 v0, p0

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v4, "filter_effect"

    const-string v5, "default_mode"

    const-string v6, "default_cam_type"

    const-string/jumbo v8, "spot_color"

    const-string/jumbo v9, "ultra_resolution_hw_remosaic"

    const-string/jumbo v10, "qcfa_high_resolution"

    const-string v11, "motion_capture"

    const-string v12, "ai_group_photo"

    const/16 v16, 0x12

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/16 v19, 0xc

    const-string v2, "flash"

    const/16 v20, 0x0

    const-string v7, "auto_super_night"

    const/16 v21, 0x10

    const-string v13, "bokeh"

    const/16 v22, 0x23

    const-string/jumbo v14, "single_bokeh"

    const-string/jumbo v15, "single_bokeh_with_nv"

    move/from16 v23, v1

    const-string v1, "auto_ultra_resolution"

    move-object/from16 v24, v6

    const-string/jumbo v6, "ultra_resolution"

    move-object/from16 v25, v5

    const-string v5, "cutout"

    move-object/from16 v26, v12

    const-string/jumbo v12, "super_night"

    move-object/from16 v27, v11

    const-string/jumbo v11, "super_portrait"

    move-object/from16 v28, v11

    const-string/jumbo v11, "tilt-shift"

    if-nez v23, :cond_1d

    move-object/from16 v23, v11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSATFallbackSupported()Z

    move-result v29

    if-eqz v29, :cond_0

    move-object/from16 v29, v12

    sget-object v12, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-ne v11, v12, :cond_1

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v12

    iget-object v12, v12, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v11

    iget-object v11, v11, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v11, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;->activePhysicalCameraId:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraType(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v11

    goto :goto_0

    :cond_0
    move-object/from16 v29, v12

    :cond_1
    :goto_0
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v12

    iget-object v12, v12, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v3, v24

    :cond_2
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v11

    iget-object v11, v11, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-nez v3, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static/range {v20 .. v20}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsEnabled(Z)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    :cond_4
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_1

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_1

    :cond_7
    invoke-static/range {v17 .. v17}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_1

    :cond_8
    invoke-static/range {v19 .. v19}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_1

    :cond_9
    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_1

    :cond_c
    invoke-static/range {v22 .. v22}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/QcfaShotGuardRunnable;->isAnalogGainThresholdMet(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_1

    :cond_e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_1

    :cond_f
    invoke-static/range {v21 .. v21}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_1

    :cond_11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v1

    if-eqz v1, :cond_13

    move-object/from16 v11, v29

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v2, v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v2, v4, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDedicatedRawNvUnavailable()Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_2

    :cond_12
    move-object/from16 v18, v1

    goto/16 :goto_1

    :cond_13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_14

    move-object/from16 v12, v28

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v2, v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v2, v4, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDedicatedRawNvUnavailable()Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_2

    :cond_14
    invoke-static/range {v20 .. v20}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto :goto_1

    :cond_15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result v1

    if-eqz v1, :cond_16

    move-object/from16 v1, v27

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto :goto_1

    :cond_16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTiltShiftMode()Z

    move-result v1

    if-eqz v1, :cond_18

    move-object/from16 v1, v23

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_1

    :cond_17
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto :goto_1

    :cond_18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAiGroupPhotoMode()Z

    move-result v1

    if-eqz v1, :cond_19

    move-object/from16 v1, v26

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    :cond_19
    :goto_1
    move-object/from16 v1, v25

    if-nez v18, :cond_1a

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v0, v2}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    :cond_1a
    if-nez v18, :cond_1b

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_1b

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    :cond_1b
    move-object/from16 v1, v18

    if-nez v1, :cond_1c

    :goto_2
    return-object v0

    :cond_1c
    iget-object v0, v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-object v0

    :cond_1d
    move-object/from16 v34, v11

    move-object v11, v12

    move-object/from16 v30, v24

    move-object/from16 v31, v25

    move-object/from16 v33, v26

    move-object/from16 v32, v27

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v12

    iget-object v12, v12, Lcom/motorola/camera/IqConfigManager;->mSceneOverridesByHdrFeatureSet:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSATFallbackSupported()Z

    move-result v23

    move-object/from16 v29, v11

    if-eqz v23, :cond_1e

    sget-object v11, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-ne v12, v11, :cond_1e

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v11

    iget-object v11, v11, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v11, :cond_1e

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v11

    iget-object v11, v11, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v11, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;->activePhysicalCameraId:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraType(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v12

    :cond_1e
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v11

    iget-object v11, v11, Lcom/motorola/camera/IqConfigManager;->mSceneOverridesByHdrFeatureSet:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1f

    move-object/from16 v3, v30

    :cond_1f
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v11

    iget-object v11, v11, Lcom/motorola/camera/IqConfigManager;->mSceneOverridesByHdrFeatureSet:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-nez v3, :cond_20

    goto/16 :goto_5

    :cond_20
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-static/range {v20 .. v20}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsEnabled(Z)Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_23

    :cond_21
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_4

    :cond_22
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    if-nez v18, :cond_36

    goto/16 :goto_4

    :cond_23
    if-eqz p1, :cond_24

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_3

    :cond_24
    invoke-static/range {v17 .. v17}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_3

    :cond_25
    invoke-static/range {v19 .. v19}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_3

    :cond_26
    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_3

    :cond_27
    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_3

    :cond_28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_3

    :cond_29
    invoke-static/range {v22 .. v22}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v1, :cond_2a

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/QcfaShotGuardRunnable;->isAnalogGainThresholdMet(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_3

    :cond_2a
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_3

    :cond_2b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_3

    :cond_2c
    invoke-static/range {v21 .. v21}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto/16 :goto_4

    :cond_2d
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto/16 :goto_3

    :cond_2e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v1

    if-eqz v1, :cond_30

    move-object/from16 v11, v29

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v2, v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v2, v4, :cond_2f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDedicatedRawNvUnavailable()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto/16 :goto_4

    :cond_2f
    move-object/from16 v18, v1

    goto/16 :goto_3

    :cond_30
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_31

    move-object/from16 v12, v28

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v2, v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v2, v4, :cond_2f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDedicatedRawNvUnavailable()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto/16 :goto_4

    :cond_31
    invoke-static/range {v20 .. v20}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto :goto_3

    :cond_32
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result v1

    if-eqz v1, :cond_33

    move-object/from16 v1, v32

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto :goto_3

    :cond_33
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTiltShiftMode()Z

    move-result v1

    if-eqz v1, :cond_35

    move-object/from16 v4, v34

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_3

    :cond_34
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    goto :goto_3

    :cond_35
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAiGroupPhotoMode()Z

    move-result v1

    if-eqz v1, :cond_36

    move-object/from16 v1, v33

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    :cond_36
    :goto_3
    move-object/from16 v1, v31

    if-nez v18, :cond_37

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v0, v2}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    :cond_37
    if-nez v18, :cond_38

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mSceneOverridesByHdrFeatureSet:Ljava/util/HashMap;

    move-object/from16 v3, v30

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_38

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHdrFeatureSet(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v18

    :cond_38
    move-object/from16 v1, v18

    if-nez v1, :cond_39

    :goto_4
    return-object v0

    :cond_39
    iget-object v0, v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-object v0

    :cond_3a
    move-object/from16 v12, v28

    move-object/from16 v4, v34

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/motorola/camera/IqConfigManager;->mHasSceneOverrides:Z

    if-nez v3, :cond_3b

    :goto_5
    return-object v0

    :cond_3b
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    goto/16 :goto_7

    :cond_3c
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_6

    :cond_3d
    if-eqz p1, :cond_3e

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_6

    :cond_3e
    invoke-static/range {v17 .. v17}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_6

    :cond_3f
    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_6

    :cond_40
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_6

    :cond_41
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result v2

    const-string v3, "IqConfigManager"

    if-eqz v2, :cond_44

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/HashMap;

    :cond_42
    if-nez v4, :cond_43

    const-string v1, "no valid auto ultra resolution scene override"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_43
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_6

    :cond_44
    invoke-static/range {v22 .. v22}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/HashMap;

    :cond_45
    if-nez v2, :cond_46

    const-string v1, "no valid ultra resolution scene override"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_46
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_6

    :cond_47
    invoke-static/range {v21 .. v21}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    goto/16 :goto_7

    :cond_48
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_6

    :cond_49
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    if-eqz v1, :cond_4a

    iget-object v2, v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v2, v3, :cond_4a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDedicatedRawNvUnavailable()Z

    move-result v2

    if-eqz v2, :cond_4a

    goto/16 :goto_7

    :cond_4a
    move-object/from16 v18, v1

    :cond_4b
    if-nez v18, :cond_4c

    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToCamTypeHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v1

    goto/16 :goto_6

    :cond_4c
    move-object/from16 v1, v18

    goto :goto_6

    :cond_4d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    if-eqz v1, :cond_4e

    iget-object v2, v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v2, v3, :cond_4e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDedicatedRawNvUnavailable()Z

    move-result v2

    if-eqz v2, :cond_4e

    goto :goto_7

    :cond_4e
    move-object/from16 v18, v1

    :cond_4f
    if-nez v18, :cond_4c

    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToCamTypeHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v1

    goto :goto_6

    :cond_50
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTiltShiftMode()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    goto :goto_7

    :cond_51
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto :goto_6

    :cond_52
    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToCamTypeHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_53

    :goto_7
    return-object v0

    :cond_53
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->frontCameraSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-object v0

    :cond_54
    iget-object v0, v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-object v0
.end method

.method public static getLpStarIso(F)J
    .locals 10

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getLpStarLuxSettings(F)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;

    iget-wide v2, v1, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;->luxIdx:D

    iget-wide v4, v0, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;->luxIdx:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    iget p0, v1, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;->iso:I

    int-to-double v0, p0

    goto :goto_0

    :cond_0
    iget v1, v1, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;->iso:I

    int-to-double v6, v1

    iget v0, v0, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;->iso:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    float-to-double v8, p0

    sub-double/2addr v8, v2

    mul-double/2addr v8, v0

    sub-double/2addr v4, v2

    div-double/2addr v8, v4

    add-double v0, v8, v6

    :goto_0
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getLpStarLuxSettings(F)Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mLpStarLuxForTeleSettings:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mLpStarLuxSettings:Ljava/util/ArrayList;

    :goto_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;

    if-nez v2, :cond_1

    float-to-double v6, p0

    iget-wide v8, v5, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;->luxIdx:D

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_4

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_3

    float-to-double v6, p0

    iget-wide v8, v5, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;->luxIdx:D

    cmpl-double v4, v6, v8

    if-ltz v4, :cond_2

    :goto_2
    move-object v3, v5

    move-object v4, v3

    goto :goto_4

    :cond_2
    move-object v4, v5

    goto :goto_3

    :cond_3
    float-to-double v6, p0

    iget-wide v8, v5, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;->luxIdx:D

    cmpl-double v6, v6, v8

    if-lez v6, :cond_5

    :cond_4
    move-object v3, v5

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move-object v4, v5

    :cond_6
    :goto_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getLpStarShutter(F)J
    .locals 10

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getLpStarLuxSettings(F)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;

    iget-wide v2, v1, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;->luxIdx:D

    iget-wide v4, v0, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;->luxIdx:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    iget-wide v0, v1, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;->shutter:D

    goto :goto_0

    :cond_0
    iget-wide v6, v1, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;->shutter:D

    iget-wide v0, v0, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;->shutter:D

    sub-double/2addr v0, v6

    float-to-double v8, p0

    sub-double/2addr v8, v2

    mul-double/2addr v8, v0

    sub-double/2addr v4, v2

    div-double/2addr v8, v4

    add-double v0, v8, v6

    :goto_0
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public static getLuxStdForCaptureResult(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Float;
    .locals 3

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MASTER_SENSOR_NAME:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, v0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->isBackLogicalDepthCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->MAIN:Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->getPhysicalCameraType(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_IDX_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    sget-object v2, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Matrices;->getLuxStdForIdx(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    return-object p0
.end method

.method public static getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)I
    .locals 1

    .line 3
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_NUMBER_OF_FRAMES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_NUMBER_OF_FRAMES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getQcMfnrSettings(Z)Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    const-string v0, "flash"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    return-object p0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    return-object p0
.end method

.method public static getSettingFromList(FFLjava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;
    .locals 3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_1

    div-float/2addr v2, v0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/motorola/camera/utility/ZoomHelper;->getManualUwMappingUIZoomX(F)F

    move-result v2

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    invoke-virtual {v0, v2, p0, p1}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->fitsParameters(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;
    .locals 2

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/IqConfigManager;->mLastLux:F

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/IqConfigManager;->mLastIso:F

    invoke-static {v0, v1, p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromList(FFLjava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    return-object p0
.end method

.method public static getUhdrEnablingCheckByScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$UhdrSetting;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    const-string p2, "default_scene"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$UhdrSetting;

    :cond_1
    if-eqz p0, :cond_2

    iget-boolean p0, p0, Lcom/motorola/camera/IqConfigManager$UhdrSetting;->useUhdr:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "hdr"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_2

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "nv"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_3

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "flash"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsEnabled(Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "filter_effect"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "beauty"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoOn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "active_photo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {p0, v3, p1}, Lcom/motorola/camera/IqConfigManager;->getUhdrEnablingCheckByScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_6
    if-nez v2, :cond_7

    const-string v0, "default_feature"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "IqConfigManager"

    const-string v2, "UHDR: using default_feature section for UHDR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0, p1}, Lcom/motorola/camera/IqConfigManager;->getUhdrEnablingCheckByScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v2
.end method

.method public static isAutoSlowCapture(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Z
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mAutoSlowCapture:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;->scenes:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result p0

    if-nez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkMfnrCamera(Ljava/lang/String;)Z

    move-result p0

    const v2, 0x7fffffff

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager;->mMtkMfnrSettings:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;

    if-eqz p0, :cond_2

    iget v2, p0, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;->estimate:I

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrSettings(Z)Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-byte p1, p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->numberOfFrames:B

    iget-boolean p0, p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->mfnrBurstModeEnable:Z

    invoke-static {p1, p0}, Lcom/motorola/camera/IqConfigManager;->mfnrProcessTimeEstimates(IZ)I

    move-result v2

    :cond_2
    :goto_0
    iget p0, v0, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;->timeThreshold:I

    if-lt v2, p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public static isQcMfnrBurstEnabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_BURST_FPS_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static mfnrLowLightExposureHint()F
    .locals 5

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/IqConfigManager;->mEnvironmentInfoMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/IqConfigManager;->mExposureTableTracker:Lcom/motorola/camera/ui/GestureRecognizer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/GestureRecognizer;->supportsCharacteristicsExposureHints()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mExposureTableTracker:Lcom/motorola/camera/ui/GestureRecognizer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/GestureRecognizer;->getExpectedExposureTime()F

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/IqConfigManager;->mStaticExpScheduleHints:Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/IqConfigManager;->mLastLuxIdx:F

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/IqConfigManager;->mLastIso:F

    invoke-static {v3, v4, v2}, Lcom/motorola/camera/IqConfigManager;->getSettingFromList(FFLjava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;->codeOverride:Z

    if-nez v3, :cond_1

    iget v0, v2, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;->exposureTime:F

    monitor-exit v1

    return v0

    :cond_1
    iget v0, v0, Lcom/motorola/camera/IqConfigManager;->mLastExposureTime:F

    monitor-exit v1

    return v0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static mfnrProcessTimeEstimates(IZ)I
    .locals 6

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->mfnrLowLightExposureHint()F

    move-result v0

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mTimeEstimates:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates;->timeEstimateCoeff:Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;

    iget v2, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->maxPreviewExp:I

    iget v3, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->crSlope:F

    float-to-double v3, v3

    iget v5, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->crIntercept:F

    iget v1, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->defaultCRTime:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x50

    const-wide v3, 0x3ff3851eb851eb85L    # 1.22

    const/high16 v5, 0x430d0000    # 141.0f

    const/16 v1, 0x12c

    :goto_0
    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    float-to-double v1, v0

    mul-double/2addr v1, v3

    float-to-double v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    :cond_1
    add-int/lit8 v2, p0, -0x1

    float-to-int v0, v0

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mTimeEstimates:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/IqConfigManager$TimeEstimates;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager$TimeEstimates;->timeEstimateCoeff:Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;

    iget v1, v0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->mfnrProcessStaticTime:I

    iget v0, v0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->mfnrProcessPerFrameTime:I

    goto :goto_1

    :cond_2
    const/16 v1, 0xfa

    const/16 v0, 0x6e

    :goto_1
    mul-int/2addr p0, v0

    add-int/2addr p0, v1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    add-int/2addr v2, p0

    return v2
.end method

.method public static mfnrShutterThrottle(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)J
    .locals 3

    invoke-static {p0, p1}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)I

    move-result p0

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    iget-byte v2, v1, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->numberOfFrames:B

    if-ne p0, v2, :cond_1

    move-object v0, v1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_3
    iget p0, v0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->shuttleThrottleTime:I

    int-to-long p0, p0

    return-wide p0
.end method

.method public static slurpAutoSlowCapture(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-instance v3, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;-><init>(Lorg/json/JSONObject;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;->scenes:Ljava/util/ArrayList;

    :try_start_0
    const-string/jumbo v5, "scenes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v6, v1

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    iget-object v7, v3, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;->scenes:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_0
    const-string/jumbo v5, "time_estimate_threshold"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;->timeThreshold:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v5, "IqConfigManager"

    const-string v6, "Error parsing auto slow capture configuration: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static slurpCaliValidations(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/IqConfigManager$CaliValidation;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v4, "camera-type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    iput-object v4, v3, Lcom/motorola/camera/IqConfigManager$CaliValidation;->cameraType:Lcom/motorola/camera/settings/CameraType;

    const-string v4, "offset"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/motorola/camera/IqConfigManager$CaliValidation;->offset:I

    const-string v4, "expected_data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, v3, Lcom/motorola/camera/IqConfigManager$CaliValidation;->expectedData:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "IqConfigManager"

    const-string v5, "Error parsing cali_validation Setting: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static slurpExpScheduleHint(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput v4, v3, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minIso:F

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v3, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxIso:F

    const/4 v4, -0x1

    iput v4, v3, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->supportVstabPzsV2:I

    const-string v4, "lux_idx_range"

    invoke-virtual {v3, v4, v2}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->readJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_0
    const-string v4, "exposure_time"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v3, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;->exposureTime:F

    const-string v4, "code_override"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;->codeOverride:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "IqConfigManager"

    const-string v5, "Error parsing exposure schedule hints configuration: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static slurpJson(Lorg/json/JSONObject;)V
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "mfnr_shutter_delay_enable"

    const-string/jumbo v0, "scene_selection_overrides"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    sget-object v4, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSets:Ljava/util/HashSet;

    const-string v5, "IqConfigManager"

    if-eqz v3, :cond_3

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-static {v12}, Lcom/motorola/camera/IqConfigManager;->slurpScenes(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v8, v3, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-static {v7}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v8, v3, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/camera/IqConfigManager;->slurpScenes(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/motorola/camera/IqConfigManager;->mHasSceneOverrides:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v3, "Error parsing array of scene overrides: "

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    const-string/jumbo v0, "scene_selection_advanced_overrides"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :try_start_1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/IqConfigManager;->slurpScenes(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    goto :goto_6

    :cond_4
    move-object/from16 v17, v0

    invoke-virtual {v9, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_5
    move-object/from16 v17, v0

    iget-object v0, v3, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :cond_6
    move-object/from16 v17, v0

    :goto_7
    move-object/from16 v0, v17

    goto :goto_4

    :goto_8
    const-string v3, "No scene advanced overrides: "

    invoke-static {v5, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    const-string/jumbo v0, "scene_selection_overrides_by_hdr_feature_set"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :try_start_2
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const/4 v15, 0x0

    :goto_b
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v15, v6, :cond_9

    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    move-object/from16 v17, v0

    new-instance v0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;

    invoke-direct {v0, v6}, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;-><init>(Lorg/json/JSONObject;)V

    iget-object v6, v0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->mHdrFeatureSetStrList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    check-cast v6, Ljava/lang/String;

    move-object/from16 v18, v7

    iget-object v7, v0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->mSceneOverrideSettingList:Ljava/util/ArrayList;

    invoke-virtual {v14, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    goto :goto_c

    :cond_8
    move-object/from16 v18, v7

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v17

    goto :goto_b

    :cond_9
    move-object/from16 v17, v0

    move-object/from16 v18, v7

    invoke-virtual {v10, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object/from16 v7, v18

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_e

    :cond_a
    move-object/from16 v17, v0

    move-object/from16 v18, v7

    iget-object v0, v3, Lcom/motorola/camera/IqConfigManager;->mSceneOverridesByHdrFeatureSet:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_d

    :cond_b
    move-object/from16 v17, v0

    move-object/from16 v18, v7

    :goto_d
    move-object/from16 v0, v17

    move-object/from16 v7, v18

    goto/16 :goto_9

    :goto_e
    const-string v3, "No scene by hdr feature set overrides: "

    invoke-static {v5, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    const-string/jumbo v0, "qc_mfnr_settings"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    :try_start_3
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "exposure_schedule_lowlight"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v3, Lcom/motorola/camera/IqConfigManager;->mStaticExpScheduleHints:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/IqConfigManager;->slurpExpScheduleHint(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_10

    :cond_d
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v3, Lcom/motorola/camera/IqConfigManager;->mMfnrShutterDelayEnable:Z

    goto :goto_f

    :cond_e
    iget-object v8, v3, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/camera/IqConfigManager;->slurpMfnr(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_f

    :goto_10
    const-string v2, "Error parsing MFNR Setting array: "

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    const-string v0, "lp-star-exp-schedule"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    :try_start_4
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mLpStarLuxSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->slurpLpStarLuxSettings(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_11

    :catch_4
    move-exception v0

    const-string v2, "Error parsing LP STAR EXP SCHEDULE Setting array: "

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_11
    const-string v0, "lp-star-tele-exp-schedule"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    :try_start_5
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mLpStarLuxForTeleSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->slurpLpStarLuxSettings(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_12

    :catch_5
    move-exception v0

    const-string v2, "Error parsing LP STAR TELE EXP SCHEDULE Setting array: "

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_12
    const-string v0, "mtk_mfnr_settings"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    :try_start_6
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mMtkMfnrSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_13
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_12

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v8, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;

    invoke-direct {v8, v0}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;-><init>(Lorg/json/JSONObject;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_7

    :try_start_7
    const-string v9, "estimate"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v8, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;->estimate:I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_14

    :catch_6
    move-exception v0

    :try_start_8
    const-string v9, "Error parsing Mtk Mfnr Setting: "

    invoke-static {v5, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_12
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_15

    :catch_7
    move-exception v0

    const-string v2, "Error parsing MTK MFNR Setting array: "

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    :goto_15
    const-string/jumbo v0, "zsl_settings"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    :try_start_9
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/motorola/camera/IqConfigManager;->mZslSettings:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/IqConfigManager;->slurpZsl(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_16

    :catch_8
    move-exception v0

    const-string v2, "Error parsing ZSL Setting array: "

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    const-string/jumbo v0, "uhdr_settings_advanced"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :try_start_a
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    :goto_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-static {v11}, Lcom/motorola/camera/IqConfigManager;->slurpUhdrAdvanced(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :catch_9
    move-exception v0

    goto :goto_1b

    :cond_16
    iget-object v7, v2, Lcom/motorola/camera/IqConfigManager;->mUhdrSettingsAdvanced:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_17
    iget-object v0, v2, Lcom/motorola/camera/IqConfigManager;->mUhdrSettingsAdvanced:Ljava/util/HashMap;

    const-string v2, "default_cam_type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_18

    :goto_19
    const/4 v0, 0x0

    goto :goto_1a

    :cond_18
    const-string v2, "default_mode"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_19

    goto :goto_19

    :cond_19
    const-string v2, "default_feature"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_1a

    goto :goto_19

    :cond_1a
    const-string v2, "default_scene"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_1a
    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    new-instance v0, Lorg/json/JSONException;

    const-string/jumbo v2, "uhdr_settings_advanced doesn\'t have default implementation for cam type, mode, feature, and scene!"

    invoke-direct {v0, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_9

    :goto_1b
    const-string v2, "Error parsing UHDR Settings Advanced: "

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    :goto_1c
    const-string v0, "auto_slow_capture"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :try_start_b
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, v2, Lcom/motorola/camera/IqConfigManager;->mAutoSlowCapture:Ljava/util/HashMap;

    sget-object v7, Lcom/motorola/camera/IqConfigManager;->CAMERA_FACING_MAPPING:Lcom/motorola/camera/IqConfigManager$1;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/IqConfigManager;->slurpAutoSlowCapture(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_1d

    :catch_a
    move-exception v0

    const-string v2, "Error parsing auto slow capture array: "

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    const-string/jumbo v0, "time_estimates"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Error parsing Time Estimates Setting array: "

    if-eqz v2, :cond_1f

    :try_start_c
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mTimeEstimates:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_1e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1e

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/IqConfigManager$TimeEstimates;

    invoke-direct {v8, v7}, Lcom/motorola/camera/IqConfigManager$TimeEstimates;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_1e
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_1f

    :catch_b
    move-exception v0

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    :goto_1f
    const-string v0, "cali_validation"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    :try_start_d
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mCaliValidations:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->slurpCaliValidations(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_20

    :catch_c
    move-exception v0

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    :goto_20
    const-string v0, "early_shutter"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    :try_start_e
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/motorola/camera/IqConfigManager;->mEarlyShutter:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_22
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v10, v0, :cond_21

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v11, Lcom/motorola/camera/IqConfigManager$EarlyShutter;

    invoke-direct {v11, v0}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;-><init>(Lorg/json/JSONObject;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_e

    :try_start_f
    const-string/jumbo v12, "use_early_shutter"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v11, Lcom/motorola/camera/IqConfigManager$EarlyShutter;->useEarlyShutter:Z
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_23

    :catch_d
    move-exception v0

    :try_start_10
    const-string v12, "Error parsing Early Shutter Setting: "

    invoke-static {v5, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    :cond_21
    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_e

    goto :goto_21

    :catch_e
    move-exception v0

    const-string v2, "Error parsing Early shutter array: "

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjv;->createFromJson(Lorg/json/JSONObject;)Lcom/motorola/camera/ui/widgets/gl/Matrices;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    return-void
.end method

.method public static slurpLpStarLuxSettings(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v4, "lux_idx"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;->luxIdx:D

    const-string v4, "iso"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;->iso:I

    const-string/jumbo v4, "shutter"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/motorola/camera/IqConfigManager$LpStarLuxSetting;->shutter:D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "IqConfigManager"

    const-string v5, "Error parsing LpStarLuxIdx Configuration: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static slurpMfnr(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    invoke-direct {v3, v2}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v4, "number_of_frames"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->numberOfFrames:B

    const-string/jumbo v4, "shutter_throttle_time"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->shuttleThrottleTime:I

    const-string v4, "anchor_selection_mode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->valueOf$1(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->anchorSelectionMode:I

    const-string v4, "anchor_selection_algo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->valueOf(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->anchorSelectionAlgo:I

    const-string v4, "mfnr_burst_mode_enable"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->mfnrBurstModeEnable:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "IqConfigManager"

    const-string v5, "Error parsing Mfnr Setting: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static slurpScenes(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    invoke-direct {v3, v2}, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static slurpUhdrAdvanced(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_0

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v11, Lcom/motorola/camera/IqConfigManager$UhdrSetting;

    invoke-direct {v11, v10}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    const-string/jumbo v12, "use_uhdr"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v11, Lcom/motorola/camera/IqConfigManager$UhdrSetting;->useUhdr:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v10

    const-string v12, "IqConfigManager"

    const-string v13, "Error parsing UHDR Setting: "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static slurpZsl(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/IqConfigManager$ZslSetting;

    const-string v4, "front_camera_use_zsl"

    invoke-direct {v3, v2}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    const-string/jumbo v5, "use_zsl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/motorola/camera/IqConfigManager$ZslSetting;->useZsl:Z

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/motorola/camera/IqConfigManager$ZslSetting;->frontCameraUseZsl:Z

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    iput-boolean v5, v3, Lcom/motorola/camera/IqConfigManager$ZslSetting;->frontCameraUseZsl:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v4, "IqConfigManager"

    const-string v5, "Error parsing ZSL Setting: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    iget-object v1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v2, p0, Lcom/motorola/camera/IqConfigManager;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v1, p0, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
