.class public final Landroidx/compose/foundation/BorderKt$drawRectBorder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $brush:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $rectTopLeft:J

.field public final synthetic $size:J

.field public final synthetic $style:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JJLjava/lang/Object;I)V
    .locals 0

    iput p7, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$brush:Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$rectTopLeft:J

    iput-wide p4, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$size:J

    iput-object p6, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$style:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$brush:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    iget-wide v1, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$rectTopLeft:J

    const/16 v3, 0x20

    shr-long v4, v1, v3

    long-to-int v4, v4

    iget-wide v5, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$size:J

    shr-long v7, v5, v3

    long-to-int v7, v7

    add-int/2addr v4, v7

    const-wide v7, 0xffffffffL

    and-long/2addr v1, v7

    long-to-int v1, v1

    and-long/2addr v5, v7

    long-to-int v2, v5

    add-int/2addr v1, v2

    iget-object p0, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$style:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v4, v4

    shl-long v2, v4, v3

    int-to-long v4, v1

    and-long/2addr v4, v7

    or-long v1, v2, v4

    invoke-static {p1, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide v3, v0, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1, p0}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    iget-object v0, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$brush:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/graphics/Brush;

    iget-object v0, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$style:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    const/16 v1, 0x68

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$rectTopLeft:J

    :goto_0
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1

    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->offsetSize-PENXr5M(JJ)J

    move-result-wide v5

    goto :goto_1

    :cond_1
    iget-wide v5, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$size:J

    :goto_1
    and-int/lit8 p0, v1, 0x8

    if-eqz p0, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    :cond_3
    iget-object v1, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object p1, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object p1, p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    const/16 v7, 0x20

    shr-long v8, v3, v7

    long-to-int v8, v8

    move v9, v8

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    const-wide v10, 0xffffffffL

    and-long/2addr v3, v10

    long-to-int v3, v3

    move v4, v9

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    shr-long v12, v5, v7

    long-to-int v7, v12

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    add-float v12, v7, v4

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    and-long v4, v5, v10

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    add-float v11, v4, v3

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    move v4, p0

    move-object v3, v0

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-swdJneE(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object p0

    move-object v7, p1

    move v10, v12

    move-object v12, p0

    invoke-interface/range {v7 .. v12}, Landroidx/compose/ui/graphics/Canvas;->drawRect(FFFFLandroidx/compose/ui/graphics/AndroidPaint;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
