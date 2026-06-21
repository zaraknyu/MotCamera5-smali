.class public final Landroidx/compose/foundation/layout/SizeNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# instance fields
.field public enforceIncoming:Z

.field public maxHeight:F

.field public maxWidth:F

.field public minHeight:F

.field public minWidth:F


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 6

    iget v0, p0, Landroidx/compose/foundation/layout/SizeNode;->maxWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/foundation/layout/SizeNode;->maxWidth:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    if-gez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    iget v3, p0, Landroidx/compose/foundation/layout/SizeNode;->maxHeight:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Landroidx/compose/foundation/layout/SizeNode;->maxHeight:F

    invoke-interface {p1, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v3

    if-gez v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :cond_3
    :goto_1
    iget v4, p0, Landroidx/compose/foundation/layout/SizeNode;->minWidth:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, p0, Landroidx/compose/foundation/layout/SizeNode;->minWidth:F

    invoke-interface {p1, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    if-gez v4, :cond_4

    move v4, v2

    :cond_4
    if-le v4, v0, :cond_5

    move v4, v0

    :cond_5
    if-eq v4, v1, :cond_6

    goto :goto_2

    :cond_6
    move v4, v2

    :goto_2
    iget v5, p0, Landroidx/compose/foundation/layout/SizeNode;->minHeight:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_9

    iget v5, p0, Landroidx/compose/foundation/layout/SizeNode;->minHeight:F

    invoke-interface {p1, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v5

    if-gez v5, :cond_7

    move v5, v2

    :cond_7
    if-le v5, v3, :cond_8

    move v5, v3

    :cond_8
    if-eq v5, v1, :cond_9

    move v2, v5

    :cond_9
    invoke-static {v4, v0, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v0

    iget-boolean v2, p0, Landroidx/compose/foundation/layout/SizeNode;->enforceIncoming:Z

    if-eqz v2, :cond_12

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p3

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p4

    if-ge p4, p0, :cond_a

    move p4, p0

    :cond_a
    if-le p4, v2, :cond_b

    move p4, v2

    :cond_b
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    if-ge v4, p0, :cond_c

    goto :goto_3

    :cond_c
    move p0, v4

    :goto_3
    if-le p0, v2, :cond_d

    goto :goto_4

    :cond_d
    move v2, p0

    :goto_4
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p0

    if-ge p0, v3, :cond_e

    move p0, v3

    :cond_e
    if-le p0, p3, :cond_f

    move p0, p3

    :cond_f
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    if-ge v0, v3, :cond_10

    goto :goto_5

    :cond_10
    move v3, v0

    :goto_5
    if-le v3, p3, :cond_11

    goto :goto_6

    :cond_11
    move p3, v3

    :goto_6
    invoke-static {p4, v2, p0, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p3

    goto :goto_b

    :cond_12
    iget v2, p0, Landroidx/compose/foundation/layout/SizeNode;->minWidth:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    goto :goto_7

    :cond_13
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    if-le v2, v3, :cond_14

    move v2, v3

    :cond_14
    :goto_7
    iget v3, p0, Landroidx/compose/foundation/layout/SizeNode;->maxWidth:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    goto :goto_8

    :cond_15
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v4

    if-ge v3, v4, :cond_16

    move v3, v4

    :cond_16
    :goto_8
    iget v4, p0, Landroidx/compose/foundation/layout/SizeNode;->minHeight:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v4

    goto :goto_9

    :cond_17
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v4

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v5

    if-le v4, v5, :cond_18

    move v4, v5

    :cond_18
    :goto_9
    iget p0, p0, Landroidx/compose/foundation/layout/SizeNode;->maxHeight:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_19

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    goto :goto_a

    :cond_19
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p3

    if-ge p0, p3, :cond_1a

    move p0, p3

    :cond_1a
    :goto_a
    invoke-static {v2, v3, v4, p0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p3

    :goto_b
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    new-instance p4, Landroidx/compose/ui/draw/PainterNode$measure$1;

    const/4 v0, 0x7

    invoke-direct {p4, p0, v0}, Landroidx/compose/ui/draw/PainterNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {p1, p2, p3, p0, p4}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
