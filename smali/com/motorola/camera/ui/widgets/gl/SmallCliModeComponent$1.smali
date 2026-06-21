.class public final Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;

    return-void
.end method


# virtual methods
.method public final onAutoCapture(Lcom/motorola/camera/mcf/McfCallbackAutoCapture;)V
    .locals 13

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget v0, p1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mAction:I

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const-string v2, "TIMER"

    const-string v3, "CAPTURE_TRIGGER"

    const-string v4, "CAPTURE_AUTO_CAPTURE_REF_TIME"

    const-string v5, "CAPTURE_AUTO_CAPTURE_TYPE"

    const-string v6, "Shutter Up"

    const-string v7, "ON_UP"

    const-string v8, "ON_DOWN"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-virtual {v0, v8, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-virtual {v0, v7, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-boolean v7, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v7}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    :cond_0
    iget v6, p1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mType:I

    invoke-virtual {v0, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-wide v5, p1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mRefTimestampNs:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget p1, p1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mType:I

    if-eq p1, v10, :cond_1

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v9

    :goto_0
    if-eqz p1, :cond_2

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v1, v0, v9}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :cond_3
    const/4 v10, 0x2

    if-ne v0, v10, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v8, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v7, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-boolean v7, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v7, :cond_4

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v7}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    :cond_4
    const/16 v6, 0xbb8

    invoke-virtual {v0, v2, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "TIMER_CANCEL_UI"

    invoke-virtual {v0, v2, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget v2, p1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mType:I

    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-wide v5, p1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mRefTimestampNs:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v1, v0, v9}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_5
    return-void
.end method

.method public final onDeducedSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mcfAutoNV:Z

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mcfAutoNV:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void
.end method
