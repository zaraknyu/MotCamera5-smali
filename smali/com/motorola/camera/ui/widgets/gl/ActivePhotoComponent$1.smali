.class public final Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAIScene(Lcom/motorola/camera/mcf/McfCallbackAIScene;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const-string v0, "aiScene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackAIScene;->mScene:Ljava/lang/String;

    const-string v0, "mScene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isCurrentScenePersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->factory$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/scenedetection/factory/SceneFactory;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->eventListener:Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getScene(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Z)Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->getSceneAdjustmentSetting(Lcom/motorola/camera/scenedetection/scene/Scene;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isEnabled:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateSceneDetection()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateVisibility$1()V

    :goto_2
    return-void

    :pswitch_1
    const-string v0, "aiScene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->isFsmIdle:Z

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_AUTO_CAPTURE_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackAIScene;->mScene:Ljava/lang/String;

    const-string v0, "mScene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-eq p1, v0, :cond_5

    new-instance p1, Landroid/os/Bundle;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string v0, "ON_DOWN"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "ON_UP"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Shutter Up"

    invoke-static {v0}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    :cond_4
    const-string v0, "CAPTURE_TRIGGER"

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "IS_SPLIT_SCREEN"

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->isSplitMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_5
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAutoCapture(Lcom/motorola/camera/mcf/McfCallbackAutoCapture;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v3, "autoCapture"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeMode()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->isFsmIdle:Z

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->hasWindowFocus()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    iget v3, v1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mAction:I

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const-string v7, "IS_PHOTO_BOOTH_CAPTURE_TIMES"

    const-string v8, "IS_SPLIT_SCREEN"

    const-string v9, "CAPTURE_TRIGGER"

    const-string v10, "CAPTURE_AUTO_CAPTURE_REF_TIME"

    const-string v11, "CAPTURE_AUTO_CAPTURE_TYPE"

    const-string v12, "Shutter Up"

    const-string v13, "ON_UP"

    const-string v14, "ON_DOWN"

    const-string v15, "TIMER_CANCEL_UI"

    const-string v6, "TIMER"

    move-object/from16 v16, v12

    if-ne v3, v4, :cond_7

    new-instance v3, Landroid/os/Bundle;

    const/16 v17, 0x0

    const/4 v12, 0x5

    invoke-direct {v3, v12}, Landroid/os/Bundle;-><init>(I)V

    move-object/from16 v18, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v14, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v13, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-boolean v4, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    :cond_2
    iget v4, v1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mType:I

    invoke-virtual {v3, v11, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-wide v4, v1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mRefTimestampNs:J

    invoke-virtual {v3, v10, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v3, v9, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget v1, v1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mType:I

    const/4 v12, 0x1

    if-ne v1, v12, :cond_3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    :goto_0
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_5

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v3, v6, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    iget-boolean v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->isSplitMode:Z

    invoke-virtual {v3, v8, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v3, v6, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x4

    invoke-virtual {v3, v7, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v12, 0x1

    xor-int/2addr v0, v12

    invoke-virtual {v3, v15, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_2
    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->onCaptureStarted()V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    move/from16 v1, v17

    move-object/from16 v4, v18

    invoke-direct {v0, v4, v3, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {v2, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_4

    :cond_7
    move-object v4, v5

    const/4 v5, 0x2

    if-ne v3, v5, :cond_c

    new-instance v3, Landroid/os/Bundle;

    const/4 v5, 0x7

    invoke-direct {v3, v5}, Landroid/os/Bundle;-><init>(I)V

    move-object/from16 v18, v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v3, v14, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v14, v18

    invoke-virtual {v3, v14, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-boolean v12, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v12, :cond_8

    sget-object v12, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v12}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    :cond_8
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    iget-object v13, v13, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v14, "getValue(...)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    const/4 v14, 0x3

    if-ge v13, v14, :cond_9

    move v13, v14

    :cond_9
    mul-int/lit16 v13, v13, 0x3e8

    invoke-virtual {v3, v6, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v13, 0x0

    invoke-virtual {v3, v15, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget v13, v1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mType:I

    invoke-virtual {v3, v11, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-wide v13, v1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mRefTimestampNs:J

    invoke-virtual {v3, v10, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v3, v9, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-boolean v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->isSplitMode:Z

    invoke-virtual {v3, v8, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v3, v6, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x4

    invoke-virtual {v3, v7, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v12, 0x1

    xor-int/2addr v0, v12

    invoke-virtual {v3, v15, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_3
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v3, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {v2, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_4

    :cond_b
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring auto capture. Window doesn\'t have focus "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onBandingDetect(Lcom/motorola/camera/mcf/McfCallbackBandingDetect;)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const-string v0, "bandingDetect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->getExposureInfo(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "MotionCaptureComponent"

    const-string p1, "onBandingDetect: exposure info is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackBandingDetect;->result:Lcom/google/android/gms/dynamite/zzo;

    iget p1, p1, Lcom/google/android/gms/dynamite/zzo;->zza:I

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ANTI_BANDING_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_3

    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mAntibandingMode:Ljava/lang/Integer;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->getAntiBandingMode(Lcom/motorola/camera/fsm/camera/FsmContext;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v2, v0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->getAntiBandingMode(Lcom/motorola/camera/fsm/camera/FsmContext;)I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v2, v0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onBestShotVideoTrigger(Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;)V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v2, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->SETUP:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v9, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->jobId:I

    iget-wide v2, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->videoStartTs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v6, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->videoStopTs:J

    div-long v7, v6, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    cmp-long p1, v7, v4

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSavedMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_VIDEO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/16 v1, 0x15

    invoke-direct {p1, v9, v1, p0}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->runOnExecutor(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    move-wide v5, v2

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;JJI)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->runOnExecutor(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCaptureEstimate(J)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;JI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onGestureDetect(Lcom/motorola/camera/mcf/McfCallbackGestureDetect;)V
    .locals 13

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    const-string v0, "gestureDetect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackGestureDetect;->result:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    iget v0, p1, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->gestureVideoState:Landroidx/media3/common/util/TimedValueQueue;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v0, Landroidx/media3/common/util/TimedValueQueue;->values:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;

    iget-object v6, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->gestureFilter:Ljava/util/ArrayList;

    iget v7, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->gesture:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x3

    if-eq v7, p1, :cond_4

    if-ne p1, v10, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v10, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget v6, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->gesture:I

    iput v6, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->prevGesture:I

    iput p1, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->gesture:I

    iput-wide v3, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->startTime:J

    iput-wide v8, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->duration:J

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :goto_2
    iget-wide v6, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->startTime:J

    const-wide/16 v11, -0x1

    cmp-long p1, v6, v11

    if-nez p1, :cond_5

    iput-wide v3, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->startTime:J

    iput-wide v8, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->duration:J

    goto :goto_3

    :cond_5
    sub-long/2addr v3, v6

    iput-wide v3, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->duration:J

    :goto_3
    iget-object p1, v0, Landroidx/media3/common/util/TimedValueQueue;->timestamps:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iget-object v0, p1, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileBitmap:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/TimedValueQueue;

    sget-object v3, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget v3, p1, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileIndex:I

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_GESTURE_PAUSE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const-wide/16 v7, 0x1770

    const/4 v9, 0x2

    packed-switch v3, :pswitch_data_1

    :pswitch_1
    goto/16 :goto_4

    :pswitch_2
    iget v3, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->gesture:I

    if-ne v3, v9, :cond_6

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p1, v9, v2}, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->setGestureTriggerCounter(IZ)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ANALYTICS_AIR_GESTURE_STOP"

    iget v0, v0, Landroidx/media3/common/util/TimedValueQueue;->first:I

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v6, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto/16 :goto_5

    :pswitch_3
    iget v3, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->gesture:I

    if-ne v3, v9, :cond_7

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p1, v10, v2}, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->setGestureTriggerCounter(IZ)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ANALYTICS_AIR_GESTURE_PAUSE"

    iget v0, v0, Landroidx/media3/common/util/TimedValueQueue;->size:I

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v6, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto/16 :goto_5

    :pswitch_4
    iget v0, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->gesture:I

    if-ne v0, v2, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v9, p1, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->presentationTimeUs:J

    sub-long/2addr v5, v9

    cmp-long v0, v5, v7

    if-gez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->getGestureTriggerBundle(I)Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v4, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto :goto_5

    :pswitch_5
    iget v0, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->gesture:I

    if-ne v0, v9, :cond_a

    iget v2, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->prevGesture:I

    if-ne v2, v10, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p1, v10, v1}, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->setGestureTriggerCounter(IZ)V

    invoke-virtual {p1, v10}, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->getGestureTriggerBundle(I)Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v4, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto :goto_5

    :cond_a
    if-ne v0, v9, :cond_c

    invoke-virtual {p1, v9, v1}, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->setGestureTriggerCounter(IZ)V

    invoke-virtual {p1, v9}, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->getGestureTriggerBundle(I)Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_GESTURE_STOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto :goto_5

    :pswitch_6
    iget v0, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/GestureVideoState$GestureState;->gesture:I

    if-ne v0, v2, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p1, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->presentationTimeUs:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, v7

    if-gez v0, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->getGestureTriggerBundle(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "CAPTURE_TRIGGER"

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_6

    :cond_d
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->TAG:Ljava/lang/String;

    const-string p1, "Ignoring gesture detection. Window doesn\'t have focus."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_6
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onQueueEmpty()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const-string v0, "onQueueEmpty mcfClose:"

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfCloseLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CloseAppRunnable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    iget-boolean v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfClose:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    iget-boolean v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfClose:Z

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v3, 0xc

    invoke-direct {v2, v3, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfClose:Z

    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onRealTimeDepthStatus(Lcom/motorola/camera/mcf/McfRtDepthStatus;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->isFsmIdle:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCaptureAllowed()Z

    move-result p1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;

    const/4 v1, 0x5

    invoke-direct {v0, p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda14;-><init>(ZLcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p1, Lcom/motorola/camera/mcf/McfRtDepthStatus;->status:I

    const v0, 0x7f120680

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;->PERFECT:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;

    invoke-virtual {p0, v0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus(ILcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;Z)V

    goto :goto_1

    :pswitch_2
    const p1, 0x7f120677

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;->OTHER:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;

    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus(ILcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;Z)V

    goto :goto_1

    :pswitch_3
    const p1, 0x7f120686

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;->OTHER:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;

    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus(ILcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;Z)V

    goto :goto_1

    :pswitch_4
    const p1, 0x7f120674

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;->OTHER:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;

    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus(ILcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;Z)V

    goto :goto_1

    :pswitch_5
    const p1, 0x7f12067d

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;->CLOSE:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;

    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus(ILcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;Z)V

    goto :goto_1

    :pswitch_6
    const p1, 0x7f12067f

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;->FAR:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;

    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus(ILcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;Z)V

    goto :goto_1

    :pswitch_7
    const p1, 0x7f120683

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;->OTHER:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;

    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus(ILcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;Z)V

    goto :goto_1

    :pswitch_8
    const p1, 0x7f12067a

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;->OTHER:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;

    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus(ILcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;Z)V

    goto :goto_1

    :pswitch_9
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;->PERFECT:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;

    invoke-virtual {p0, v0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus(ILcom/motorola/camera/ui/controls_2020/CutoutModeComponent$DepthStatus;Z)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
