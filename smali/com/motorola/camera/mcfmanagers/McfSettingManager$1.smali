.class public final Lcom/motorola/camera/mcfmanagers/McfSettingManager$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "SourceFile"


# virtual methods
.method public final onDeducedSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V
    .locals 1

    new-instance p0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {p0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SetDeductedSceneMode"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/zxing/Result;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    return-void
.end method
