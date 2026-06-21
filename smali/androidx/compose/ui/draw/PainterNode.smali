.class public final Landroidx/compose/ui/draw/PainterNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;


# instance fields
.field public alignment:Landroidx/compose/ui/BiasAlignment;

.field public alpha:F

.field public colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field public contentScale:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

.field public painter:Landroidx/compose/ui/graphics/painter/Painter;

.field public sizeToIntrinsics:Z


# direct methods
.method public static hasSpecifiedAndFiniteHeight-uvyYCjk(J)Z
    .locals 2

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasSpecifiedAndFiniteWidth-uvyYCjk(J)Z
    .locals 2

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final draw(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v6, v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v2, v0, Landroidx/compose/ui/draw/PainterNode;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/draw/PainterNode;->hasSpecifiedAndFiniteWidth-uvyYCjk(J)Z

    move-result v4

    const/16 v5, 0x20

    if-eqz v4, :cond_0

    shr-long v7, v2, v5

    long-to-int v4, v7

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v7

    shr-long/2addr v7, v5

    long-to-int v4, v7

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    :goto_0
    invoke-static {v2, v3}, Landroidx/compose/ui/draw/PainterNode;->hasSpecifiedAndFiniteHeight-uvyYCjk(J)Z

    move-result v7

    const-wide v8, 0xffffffffL

    if-eqz v7, :cond_1

    and-long/2addr v2, v8

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    and-long/2addr v2, v8

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    :goto_1
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v10, v2

    shl-long v2, v3, v5

    and-long/2addr v10, v8

    or-long/2addr v2, v10

    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v10

    shr-long/2addr v10, v5

    long-to-int v4, v10

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    const/4 v7, 0x0

    cmpg-float v4, v4, v7

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v10

    and-long/2addr v10, v8

    long-to-int v4, v10

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    cmpg-float v4, v4, v7

    if-nez v4, :cond_3

    :goto_2
    const-wide/16 v2, 0x0

    goto :goto_3

    :cond_3
    iget-object v4, v0, Landroidx/compose/ui/draw/PainterNode;->contentScale:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v10

    invoke-virtual {v4, v2, v3, v10, v11}, Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;->computeScaleFactor-H7hwNQA(JJ)J

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Landroidx/compose/ui/layout/ScaleFactorKt;->times-UQTWf7w(JJ)J

    move-result-wide v2

    :goto_3
    iget-object v10, v0, Landroidx/compose/ui/draw/PainterNode;->alignment:Landroidx/compose/ui/BiasAlignment;

    shr-long v11, v2, v5

    long-to-int v4, v11

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    and-long v11, v2, v8

    long-to-int v7, v11

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-long v11, v4

    shl-long/2addr v11, v5

    int-to-long v13, v7

    and-long/2addr v13, v8

    or-long/2addr v11, v13

    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v13

    shr-long/2addr v13, v5

    long-to-int v4, v13

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v13

    and-long/2addr v13, v8

    long-to-int v7, v13

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-long v13, v4

    shl-long/2addr v13, v5

    move-wide/from16 v16, v8

    int-to-long v8, v7

    and-long v7, v8, v16

    or-long/2addr v13, v7

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v15

    invoke-virtual/range {v10 .. v15}, Landroidx/compose/ui/BiasAlignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v7

    shr-long v4, v7, v5

    long-to-int v4, v4

    int-to-float v9, v4

    and-long v4, v7, v16

    long-to-int v4, v4

    int-to-float v7, v4

    iget-object v4, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object v4, v4, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {v4, v9, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    :try_start_0
    iget-object v4, v0, Landroidx/compose/ui/draw/PainterNode;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    move-object v5, v4

    iget v4, v0, Landroidx/compose/ui/draw/PainterNode;->alpha:F

    iget-object v0, v0, Landroidx/compose/ui/draw/PainterNode;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    move-object/from16 v18, v5

    move-object v5, v0

    move-object/from16 v0, v18

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/graphics/painter/Painter;->draw-x_KDEd0(Landroidx/compose/ui/node/LayoutNodeDrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float v1, v9

    neg-float v2, v7

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object v1, v1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float v2, v9

    neg-float v3, v7

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->translate(FF)V

    throw v0
.end method

.method public final getShouldAutoInvalidate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedHeight-impl(J)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getHasFixedWidth-impl(J)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getHasFixedHeight-impl(J)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    :cond_1
    iget-boolean v5, v0, Landroidx/compose/ui/draw/PainterNode;->sizeToIntrinsics:Z

    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    if-eqz v5, :cond_2

    iget-object v5, v0, Landroidx/compose/ui/draw/PainterNode;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    if-nez v3, :cond_b

    :goto_1
    if-eqz v4, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-object v3, v0, Landroidx/compose/ui/draw/PainterNode;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/draw/PainterNode;->hasSpecifiedAndFiniteWidth-uvyYCjk(J)Z

    move-result v5

    const/16 v8, 0x20

    if-eqz v5, :cond_4

    shr-long v9, v3, v8

    long-to-int v5, v9

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    goto :goto_2

    :cond_4
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v5

    :goto_2
    invoke-static {v3, v4}, Landroidx/compose/ui/draw/PainterNode;->hasSpecifiedAndFiniteHeight-uvyYCjk(J)Z

    move-result v9

    const-wide v10, 0xffffffffL

    if-eqz v9, :cond_5

    and-long/2addr v3, v10

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_3

    :cond_5
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    :goto_3
    invoke-static {v5, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v4

    invoke-static {v3, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v3

    int-to-float v4, v4

    int-to-float v3, v3

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v12, v3

    shl-long v3, v4, v8

    and-long/2addr v12, v10

    or-long/2addr v3, v12

    iget-boolean v5, v0, Landroidx/compose/ui/draw/PainterNode;->sizeToIntrinsics:Z

    if-eqz v5, :cond_a

    iget-object v5, v0, Landroidx/compose/ui/draw/PainterNode;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v12

    cmp-long v5, v12, v6

    if-eqz v5, :cond_a

    iget-object v5, v0, Landroidx/compose/ui/draw/PainterNode;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/draw/PainterNode;->hasSpecifiedAndFiniteWidth-uvyYCjk(J)Z

    move-result v5

    if-nez v5, :cond_6

    shr-long v5, v3, v8

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    goto :goto_4

    :cond_6
    iget-object v5, v0, Landroidx/compose/ui/draw/PainterNode;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v5

    shr-long/2addr v5, v8

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    :goto_4
    iget-object v6, v0, Landroidx/compose/ui/draw/PainterNode;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/draw/PainterNode;->hasSpecifiedAndFiniteHeight-uvyYCjk(J)Z

    move-result v6

    if-nez v6, :cond_7

    and-long v6, v3, v10

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    goto :goto_5

    :cond_7
    iget-object v6, v0, Landroidx/compose/ui/draw/PainterNode;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v6

    and-long/2addr v6, v10

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    :goto_5
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v12, v5

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    shl-long/2addr v12, v8

    and-long/2addr v5, v10

    or-long/2addr v5, v12

    shr-long v12, v3, v8

    long-to-int v7, v12

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    const/4 v9, 0x0

    cmpg-float v7, v7, v9

    if-nez v7, :cond_8

    goto :goto_6

    :cond_8
    and-long v12, v3, v10

    long-to-int v7, v12

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    cmpg-float v7, v7, v9

    if-nez v7, :cond_9

    :goto_6
    const-wide/16 v3, 0x0

    goto :goto_7

    :cond_9
    iget-object v0, v0, Landroidx/compose/ui/draw/PainterNode;->contentScale:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    invoke-virtual {v0, v5, v6, v3, v4}, Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;->computeScaleFactor-H7hwNQA(JJ)J

    move-result-wide v3

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/layout/ScaleFactorKt;->times-UQTWf7w(JJ)J

    move-result-wide v3

    :cond_a
    :goto_7
    shr-long v5, v3, v8

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v0

    and-long/2addr v3, v10

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v3, 0x0

    move-wide v14, v1

    move v2, v0

    move-wide v0, v14

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    move-result-wide v0

    :goto_8
    move-object/from16 v2, p2

    goto :goto_a

    :cond_b
    :goto_9
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v3, 0x0

    move-wide/from16 v0, p3

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    move-result-wide v0

    goto :goto_8

    :goto_a
    invoke-interface {v2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    iget v1, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    new-instance v3, Landroidx/compose/ui/draw/PainterNode$measure$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroidx/compose/ui/draw/PainterNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    move-object/from16 v4, p1

    invoke-interface {v4, v1, v2, v0, v3}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PainterModifier(painter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/draw/PainterNode;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sizeToIntrinsics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/compose/ui/draw/PainterNode;->sizeToIntrinsics:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/draw/PainterNode;->alignment:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/draw/PainterNode;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", colorFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/draw/PainterNode;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
