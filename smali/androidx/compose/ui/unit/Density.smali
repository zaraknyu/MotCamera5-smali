.class public interface abstract Landroidx/compose/ui/unit/Density;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getDensity()F
.end method

.method public abstract getFontScale()F
.end method

.method public roundToPx-0680j_4(F)I
    .locals 0

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public toDp-GaN1DYA(J)F
    .locals 4

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Only Sp can convert to Px"

    invoke-static {v0}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->CommonFontSizes:[F

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result v0

    const v1, 0x3f83d70a    # 1.03f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->forScale(F)Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result p1

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result p0

    mul-float/2addr p0, p1

    return p0

    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result p0

    invoke-interface {v0, p0}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;->convertSpToDp(F)F

    move-result p0

    return p0

    :cond_2
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result p1

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method

.method public toDp-u2uoSUM(F)F
    .locals 0

    .line 2
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public toDp-u2uoSUM(I)F
    .locals 0

    int-to-float p1, p1

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public toPx--R2X_6o(J)F
    .locals 4

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Only Sp can convert to Px"

    invoke-static {v0}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->toDp-GaN1DYA(J)F

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    return p0
.end method

.method public toPx-0680j_4(F)F
    .locals 0

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method

.method public toSize-XkaWNTQ(J)J
    .locals 6

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/16 v0, 0x20

    shr-long v1, p1, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-interface {p0, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v4, p0

    shl-long p0, p1, v0

    and-long v0, v4, v2

    or-long/2addr p0, v0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method public toSp-0xMU5do(F)J
    .locals 3

    sget-object v0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->CommonFontSizes:[F

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result v0

    const v1, 0x3f83d70a    # 1.03f

    cmpl-float v0, v0, v1

    const-wide v1, 0x100000000L

    if-ltz v0, :cond_1

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->forScale(F)Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;->convertDpToSp(F)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result p0

    div-float p0, p1, p0

    :goto_0
    invoke-static {p0, v1, v2}, Landroidx/compose/ui/unit/TextUnitKt;->pack(FJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result p0

    div-float/2addr p1, p0

    invoke-static {p1, v1, v2}, Landroidx/compose/ui/unit/TextUnitKt;->pack(FJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public toSp-kPz2Gy4(F)J
    .locals 0

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toSp-0xMU5do(F)J

    move-result-wide p0

    return-wide p0
.end method
