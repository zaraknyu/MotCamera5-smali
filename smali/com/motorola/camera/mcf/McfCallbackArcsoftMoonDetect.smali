.class public final Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public result:Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{McfCallbackArcsoftMoonDetect:{moon-as-enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect;->result:Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;

    iget-boolean v1, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;->moonAsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",moon-as-detected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;->moonAsDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",moon-as-confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;->moonAsConfidence:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "}"

    invoke-static {p0, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
