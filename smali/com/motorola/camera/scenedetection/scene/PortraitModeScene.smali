.class public final Lcom/motorola/camera/scenedetection/scene/PortraitModeScene;
.super Lcom/motorola/camera/scenedetection/scene/ActionScene;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;II)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/scenedetection/scene/PortraitModeScene;->$r8$classId:I

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/scenedetection/scene/ActionScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;I)V

    return-void
.end method


# virtual methods
.method public final doAction(Lcom/motorola/camera/EventListener;)V
    .locals 1

    iget p0, p0, Lcom/motorola/camera/scenedetection/scene/PortraitModeScene;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "eventListener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isAiGroupPhotoSupported(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x35

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->AIGROUPPHOTO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    invoke-static {p1, p0, v0}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;ILcom/motorola/camera/scenedetection/scene/Scene$Type;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_ACTION_EXIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p1, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_0
    return-void

    :pswitch_0
    const-string p0, "eventListener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthSupported(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PORTRAIT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    invoke-static {p1, p0, v0}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;ILcom/motorola/camera/scenedetection/scene/Scene$Type;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleCameraBokehSupported(Z)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x12

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PORTRAIT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    invoke-static {p1, p0, v0}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;ILcom/motorola/camera/scenedetection/scene/Scene$Type;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->TAG:Ljava/lang/String;

    const-string v0, "Portrait Mode / SF-Bokeh not supported."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_ACTION_EXIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p1, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
