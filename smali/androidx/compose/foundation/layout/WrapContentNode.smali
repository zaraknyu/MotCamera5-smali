.class public final Landroidx/compose/foundation/layout/WrapContentNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# instance fields
.field public alignmentCallback:Lkotlin/jvm/internal/Lambda;

.field public direction:Landroidx/compose/foundation/layout/Direction;


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 8

    iget-object v0, p0, Landroidx/compose/foundation/layout/WrapContentNode;->direction:Landroidx/compose/foundation/layout/Direction;

    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/layout/WrapContentNode;->direction:Landroidx/compose/foundation/layout/Direction;

    sget-object v3, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    :goto_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    iget p2, v5, Landroidx/compose/ui/layout/Placeable;->width:I

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    invoke-static {p2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v4

    iget p2, v5, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p3

    invoke-static {p2, v0, p3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v6

    new-instance v2, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;-><init>(Landroidx/compose/foundation/layout/WrapContentNode;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {v7, v4, v6, p0, v2}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
