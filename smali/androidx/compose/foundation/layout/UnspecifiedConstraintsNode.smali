.class public final Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# instance fields
.field public minHeight:F

.field public minWidth:F


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 4

    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minWidth:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    :goto_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    iget v3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minHeight:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    if-nez v3, :cond_5

    iget p0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minHeight:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    if-gez p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, p0

    :goto_1
    if-le v1, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v1

    goto :goto_2

    :cond_5
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    :goto_2
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    invoke-static {v2, v0, v3, p0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p3

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    new-instance p4, Landroidx/compose/ui/draw/PainterNode$measure$1;

    const/16 v0, 0x8

    invoke-direct {p4, p0, v0}, Landroidx/compose/ui/draw/PainterNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {p1, p2, p3, p0, p4}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
