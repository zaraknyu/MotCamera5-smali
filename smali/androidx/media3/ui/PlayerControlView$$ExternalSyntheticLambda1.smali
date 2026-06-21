.class public final synthetic Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget v0, p0, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;->$r8$classId:I

    const/16 v1, 0x1d

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundBgSwitchPreference;

    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.settings.SettingsManager.Key<kotlin.Boolean>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v5

    const v2, 0x7f0a0441

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_0
    const v2, 0x7f0a047c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/io/Serializable;)Z

    return-void

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;->LOADING:Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->updateState(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$CartoonCardViewHolder;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/adapter/CartoonSelectThumbnailAdapter$CartoonCardViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    sget p1, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    :pswitch_3
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->disableCameraTypeIfActivePhotoOn(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v2, :cond_2

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v0, 0x7f1205d2

    :goto_0
    invoke-static {v0, p0, p1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto/16 :goto_5

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->CLI_ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    const-string v3, "CAMERA_TYPE"

    if-ne v1, v2, :cond_7

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDefaultZoom()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v2, v4}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;Z)F

    move-result v6

    goto :goto_1

    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "ZOOM_JUMP_X"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "VIDEO_RECORDING"

    iget-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->isVideoRecording:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;->isVideoRecording:Z

    if-nez p0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmoothZoomJumpSupported()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v5, v4

    :cond_5
    :goto_2
    const-string p0, "SMOOTH_ZOOM_JUMP"

    invoke-virtual {v1, p0, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDefaultZoom()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    :goto_3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FRONT_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ZOOM_JUMP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0, v1, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p1, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isCliZoomBlendingApplicableToVideoMode()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingVideoMode()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne p0, v1, :cond_8

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimitedDueToNoFastFrameRate(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v0, 0x7f1205d1

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne p0, v1, :cond_9

    goto :goto_4

    :cond_9
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_4
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "ORIGIN_CAMERA_TYPE"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "IS_MANUAL_JUMP"

    invoke-virtual {p0, v0, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v0, Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/CameraType;

    if-eqz v0, :cond_a

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FRONT_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_a
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1, p0, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p1, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_5
    return-void

    :pswitch_4
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lcom/motorola/camera/scenedetection/scene/Scene;->getOptType()Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    if-ne v0, v1, :cond_15

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isEnabled:Z

    xor-int/2addr v0, v5

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isEnabled:Z

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->getSceneAdjustmentSetting(Lcom/motorola/camera/scenedetection/scene/Scene;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isEnabled:Z

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    invoke-interface {p1}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MACRO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne p1, v0, :cond_c

    sget-object p1, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->factory$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/scenedetection/factory/SceneFactory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getFocusTooFarScene()Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;

    move-result-object p1

    goto :goto_6

    :cond_c
    move-object p1, v3

    :goto_6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->eventListener:Lcom/motorola/camera/ui/UIManager;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object v1

    goto :goto_7

    :cond_d
    move-object v1, v3

    :goto_7
    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne v1, v2, :cond_e

    sget-object v1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Lcom/motorola/camera/scenedetection/scene/Scene;->getPersistOnLensSwitch()Z

    move-result v1

    :cond_e
    sput-object p1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isEnabled:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object v0

    goto :goto_8

    :cond_f
    move-object v0, v3

    :goto_8
    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOCUS_TOO_FAR:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object v3

    :cond_10
    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MACRO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne v3, v0, :cond_11

    goto :goto_b

    :cond_11
    if-eqz p1, :cond_12

    const v0, 0x7f120067

    goto :goto_9

    :cond_12
    const v0, 0x7f120066

    :goto_9
    if-eqz p1, :cond_13

    const p1, 0x7f120576

    goto :goto_a

    :cond_13
    const p1, 0x7f120575

    :goto_a
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v3, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput v5, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mContentDescription:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_14
    :goto_b
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateVisibility$1()V

    goto :goto_c

    :cond_15
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->noSceneDetected:Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    :cond_16
    :goto_c
    return-void

    :pswitch_5
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v4, v4}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;ZI)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "IS_SELECTED"

    invoke-virtual {p0, p1, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_TUTORIAL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewType()I

    move-result v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_17

    move v2, v5

    :cond_17
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_PREVIEW_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DUAL_CAPTURE_PREVIEW_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DUAL_CAPTURE_PREVIEW_SWAP_TRIGGER_BY_BUTTON"

    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_PREVIEW_SWAP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_18

    const v1, 0x7f0b006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_d

    :cond_18
    const-wide/16 v0, 0x0

    :goto_d
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->startFlipAnimation(Landroid/view/View;J)V

    goto :goto_e

    :cond_19
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    :goto_e
    return-void

    :pswitch_7
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarPerfectMeOverlayControls;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    iput v4, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->backgroundColor:I

    const v0, 0x7f12035c

    iput v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1a

    const v0, 0x7f12035a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1a
    iput-object v3, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageHTML:Ljava/lang/String;

    iput-boolean v4, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeOnCancel:Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    invoke-direct {p0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x7f12035d

    iput p0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    new-instance p0, Lcom/motorola/camera/utility/AppExtensionsKt$$ExternalSyntheticLambda0;

    invoke-direct {p0, v5}, Lcom/motorola/camera/utility/AppExtensionsKt$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x7f12035b

    iput p0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :pswitch_8
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureCameraGroupType()I

    move-result p1

    rem-int/2addr p1, v2

    if-nez p1, :cond_1b

    move v2, v5

    :cond_1b
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;->updateCameraGroupDrawable(I)V

    goto :goto_f

    :cond_1c
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    :goto_f
    return-void

    :pswitch_9
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-virtual {p0, p1, v5, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->selectButtonAction(Landroid/view/View;ZZ)V

    return-void

    :pswitch_a
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x18

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->submitTask(Ljava/lang/Runnable;)V

    return-void

    :pswitch_b
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "SWITCH_TYPE"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1, p1, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_1d

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_TOTAL:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_1d
    return-void

    :pswitch_c
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v1, v5

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->freshIconRes(I)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    const-string v2, "SETTING"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MODE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/settings/SettingsManager;->updateTenBitModeSwitchCase(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CONTROL_PANEL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1, p1, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_d
    check-cast p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;

    iget-object p1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    iget-object p1, p1, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mFragment:Lcom/motorola/camera/fragments/SettingsManagerFragment;

    invoke-virtual {p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->getKeySimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment;->showSettingDialog(Ljava/lang/String;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    return-void

    :pswitch_e
    check-cast p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;

    iget-object p1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    iget-object p1, p1, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mFragment:Lcom/motorola/camera/fragments/SettingsManagerFragment;

    invoke-virtual {p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->getKeySimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment;->showSettingDialog(Ljava/lang/String;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    return-void

    :pswitch_f
    check-cast p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;->mValueTextView:Landroid/widget/TextView;

    check-cast p0, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    :cond_1e
    return-void

    :pswitch_10
    check-cast p0, Lcom/motorola/camera/fragments/ReportFragment;

    new-instance p1, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;

    invoke-direct {p1, p0, v4}, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;-><init>(Lcom/motorola/camera/fragments/ReportFragment;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fragments/ReportFragment;->doDataIO(Lcom/motorola/camera/fragments/ReportFragment$DBOperations;)V

    new-instance p1, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;

    invoke-direct {p1, p0, v5}, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;-><init>(Lcom/motorola/camera/fragments/ReportFragment;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fragments/ReportFragment;->doDataIO(Lcom/motorola/camera/fragments/ReportFragment$DBOperations;)V

    return-void

    :pswitch_11
    check-cast p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;->cliOnboardFragment:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->showNextPage()V

    return-void

    :cond_1f
    const-string p0, "cliOnboardFragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :pswitch_12
    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "CAPTURE_TRIGGER"

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP_CLI_DISPLAY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1, p1, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    check-cast p0, Lcom/motorola/camera/cli/content/CliContentManager;

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->controller:Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    if-eqz p0, :cond_22

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->isFaceDetectionAllowed(Z)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->mFaces:[Landroid/hardware/camera2/params/Face;

    if-nez p0, :cond_20

    goto :goto_10

    :cond_20
    array-length p0, p0

    goto :goto_11

    :cond_21
    :goto_10
    move p0, v4

    :goto_11
    if-lez p0, :cond_22

    move v4, v5

    :cond_22
    iget-object p0, v1, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    const-string v2, "getLayoutManager(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->hasTrait(I)Z

    move-result p0

    if-eqz p0, :cond_23

    const-string p0, "FACES_DETECTED"

    invoke-virtual {p1, p0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, v1, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-virtual {p0, v0}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_23
    return-void

    :pswitch_13
    check-cast p0, Lcom/motorola/camera/CtaPrivacyActivity;

    sget p1, Lcom/motorola/camera/CtaPrivacyActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    :pswitch_14
    check-cast p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    iget-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    if-nez p1, :cond_24

    goto :goto_13

    :cond_24
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_12

    :cond_25
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_12
    if-ltz p1, :cond_26

    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_26
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    :goto_13
    return-void

    :pswitch_15
    check-cast p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->showHideDropdown()V

    return-void

    :pswitch_16
    check-cast p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    if-nez p1, :cond_27

    goto :goto_14

    :cond_27
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_28

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_28
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    :goto_14
    return-void

    :pswitch_17
    check-cast p0, Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()V

    throw v3

    :pswitch_18
    check-cast p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a018f

    if-ne v0, v1, :cond_29

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->overflowShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_15

    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a018e

    if-ne p1, v0, :cond_2a

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2a
    :goto_15
    return-void

    :pswitch_19
    check-cast p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz p1, :cond_2b

    check-cast p1, Landroidx/media3/common/BasePlayer;

    invoke-virtual {p1, v1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getTrackSelectionParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    const/4 p1, 0x3

    invoke-virtual {v1, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverridesOfType(I)V

    const/4 p1, -0x3

    iput p1, v1, Landroidx/media3/common/TrackSelectionParameters$Builder;->ignoredTextSelectionFlags:I

    new-array p1, v4, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguages([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    iput-boolean v4, v1, Landroidx/media3/common/TrackSelectionParameters$Builder;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    new-instance p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p1, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2b
    return-void

    :pswitch_1a
    check-cast p0, Landroidx/media3/ui/PlayerControlView$SettingViewHolder;

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$SettingViewHolder;->this$0:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    iget-object v0, p1, Landroidx/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    if-nez p0, :cond_2c

    iget-object p0, p1, Landroidx/media3/ui/PlayerControlView;->playbackSpeedAdapter:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0, v0}, Landroidx/media3/ui/PlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_16

    :cond_2c
    if-ne p0, v5, :cond_2d

    iget-object p0, p1, Landroidx/media3/ui/PlayerControlView;->audioTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0, v0}, Landroidx/media3/ui/PlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_16

    :cond_2d
    iget-object p0, p1, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_16
    return-void

    :pswitch_1b
    check-cast p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz p1, :cond_2f

    check-cast p1, Landroidx/media3/common/BasePlayer;

    invoke-virtual {p1, v1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_17

    :cond_2e
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getTrackSelectionParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    invoke-virtual {v1, v5}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverridesOfType(I)V

    invoke-virtual {v1, v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setTrackTypeDisabled(I)V

    new-instance p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p1, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->settingsAdapter:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->subTexts:[Ljava/lang/String;

    aput-object v0, p1, v5

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2f
    :goto_17
    return-void

    :pswitch_1c
    check-cast p0, Landroidx/media3/ui/PlayerControlView;

    iget-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->isFullscreen:Z

    xor-int/2addr p1, v5

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->updateIsFullscreen(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
