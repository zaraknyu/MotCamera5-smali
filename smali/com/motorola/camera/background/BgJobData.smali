.class public final Lcom/motorola/camera/background/BgJobData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final action:I

.field public final bundle:Landroid/os/Bundle;

.field public retryCount:I

.field public final taskId:Lcom/motorola/camera/background/common/TaskId;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/common/TaskId;ILandroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "taskId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/BgJobData;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iput p2, p0, Lcom/motorola/camera/background/BgJobData;->action:I

    iput-object p3, p0, Lcom/motorola/camera/background/BgJobData;->bundle:Landroid/os/Bundle;

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/background/BgJobData;->retryCount:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/motorola/camera/background/BgJobData;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/BgJobData;

    iget-object v0, p0, Lcom/motorola/camera/background/BgJobData;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-object v1, p1, Lcom/motorola/camera/background/BgJobData;->taskId:Lcom/motorola/camera/background/common/TaskId;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/motorola/camera/background/BgJobData;->action:I

    iget v1, p1, Lcom/motorola/camera/background/BgJobData;->action:I

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/background/BgJobData;->bundle:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/motorola/camera/background/BgJobData;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget p0, p0, Lcom/motorola/camera/background/BgJobData;->retryCount:I

    iget p1, p1, Lcom/motorola/camera/background/BgJobData;->retryCount:I

    if-eq p0, p1, :cond_5

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/background/BgJobData;->taskId:Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/TaskId;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/motorola/camera/background/BgJobData;->action:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/background/BgJobData;->bundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget p0, p0, Lcom/motorola/camera/background/BgJobData;->retryCount:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/background/BgJobData;->retryCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BgJobData(taskId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/background/BgJobData;->taskId:Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/motorola/camera/background/BgJobData;->action:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/BgJobData;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", retryCount="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
