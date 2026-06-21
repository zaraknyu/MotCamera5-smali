.class public final Landroidx/compose/ui/graphics/ColorMatrixColorFilter;
.super Landroidx/compose/ui/graphics/ColorFilter;
.source "SourceFile"


# instance fields
.field public colorMatrix:[F


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;->obtainColorMatrix-p10-uLo()[F

    move-result-object p0

    check-cast p1, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;->obtainColorMatrix-p10-uLo()[F

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;->colorMatrix:[F

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final obtainColorMatrix-p10-uLo()[F
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;->colorMatrix:[F

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/graphics/ColorFilter;->nativeColorFilter:Landroid/graphics/ColorFilter;

    instance-of v1, v0, Landroid/graphics/ColorMatrixColorFilter;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/ColorMatrixColorFilter;

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;->getColorMatrix(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;->colorMatrix:[F

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to obtain ColorMatrix from Android ColorMatrixColorFilter. This method was invoked on an unsupported Android version"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColorMatrixColorFilter(colorMatrix="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;->colorMatrix:[F

    const/16 v1, 0x29

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ColorMatrix(values="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
