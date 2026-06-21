.class public final Landroidx/compose/foundation/layout/PaddingValuesModifier;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# instance fields
.field public paddingValues:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 8

    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingValuesModifier;->paddingValues:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/layout/PaddingValuesModifier;->paddingValues:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iget v2, v1, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    iget-object p0, p0, Landroidx/compose/foundation/layout/PaddingValuesModifier;->paddingValues:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    const/4 v3, 0x0

    int-to-float v4, v3

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-ltz v7, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    and-int/2addr v5, v7

    invoke-static {v1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-ltz v7, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    and-int/2addr v5, v7

    invoke-static {p0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-ltz v4, :cond_3

    move v3, v6

    :cond_3
    and-int/2addr v3, v5

    if-nez v3, :cond_4

    const-string v3, "Padding must be non-negative"

    invoke-static {v3}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    add-int/2addr p0, v2

    neg-int v3, v1

    neg-int v4, p0

    invoke-static {p3, p4, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v3

    invoke-interface {p2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    iget v3, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    add-int/2addr v3, v1

    invoke-static {v3, p3, p4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v1

    iget v3, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    add-int/2addr v3, p0

    invoke-static {v3, p3, p4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result p0

    new-instance p3, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;

    const/4 p4, 0x1

    invoke-direct {p3, p2, v0, v2, p4}, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;III)V

    sget-object p2, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {p1, v1, p0, p2, p3}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
