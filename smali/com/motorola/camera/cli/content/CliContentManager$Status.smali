.class public final Lcom/motorola/camera/cli/content/CliContentManager$Status;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public faceDetected:Z

.field public isAnimationVisible:Z

.field public isPreviewVisible:Z

.field public luxValue:F


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/motorola/camera/cli/content/CliContentManager$Status;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iget v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    iget v1, p1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    iget-boolean v1, p1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isAnimationVisible:Z

    iget-boolean v1, p1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isAnimationVisible:Z

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isPreviewVisible:Z

    iget-boolean p1, p1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isPreviewVisible:Z

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

    iget v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isAnimationVisible:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isPreviewVisible:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    iget-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    iget-boolean v2, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isAnimationVisible:Z

    iget-boolean p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isPreviewVisible:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Status(luxValue="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", faceDetected="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isAnimationVisible="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPreviewVisible="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
