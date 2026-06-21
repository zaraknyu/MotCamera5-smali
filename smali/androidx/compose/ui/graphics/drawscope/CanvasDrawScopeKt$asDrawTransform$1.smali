.class public final Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $this_asDrawTransform:Landroidx/core/view/MenuHostHelper;


# direct methods
.method public constructor <init>(Landroidx/core/view/MenuHostHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/core/view/MenuHostHelper;

    return-void
.end method

.method public static clipRect-N_I0leg$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;FFFFI)V
    .locals 2

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    move p2, v1

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p0

    const/4 p5, 0x1

    invoke-interface/range {p0 .. p5}, Landroidx/compose/ui/graphics/Canvas;->clipRect-N_I0leg(FFFFI)V

    return-void
.end method


# virtual methods
.method public final inset(FFFF)V
    .locals 8

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    add-float/2addr p3, p1

    sub-float/2addr v1, p3

    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    long-to-int p3, v4

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    add-float/2addr p4, p2

    sub-float/2addr p3, p4

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p4

    int-to-long v1, p4

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    int-to-long p3, p3

    shl-long/2addr v1, v3

    and-long/2addr p3, v6

    or-long/2addr p3, v1

    shr-long v1, p3, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    and-long v3, p3, v6

    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "Width and height must be greater than or equal to zero"

    invoke-static {v1}, Landroidx/compose/ui/graphics/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p3, p4}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public final rotate-Uv8p0NA(FJ)V
    .locals 4

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p0

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const-wide v2, 0xffffffffL

    and-long/2addr p2, v2

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    invoke-interface {p0, v1, p3}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/Canvas;->rotate(F)V

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    neg-float p1, p1

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    neg-float p2, p2

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public final scale-0AR0LA0(FFJ)V
    .locals 4

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p0

    const/16 v0, 0x20

    shr-long v0, p3, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const-wide v2, 0xffffffffL

    and-long/2addr p3, v2

    long-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    invoke-interface {p0, v1, p4}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->scale(FF)V

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    neg-float p1, p1

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    neg-float p2, p2

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public final translate(FF)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    return-void
.end method
