.class public final Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;
.super Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;
.source "SourceFile"


# instance fields
.field public codeOverride:Z

.field public exposureTime:F


# virtual methods
.method public final fitsParameters(FFF)Z
    .locals 2

    iget v0, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minLux:F

    iget v1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxLux:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    cmpg-float p2, p2, v1

    if-lez p2, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, v1, p2

    if-nez p2, :cond_1

    :cond_0
    iget p2, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minIso:F

    iget v0, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxIso:F

    invoke-static {p3, p2, v0}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->isWithinThreshold(FFF)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minZoom:F

    iget p0, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxZoom:F

    invoke-static {p1, p2, p0}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->isWithinThreshold(FFF)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExpScheduleHint{minLuxIdx="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxLuxIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minZoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minZoom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxZoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxZoom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minIso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minIso:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxIso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxIso:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", exposureTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;->exposureTime:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", codeOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;->codeOverride:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
