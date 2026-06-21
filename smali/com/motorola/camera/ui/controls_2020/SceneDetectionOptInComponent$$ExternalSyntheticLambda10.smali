.class public final synthetic Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda10;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda10;->f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda10;->$r8$classId:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda10;->f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v2, "mEventHandler"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object v0

    :cond_0
    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getPersistOnLensSwitch()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    sput-object p1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->getSceneOptInKey(Lcom/motorola/camera/scenedetection/scene/Scene;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object v0

    :cond_5
    sget-object p1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->AIGROUPPHOTO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne v0, p1, :cond_6

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->aiGroupShotDismissCounter:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->aiGroupShotDismissCounter:I

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->aiGroupShotDismissCounter:I

    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v1, "ANALYTICS_AI_GROUP_SHOT_DISMISS_COUNTER"

    invoke-virtual {p1, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->animateIfVisibilityChanged()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
