.class public final Lcom/motorola/camera/mcf/McfCallbackJGDrsd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final result:Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;

    const/4 v1, 0x0

    new-array v2, v1, [D

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v0, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->hdrDetected:Z

    const-string/jumbo v1, "unknown"

    iput-object v1, v0, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->globalCamId:Ljava/lang/String;

    iput-object v2, v0, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->evBracket:[D

    const/4 v1, -0x1

    iput v1, v0, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->motionLevel:I

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfCallbackJGDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{McfCallbackJGDrsd:{hdr-detected="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallbackJGDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;

    iget-boolean v1, p0, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->hdrDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",ev-bracket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->evBracket:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->motionLevel:I

    if-ltz v2, :cond_0

    const-string v2, ",motion-level="

    invoke-static {v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->motionLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
