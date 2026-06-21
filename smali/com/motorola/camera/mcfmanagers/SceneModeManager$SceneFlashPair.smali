.class public final Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mIsFlash:Z

.field public final mOrigScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public final mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mOrigScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 4
    iput-boolean p3, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mIsFlash:Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mOrigScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 8
    iput-boolean p2, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mIsFlash:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    iget-boolean v1, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mIsFlash:Z

    iget-boolean v2, p1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mIsFlash:Z

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-object p1, p1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mIsFlash:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SceneFlashPair{mScene="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFlash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mIsFlash:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOrigScene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mOrigScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
