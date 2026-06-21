.class public final Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $borderSize:J

.field public final synthetic $borderStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field public final synthetic $brush:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic $cornerRadius:J

.field public final synthetic $fillArea:Z

.field public final synthetic $halfStroke:F

.field public final synthetic $strokeWidth:F

.field public final synthetic $topLeft:J


# direct methods
.method public constructor <init>(ZLandroidx/compose/ui/graphics/Brush;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$fillArea:Z

    iput-object p2, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    iput-wide p3, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$cornerRadius:J

    iput p5, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$halfStroke:F

    iput p6, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$strokeWidth:F

    iput-wide p7, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$topLeft:J

    iput-wide p9, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$borderSize:J

    iput-object p11, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$borderStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    iget-object p1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-boolean v1, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$fillArea:Z

    if-eqz v1, :cond_0

    const/4 v8, 0x0

    const/16 v9, 0xf6

    iget-object v1, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$cornerRadius:J

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/graphics/Brush;JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    goto/16 :goto_0

    :cond_0
    iget-wide v1, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$cornerRadius:J

    const/16 v3, 0x20

    shr-long v4, v1, v3

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    iget v5, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$halfStroke:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    iget v7, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$strokeWidth:F

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    shr-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iget v2, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$strokeWidth:F

    sub-float v9, v1, v2

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sub-float v10, v1, v2

    iget-object v1, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    iget-wide v2, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$cornerRadius:J

    iget-object p0, p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v12

    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    :try_start_0
    iget-object p1, p0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    iget-object p1, p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v6

    const/4 v11, 0x0

    move v8, v7

    invoke-interface/range {v6 .. v11}, Landroidx/compose/ui/graphics/Canvas;->clipRect-N_I0leg(FFFFI)V

    const/4 v8, 0x0

    const/16 v9, 0xf6

    move-wide v6, v2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/graphics/Brush;JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {p0, v12, v13}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {p0, v12, v13}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    throw p1

    :cond_1
    invoke-static {v5, v1, v2}, Landroidx/compose/foundation/ImageKt;->shrink-Kibmq7A(FJ)J

    move-result-wide v6

    iget-object v8, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$borderStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/16 v9, 0xd0

    iget-object v1, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    iget-wide v2, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$topLeft:J

    iget-wide v4, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;->$borderSize:J

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/graphics/Brush;JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
