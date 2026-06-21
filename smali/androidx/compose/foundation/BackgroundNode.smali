.class public final Landroidx/compose/foundation/BackgroundNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;


# instance fields
.field public color:J

.field public lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field public lastOutline:Landroidx/compose/ui/graphics/Brush;

.field public lastShape:Landroidx/compose/ui/graphics/Shape;

.field public lastSize:J

.field public shape:Landroidx/compose/ui/graphics/Shape;

.field public tmpOutline:Landroidx/compose/ui/graphics/Brush;


# virtual methods
.method public final draw(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    sget-object v4, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    if-ne v3, v4, :cond_1

    iget-wide v2, v0, Landroidx/compose/foundation/BackgroundNode;->color:J

    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v1, v0, Landroidx/compose/foundation/BackgroundNode;->color:J

    const/4 v7, 0x0

    const/16 v8, 0x7e

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    move-object v1, v0

    :cond_0
    move-object v7, v1

    goto/16 :goto_1

    :cond_1
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    iget-wide v5, v0, Landroidx/compose/foundation/BackgroundNode;->lastSize:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    iget-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->lastShape:Landroidx/compose/ui/graphics/Shape;

    iget-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->lastOutline:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v3, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0, v1}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v3}, Landroidx/compose/ui/node/HitTestResultKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->tmpOutline:Landroidx/compose/ui/graphics/Brush;

    const/4 v4, 0x0

    iput-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->tmpOutline:Landroidx/compose/ui/graphics/Brush;

    :goto_0
    iput-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->lastOutline:Landroidx/compose/ui/graphics/Brush;

    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/compose/foundation/BackgroundNode;->lastSize:J

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    iput-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    iput-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->lastShape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v4, v0, Landroidx/compose/foundation/BackgroundNode;->color:J

    sget-wide v6, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v4

    if-nez v4, :cond_0

    iget-wide v4, v0, Landroidx/compose/foundation/BackgroundNode;->color:J

    instance-of v0, v3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    const/16 v6, 0x20

    const-wide v7, 0xffffffffL

    move-wide v8, v7

    sget-object v7, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    if-eqz v0, :cond_3

    check-cast v3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    iget-object v0, v3, Landroidx/compose/ui/graphics/Outline$Rectangle;->rect:Landroidx/compose/ui/geometry/Rect;

    iget v2, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v10, v2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v10, v6

    and-long/2addr v2, v8

    or-long/2addr v2, v10

    iget v6, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v8, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    sub-float/2addr v6, v8

    iget v8, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    sub-float/2addr v8, v0

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v9, v0

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v11, v0

    const/16 v0, 0x20

    shl-long v8, v9, v0

    const-wide v13, 0xffffffffL

    and-long v10, v11, v13

    or-long/2addr v8, v10

    move-wide/from16 v26, v4

    move-wide v3, v2

    move-wide/from16 v1, v26

    move-wide v5, v8

    const/4 v8, 0x3

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawRect-n-J9OG0(JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    move-object v7, v0

    goto/16 :goto_1

    :cond_3
    move-object/from16 v26, v7

    move-object v7, v1

    move-wide v0, v4

    move-object/from16 v4, v26

    instance-of v5, v3, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v5, :cond_5

    check-cast v3, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v5, v3, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRectPath:Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v5, :cond_4

    invoke-virtual {v7, v5, v0, v1, v4}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawPath-LG529CI(Landroidx/compose/ui/graphics/Path;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    goto/16 :goto_1

    :cond_4
    iget-object v3, v3, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    iget-wide v10, v3, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    shr-long/2addr v10, v6

    long-to-int v5, v10

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    iget v10, v3, Landroidx/compose/ui/geometry/RoundRect;->left:F

    iget v11, v3, Landroidx/compose/ui/geometry/RoundRect;->top:F

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v12, v10

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    shl-long/2addr v12, v6

    and-long/2addr v10, v8

    or-long/2addr v10, v12

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v12

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v3

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    int-to-long v12, v12

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v14, v3

    shl-long/2addr v12, v6

    and-long/2addr v14, v8

    or-long/2addr v12, v14

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v14, v3

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    move-wide/from16 v16, v8

    int-to-long v8, v3

    shl-long/2addr v14, v6

    and-long v8, v8, v16

    or-long/2addr v8, v14

    iget-object v3, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object v14, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    move/from16 p0, v6

    shr-long v6, v10, p0

    long-to-int v3, v6

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v19

    and-long v5, v10, v16

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v20

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    shr-long v6, v12, p0

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    add-float v21, v6, v3

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    and-long v5, v12, v16

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    add-float v22, v5, v3

    shr-long v5, v8, p0

    long-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v23

    and-long v5, v8, v16

    long-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v24

    move-object v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x3

    move-wide/from16 v26, v0

    move-object v0, v2

    move-wide/from16 v1, v26

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-2qPWKa0$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FI)Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object v25

    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v25}, Landroidx/compose/ui/graphics/Canvas;->drawRoundRect(FFFFFFLandroidx/compose/ui/graphics/AndroidPaint;)V

    move-object/from16 v7, p1

    goto :goto_1

    :cond_5
    move-wide v1, v0

    instance-of v0, v3, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v0, :cond_6

    check-cast v3, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v0, v3, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    move-object/from16 v7, p1

    invoke-virtual {v7, v0, v1, v2, v4}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawPath-LG529CI(Landroidx/compose/ui/graphics/Path;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :goto_1
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    return-void
.end method

.method public final onObservedReadsChanged()V
    .locals 2

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastSize:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastOutline:Landroidx/compose/ui/graphics/Brush;

    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastShape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    return-void
.end method
