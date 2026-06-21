.class public abstract Lcom/motorola/camera/ui/ModelUpdateDialogHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z
    .locals 13

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->GESTURE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const/16 v1, 0x18

    const/4 v2, 0x1

    const v3, 0x7f12015b

    const v4, 0x7f120174

    const-string v5, "Error - modelState: "

    const/4 v6, 0x4

    const/4 v7, 0x3

    const v8, 0x7f12011c

    const-string v9, "ModelUpdateDialogHelper"

    const/4 v10, 0x0

    if-ne p0, v0, :cond_4

    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->createGooglePlayStoreIntent()Landroid/content/Intent;

    move-result-object v11

    sget-boolean v12, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v12

    if-nez v12, :cond_14

    invoke-static {p2, v11}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->isNotSupportedIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v12, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    invoke-direct {v12}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;-><init>()V

    iput-object v0, v12, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;->feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    iput v8, v12, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v7, :cond_3

    if-eq v0, v6, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in checkModelStateUpdateForGesture was not associated to any of the available switch cases."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_1
    const p0, 0x7f12014e

    iput p0, v12, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    goto/16 :goto_1

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;

    invoke-direct {p0, v11, p2, v7}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Landroid/content/Context;I)V

    iput-object p0, v12, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    iput v4, v12, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    invoke-direct {p0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p0, v12, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    iput v3, v12, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v12}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return v2

    :cond_3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return v10

    :cond_4
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-ne p0, v0, :cond_9

    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->createGooglePlayStoreIntent()Landroid/content/Intent;

    move-result-object v11

    sget-boolean v12, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v12

    if-nez v12, :cond_14

    invoke-static {p2, v11}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->isNotSupportedIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto/16 :goto_1

    :cond_5
    new-instance v12, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    invoke-direct {v12}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;-><init>()V

    iput-object v0, v12, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;->feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    iput v8, v12, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_8

    if-eq v0, v7, :cond_8

    if-eq v0, v6, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in checkModelStateUpdateForMotSceneDetect was not associated to any of the available switch cases."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_6
    const p0, 0x7f12014f

    iput p0, v12, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOT_SCENE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    goto/16 :goto_1

    :cond_7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;

    invoke-direct {p0, v11, p2, v2}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Landroid/content/Context;I)V

    iput-object p0, v12, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    iput v4, v12, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    invoke-direct {p0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p0, v12, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    iput v3, v12, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v12}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return v2

    :cond_8
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOT_SCENE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return v10

    :cond_9
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-ne p0, v0, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanSupported()Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->createGooglePlayStoreIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->isNotSupportedIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_1

    :cond_b
    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    move-result-object v1

    new-instance v11, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    invoke-direct {v11}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;-><init>()V

    iput-object v0, v11, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;->feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    iput v8, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    const v0, 0x7f12014c

    iput v0, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_e

    if-eq v0, v7, :cond_14

    if-eq v0, v6, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in checkModelStateUpdateForDocScan was not associated to any of the available switch cases."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_c
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MOT_DOC_SCAN_CAPTURE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_d

    if-eqz p1, :cond_d

    goto/16 :goto_0

    :cond_d
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2, v10}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Landroid/content/Context;I)V

    iput-object p1, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    iput v4, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 p1, 0x1a

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p0, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    iput v3, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v11}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return v2

    :cond_e
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOT_DOC_SCAN_CAPTURE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return v10

    :cond_f
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-ne p0, v0, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanSupported()Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_1

    :cond_10
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->createGooglePlayStoreIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->isNotSupportedIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_1

    :cond_11
    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    move-result-object v1

    new-instance v11, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    invoke-direct {v11}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;-><init>()V

    iput-object v0, v11, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;->feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    iput v8, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    const v0, 0x7f12014d

    iput v0, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_15

    if-eq v0, v7, :cond_14

    if-eq v0, v6, :cond_12

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in checkModelStateUpdateForSlideScan was not associated to any of the available switch cases."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_12
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MOT_SLIDE_SCAN_CAPTURE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_13

    if-eqz p1, :cond_13

    :goto_0
    return v2

    :cond_13
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Landroid/content/Context;I)V

    iput-object p1, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    iput v4, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 p1, 0x1b

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p0, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    iput v3, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v11}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return v2

    :cond_14
    :goto_1
    return v10

    :cond_15
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOT_SLIDE_SCAN_CAPTURE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return v10

    :cond_16
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid: checkModelStateUpdate: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method public static isNotSupportedIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x20000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
