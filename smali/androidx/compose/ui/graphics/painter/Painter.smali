.class public abstract Landroidx/compose/ui/graphics/painter/Painter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public alpha:F

.field public colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field public layerPaint:Landroidx/compose/ui/graphics/AndroidPaint;

.field public layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->alpha:F

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method


# virtual methods
.method public abstract applyAlpha(F)V
.end method

.method public abstract applyColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V
.end method

.method public final draw-x_KDEd0(Landroidx/compose/ui/node/LayoutNodeDrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 6

    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget v1, p0, Landroidx/compose/ui/graphics/painter/Painter;->alpha:F

    cmpg-float v1, v1, p4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4}, Landroidx/compose/ui/graphics/painter/Painter;->applyAlpha(F)V

    iput p4, p0, Landroidx/compose/ui/graphics/painter/Painter;->alpha:F

    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/graphics/painter/Painter;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    invoke-static {v1, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p5}, Landroidx/compose/ui/graphics/painter/Painter;->applyColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    iput-object p5, p0, Landroidx/compose/ui/graphics/painter/Painter;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p5

    iget-object v1, p0, Landroidx/compose/ui/graphics/painter/Painter;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v1, p5, :cond_2

    iput-object p5, p0, Landroidx/compose/ui/graphics/painter/Painter;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    :cond_2
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    const/16 p5, 0x20

    shr-long/2addr v1, p5

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    shr-long v2, p2, p5

    long-to-int p5, v2

    invoke-static {p5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    and-long/2addr p2, v4

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    sub-float/2addr v2, p3

    iget-object p3, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object p3, p3, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast p3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    const/4 v3, 0x0

    invoke-virtual {p3, v3, v3, v1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->inset(FFFF)V

    cmpl-float p3, p4, v3

    const/high16 p4, -0x80000000

    if-lez p3, :cond_3

    :try_start_0
    invoke-static {p5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    cmpl-float p3, p3, v3

    if-lez p3, :cond_3

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    cmpl-float p2, p2, v3

    if-lez p2, :cond_3

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->onDraw(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    iget-object p1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object p1, p1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float p2, v1

    neg-float p3, v2

    invoke-virtual {p1, p4, p4, p2, p3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->inset(FFFF)V

    throw p0

    :cond_3
    :goto_1
    iget-object p0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object p0, p0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float p1, v1

    neg-float p2, v2

    invoke-virtual {p0, p4, p4, p1, p2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->inset(FFFF)V

    return-void
.end method

.method public abstract getIntrinsicSize-NH-jbRc()J
.end method

.method public abstract onDraw(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
.end method
