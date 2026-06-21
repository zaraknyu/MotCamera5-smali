.class public final Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public result:Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{McfCallbackArcsoftDrsd:{hdr-mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;

    iget v1, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->hdrMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",count-hist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->countHist:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",count-hist-thresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->countHistThresh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->evBracket:[D

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, ",ev-bracket="

    invoke-static {v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->evBracket:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->needEnhancedNR:I

    if-ltz v1, :cond_1

    const-string v1, ",need-enhanced-nr="

    invoke-static {v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->needEnhancedNR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget v1, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->motionLevel:I

    if-ltz v1, :cond_2

    const-string v1, ",motion-level="

    invoke-static {v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->motionLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget v1, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->srMode:I

    if-lez v1, :cond_3

    const-string v1, ",sr-mode="

    invoke-static {v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->srMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string/jumbo p0, "}"

    invoke-static {v0, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
