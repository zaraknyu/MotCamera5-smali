.class public final Landroidx/compose/ui/graphics/BlurEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final edgeTreatment:I

.field public internalRenderEffect:Landroid/graphics/RenderEffect;

.field public final radiusX:F

.field public final radiusY:F


# direct methods
.method public constructor <init>(FFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/graphics/BlurEffect;->radiusX:F

    iput p2, p0, Landroidx/compose/ui/graphics/BlurEffect;->radiusY:F

    iput p3, p0, Landroidx/compose/ui/graphics/BlurEffect;->edgeTreatment:I

    return-void
.end method


# virtual methods
.method public final asAndroidRenderEffect()Landroid/graphics/RenderEffect;
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/graphics/BlurEffect;->internalRenderEffect:Landroid/graphics/RenderEffect;

    if-nez v0, :cond_5

    iget v0, p0, Landroidx/compose/ui/graphics/BlurEffect;->radiusX:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    iget v3, p0, Landroidx/compose/ui/graphics/BlurEffect;->radiusY:F

    if-nez v2, :cond_0

    cmpg-float v2, v3, v1

    if-nez v2, :cond_0

    invoke-static {v1, v1}, Landroid/graphics/RenderEffect;->createOffsetEffect(FF)Landroid/graphics/RenderEffect;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget v1, p0, Landroidx/compose/ui/graphics/BlurEffect;->edgeTreatment:I

    if-nez v1, :cond_1

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    sget-object v1, Landroid/graphics/Shader$TileMode;->DECAL:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    :cond_4
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_0
    invoke-static {v0, v3, v1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroidx/compose/ui/graphics/BlurEffect;->internalRenderEffect:Landroid/graphics/RenderEffect;

    :cond_5
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/graphics/BlurEffect;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/BlurEffect;

    iget v0, p1, Landroidx/compose/ui/graphics/BlurEffect;->radiusX:F

    iget v1, p0, Landroidx/compose/ui/graphics/BlurEffect;->radiusX:F

    cmpg-float v0, v1, v0

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/compose/ui/graphics/BlurEffect;->radiusY:F

    iget v1, p1, Landroidx/compose/ui/graphics/BlurEffect;->radiusY:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    iget p0, p0, Landroidx/compose/ui/graphics/BlurEffect;->edgeTreatment:I

    iget p1, p1, Landroidx/compose/ui/graphics/BlurEffect;->edgeTreatment:I

    if-ne p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/ui/graphics/BlurEffect;->radiusX:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/ui/graphics/BlurEffect;->radiusY:F

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    iget p0, p0, Landroidx/compose/ui/graphics/BlurEffect;->edgeTreatment:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlurEffect(renderEffect=null, radiusX="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/graphics/BlurEffect;->radiusX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", radiusY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/BlurEffect;->radiusY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", edgeTreatment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/ui/graphics/BlurEffect;->edgeTreatment:I

    if-nez p0, :cond_0

    const-string p0, "Clamp"

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const-string p0, "Repeated"

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    const-string p0, "Mirror"

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    const-string p0, "Decal"

    goto :goto_0

    :cond_3
    const-string p0, "Unknown"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
