.class public final synthetic Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->isEnabled:Z

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->isEnabled:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->animateIfVisibilityChanged()V

    :goto_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->resetSceneOptInSetting()V

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->isEnabled:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->isEnabled:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->animateIfVisibilityChanged()V

    :goto_1
    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->isEnabled:Z

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->isEnabled:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->animateIfVisibilityChanged()V

    :goto_2
    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->isEnabled:Z

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->isEnabled:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->animateIfVisibilityChanged()V

    :goto_3
    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
