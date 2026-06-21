.class public final Lcom/motorola/camera/scenedetection/factory/ArcsoftSceneFactory$ArcsoftScene;
.super Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;II)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/16 v0, 0x30

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;III)V

    return-void
.end method


# virtual methods
.method public final applyTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;->applyTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final revertTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;->revertTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string p1, "NONE"

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method
