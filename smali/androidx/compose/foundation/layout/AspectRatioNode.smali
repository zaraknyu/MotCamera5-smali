.class public final Landroidx/compose/foundation/layout/AspectRatioNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# instance fields
.field public aspectRatio:F


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, p3, p4, v0}, Landroidx/compose/foundation/layout/AspectRatioNode;->tryMaxWidth-JN-0ABg(JZ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3, p4, v0}, Landroidx/compose/foundation/layout/AspectRatioNode;->tryMaxHeight-JN-0ABg(JZ)J

    move-result-wide v1

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3, p4, v0}, Landroidx/compose/foundation/layout/AspectRatioNode;->tryMinWidth-JN-0ABg(JZ)J

    move-result-wide v1

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3, p4, v0}, Landroidx/compose/foundation/layout/AspectRatioNode;->tryMinHeight-JN-0ABg(JZ)J

    move-result-wide v1

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p3, p4, v6}, Landroidx/compose/foundation/layout/AspectRatioNode;->tryMaxWidth-JN-0ABg(JZ)J

    move-result-wide v1

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p3, p4, v6}, Landroidx/compose/foundation/layout/AspectRatioNode;->tryMaxHeight-JN-0ABg(JZ)J

    move-result-wide v1

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p3, p4, v6}, Landroidx/compose/foundation/layout/AspectRatioNode;->tryMinWidth-JN-0ABg(JZ)J

    move-result-wide v1

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p3, p4, v6}, Landroidx/compose/foundation/layout/AspectRatioNode;->tryMinHeight-JN-0ABg(JZ)J

    move-result-wide v1

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move-wide v1, v3

    :goto_0
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_b

    const/16 p0, 0x20

    shr-long p3, v1, p0

    long-to-int p0, p3

    const-wide p3, 0xffffffffL

    and-long/2addr p3, v1

    long-to-int p3, p3

    if-ltz p0, :cond_8

    move p4, v0

    goto :goto_1

    :cond_8
    move p4, v6

    :goto_1
    if-ltz p3, :cond_9

    goto :goto_2

    :cond_9
    move v0, v6

    :goto_2
    and-int/2addr p4, v0

    if-nez p4, :cond_a

    const-string/jumbo p4, "width and height must be >= 0"

    invoke-static {p4}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_a
    invoke-static {p0, p0, p3, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->createConstraints(IIII)J

    move-result-wide p3

    :cond_b
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    new-instance p4, Landroidx/compose/ui/draw/PainterNode$measure$1;

    const/4 v0, 0x4

    invoke-direct {p4, p0, v0}, Landroidx/compose/ui/draw/PainterNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {p1, p2, p3, p0, p4}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final tryMaxHeight-JN-0ABg(JZ)J
    .locals 2

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    int-to-float v1, v0

    iget p0, p0, Landroidx/compose/foundation/layout/AspectRatioNode;->aspectRatio:F

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-lez p0, :cond_1

    if-eqz p3, :cond_0

    invoke-static {p1, p2, p0, v0}, Landroidx/compose/foundation/layout/OffsetKt;->isSatisfiedBy-NN6Ew-U(JII)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    int-to-long p0, p0

    const/16 p2, 0x20

    shl-long/2addr p0, p2

    int-to-long p2, v0

    const-wide v0, 0xffffffffL

    and-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final tryMaxWidth-JN-0ABg(JZ)J
    .locals 4

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    int-to-float v1, v0

    iget p0, p0, Landroidx/compose/foundation/layout/AspectRatioNode;->aspectRatio:F

    div-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-lez p0, :cond_1

    if-eqz p3, :cond_0

    invoke-static {p1, p2, v0, p0}, Landroidx/compose/foundation/layout/OffsetKt;->isSatisfiedBy-NN6Ew-U(JII)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    int-to-long p1, v0

    const/16 p3, 0x20

    shl-long/2addr p1, p3

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long p0, p1, v0

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final tryMinHeight-JN-0ABg(JZ)J
    .locals 2

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    int-to-float v1, v0

    iget p0, p0, Landroidx/compose/foundation/layout/AspectRatioNode;->aspectRatio:F

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-lez p0, :cond_1

    if-eqz p3, :cond_0

    invoke-static {p1, p2, p0, v0}, Landroidx/compose/foundation/layout/OffsetKt;->isSatisfiedBy-NN6Ew-U(JII)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    int-to-long p0, p0

    const/16 p2, 0x20

    shl-long/2addr p0, p2

    int-to-long p2, v0

    const-wide v0, 0xffffffffL

    and-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final tryMinWidth-JN-0ABg(JZ)J
    .locals 4

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    int-to-float v1, v0

    iget p0, p0, Landroidx/compose/foundation/layout/AspectRatioNode;->aspectRatio:F

    div-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-lez p0, :cond_1

    if-eqz p3, :cond_0

    invoke-static {p1, p2, v0, p0}, Landroidx/compose/foundation/layout/OffsetKt;->isSatisfiedBy-NN6Ew-U(JII)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    int-to-long p1, v0

    const/16 p3, 0x20

    shl-long/2addr p1, p3

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long p0, p1, v0

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method
