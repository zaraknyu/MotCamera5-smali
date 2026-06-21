.class public final Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final blurLevel:Ljava/lang/Integer;

.field public final cameraType:Lcom/motorola/camera/settings/CameraType;

.field public final enabled:Z

.field public final oisBokehCamId:Ljava/lang/Integer;

.field public final zoomValue:F


# direct methods
.method public constructor <init>(ZLcom/motorola/camera/settings/CameraType;FLjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->enabled:Z

    iput-object p2, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->cameraType:Lcom/motorola/camera/settings/CameraType;

    iput p3, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->zoomValue:F

    iput-object p4, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->blurLevel:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->oisBokehCamId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    iget-boolean v1, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->enabled:Z

    iget-boolean v3, p1, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->enabled:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->cameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v3, p1, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->cameraType:Lcom/motorola/camera/settings/CameraType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->zoomValue:F

    iget v3, p1, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->zoomValue:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->blurLevel:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->blurLevel:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->oisBokehCamId:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->oisBokehCamId:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->enabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->cameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->zoomValue:F

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->blurLevel:Ljava/lang/Integer;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->oisBokehCamId:Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PortraitLensConfig(enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cameraType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->cameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", zoomValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->zoomValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", blurLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->blurLevel:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", oisBokehCamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->oisBokehCamId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
