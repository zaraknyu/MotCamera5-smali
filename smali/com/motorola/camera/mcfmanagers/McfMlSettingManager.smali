.class public final Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"


# instance fields
.field public mIsCameraInit:Z

.field public final mIsCliDisplay:Z

.field public mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

.field public final mSettingsListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public final mShowMlResults:Lcom/motorola/camera/PermissionCallback;


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/PermissionCallback;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/PermissionCallback;-><init>(IZ)V

    new-instance v1, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    iput-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mShowMlResults:Lcom/motorola/camera/PermissionCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCameraInit:Z

    new-instance v0, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    iput-boolean p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_CAMERA_OPEN:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_INIT:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_TEARDOWN:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final handleGestureAutoCapture()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    const-string v1, "McfMlSettingManager"

    if-nez v0, :cond_0

    const-string p0, "mMcfMlStateMachine is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_ML_MODEL_GESTURE_MV1:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v2, v3}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_6

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->GESTURE_MV1:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    return-void

    :cond_3
    :goto_0
    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->GESTURE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string p0, "GESTURE_AUTO_CAPTURE does not have any resources"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    filled-new-array {v1}, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    move-result-object v1

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v2, v3, v0}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->GESTURE_MV1:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    return-void

    :cond_6
    :goto_1
    const-string p0, "Mcf is not GestureMV1 capable"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final handleSceneDetection()V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    const-string v1, "McfMlSettingManager"

    if-nez v0, :cond_0

    const-string p0, "mMcfMlStateMachine is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v0, v3, v2}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    :cond_1
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v0

    new-array v2, v3, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SCENE_DETECTION_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    sget-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SCENE_DETECTION_TFLITE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    sget-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->MOT_SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    sget-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->MOT_SCENE_DETECTION_V2:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION_V2;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    aput-object v0, v2, v6

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    aput-object v5, v2, v6

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    aput-object v4, v2, v6

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    aput-object v3, v2, v6

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    return-void

    :cond_5
    const-string p0, "SCENE_DETECTION does not have any resources"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :cond_7
    return-void
.end method

.method public final handleSmileDetection()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-nez v0, :cond_0

    const-string p0, "McfMlSettingManager"

    const-string v0, "mMcfMlStateMachine is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMlModelSmileDetectionEnabledOnMcfConfig(Z)Z

    move-result v2

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    invoke-direct {v2}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;-><init>()V

    iput-object v0, v2, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;->feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const v3, 0x7f12011d

    iput v3, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error - modelState: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in checkModelStateUpdateForMotSmileDetect was not associated to any of the available switch cases."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ModelUpdateDialogHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const p0, 0x7f12015e

    iput p0, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOT_SMILE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p0, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x7f120174

    iput p0, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p0, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x7f12015b

    iput p0, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :cond_4
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOT_SMILE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    filled-new-array {v0}, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v1, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    return-void
.end method

.method public final onAllModelsLoaded()V
    .locals 7

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->isStarted(Z)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCameraInit:Z

    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleGestureAutoCapture()V

    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleSceneDetection()V

    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleSmileDetection()V

    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    filled-new-array {v2}, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v4, Lcom/motorola/camera/shared/ai/model/McfMlModel;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v3, v4, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result v2

    const-string v3, "McfMlSettingManager"

    iget-boolean v4, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    if-eqz v2, :cond_4

    if-nez v4, :cond_1

    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v2, v0, v5}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v5, Lcom/motorola/camera/shared/ai/model/McfMlModel;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :cond_2
    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v2, "DOC_SCAN does not have any resources"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->DOC_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    filled-new-array {v2}, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    move-result-object v2

    iget-object v5, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v6, Lcom/motorola/camera/shared/ai/model/McfMlModel;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v5, v6, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v5, Lcom/motorola/camera/shared/ai/model/McfMlModel;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v4, :cond_5

    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v2, v0, v4}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    :cond_5
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v1, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p0, "SLIDE_SCAN does not have any resources"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SLIDE_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    return-void

    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :cond_9
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    iget-object v3, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mShowMlResults:Lcom/motorola/camera/PermissionCallback;

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-nez p1, :cond_0

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    iput-object p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    :cond_0
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object p1

    const-string v0, "McfMlSettingManager"

    if-nez p1, :cond_1

    const-string p0, "getUseCase returned null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Mcf not supported by current mode:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCameraInit:Z

    sget-object p1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->listener:Ljava/lang/ref/WeakReference;

    sget-boolean p1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->allModelsLoaded:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->onAllModelsLoaded()V

    :cond_3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    const/4 p0, 0x1

    invoke-virtual {v3, v1, p0}, Lcom/motorola/camera/PermissionCallback;->registerMcfMlStateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    return-void

    :cond_4
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, p0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-virtual {v3, v1, v0}, Lcom/motorola/camera/PermissionCallback;->registerMcfMlStateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    return-void

    :cond_5
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-virtual {v3, v1, v0}, Lcom/motorola/camera/PermissionCallback;->registerMcfMlStateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    :cond_6
    return-void
.end method
